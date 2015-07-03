Imports System.ComponentModel
Imports System.ComponentModel.DataAnnotations
Imports System.Web.DynamicData
Imports System.Data.Objects
Imports System.Data.Objects.DataClasses

Class ManyToMany_EditField
    Inherits FieldTemplateUserControl

    Public Overrides ReadOnly Property DataControl As Control
        Get
            Return CheckBoxList1
        End Get
    End Property
    
    Public Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ' Inscrit l'événement de mise à jour de DataSource
        Dim ds As EntityDataSource = CType(Me.FindDataSourceControl, EntityDataSource)
        ' Ce modèle de champ est utilisé pour l'édition et l'insertion
        AddHandler ds.Updating, AddressOf Me.DataSource_UpdatingOrInserting
        AddHandler ds.Inserting, AddressOf Me.DataSource_UpdatingOrInserting
    End Sub
    
    Private Sub DataSource_UpdatingOrInserting(ByVal sender As Object, ByVal e As EntityDataSourceChangingEventArgs)
        Dim childTable As MetaTable = ChildrenColumn.ChildTable
        ' Les commentaires supposent employé/territoire pour l'illustration, mais le code est générique
        ' Obtient la collection de territoires pour cet employé
        Dim entityCollection = CType(Column.EntityTypeProperty.GetValue(e.Entity, Nothing), RelatedEnd)
        ' En mode Edition, vérifie qu'il est chargé (n'a pas de sens en mode Insertion)
        If Mode = DataBoundControlMode.Edit AndAlso Not entityCollection.IsLoaded Then
            entityCollection.Load()
        End If
        ' Obtient un IList (c-à-d. la liste des territoires pour l'employé actuel)
        ' RÉVISION : il est conseillé d'utiliser EntityCollection directement, mais EF n'a pas de
        ' type non générique pour lui. Cela sera ajouté  dans vnext
        Dim entityList As IList = CType(entityCollection, IListSource).GetList
        ' Parcourt tous les territoires (pas uniquement pour cet employé)
        For Each childEntity As Object In childTable.GetQuery(e.Context)
            ' Vérifie si l'employé a actuellement ce territoire
            Dim isCurrentlyInList As Boolean = entityList.Contains(childEntity)
            ' Trouve la case à cocher pour ce territoire, ce qui donne le nouvel état
            Dim pkString As String = childTable.GetPrimaryKeyString(childEntity)
            Dim listItem As ListItem = CheckBoxList1.Items.FindByValue(pkString)
            If (listItem Is Nothing) Then
                Continue For
            End If
            ' Si les états diffèrent, apporte les modifications appropriées, ajout ou suppression
            If listItem.Selected Then
                If Not isCurrentlyInList Then
                    entityList.Add(childEntity)
                End If
            ElseIf isCurrentlyInList Then
                entityList.Remove(childEntity)
            End If
        Next
    End Sub
    
    Protected Sub CheckBoxList1_DataBound(ByVal sender As Object, ByVal e As EventArgs)
        Dim childTable As MetaTable = ChildrenColumn.ChildTable
        ' Les commentaires supposent employé/territoire pour l'illustration, mais le code est générique
        Dim entityList As IList = Nothing
        Dim objectContext As ObjectContext = Nothing
        If Mode = DataBoundControlMode.Edit Then
            Dim entity As Object
            Dim rowDescriptor = TryCast(Row, ICustomTypeDescriptor)
            If rowDescriptor IsNot Nothing Then
                ' Obtient l'entité réelle du wrapper
                entity = rowDescriptor.GetPropertyOwner(Nothing)
            Else
                entity = Row
            End If
    
            ' Obtient la collection de territoires pour cet employé et vérifie qu'il est chargé
            Dim entityCollection = TryCast(Column.EntityTypeProperty.GetValue(entity, Nothing), RelatedEnd)
            If entityCollection Is Nothing Then
                Throw New InvalidOperationException(String.Format("Le modèle ManyToMany ne prend pas en charge le type de collection de la colonne '{0}' dans la table '{1}'.", Column.Name, Table.Name))
            End If
            If Not entityCollection.IsLoaded Then
                entityCollection.Load()
            End If
            ' Obtient un IList (c-à-d. la liste des territoires pour l'employé actuel)
            ' RÉVISION : il est conseillé d'utiliser EntityCollection directement, mais EF n'a pas de
            ' type non générique pour lui. Cela sera ajouté  dans vnext
            entityList = CType(entityCollection, IListSource).GetList
            ' Obtient le ObjectContext actuel
            ' RÉVISION : ce n'est pas vraiment la manière de faire. Rechercher une meilleure solution
            Dim objectQuery = CType(entityCollection.GetType.GetMethod("CreateSourceQuery").Invoke(entityCollection, Nothing), ObjectQuery)
            objectContext = objectQuery.Context
        End If
        ' Parcourt tous les territoires (pas uniquement pour cet employé)
        For Each childEntity As Object In childTable.GetQuery(objectContext)
            Dim actualTable As MetaTable = MetaTable.GetTable(childEntity.GetType())
            ' Crée une case à cocher
            Dim listItem As New ListItem(actualTable.GetDisplayString(childEntity), actualTable.GetPrimaryKeyString(childEntity))
            ' Sera sélectionné si l'employé actuel a ce territoire
            If Mode = DataBoundControlMode.Edit Then
                listItem.Selected = entityList.Contains(childEntity)
            End If
            CheckBoxList1.Items.Add(listItem)
        Next
    End Sub
    
End Class
