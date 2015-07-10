Imports System.ComponentModel.DataAnnotations
Imports System.Web.DynamicData
Imports System.Data.Objects
Imports System.Data.Objects.DataClasses
Imports System.ComponentModel

Class ManyToManyField
    Inherits FieldTemplateUserControl

    Public Overrides ReadOnly Property DataControl As Control
        Get
            Return Repeater1
        End Get
    End Property
    
    Protected Overrides Sub OnDataBinding(ByVal e As EventArgs)
        MyBase.OnDataBinding(e)
    
        Dim entity As Object
        Dim rowDescriptor = TryCast(Row, ICustomTypeDescriptor)
        If rowDescriptor IsNot Nothing Then
            ' Obtient l'entité réelle du wrapper
            entity = rowDescriptor.GetPropertyOwner(Nothing)
        Else
            entity = Row
        End If
    
        ' Obtient la collection et vérifie qu'elle est chargée
        Dim entityCollection = TryCast(Column.EntityTypeProperty.GetValue(entity, Nothing), RelatedEnd)
        If entityCollection Is Nothing Then
            Throw New InvalidOperationException(String.Format("Le modèle ManyToMany ne prend pas en charge le type de collection de la colonne '{0}' dans la table '{1}'.", Column.Name, Table.Name))
        End If
        If Not entityCollection.IsLoaded Then
            entityCollection.Load()
        End If
    
        ' Lie l'élément Repeater à la liste des entités enfants
        Repeater1.DataSource = entityCollection
        Repeater1.DataBind()
    End Sub
    
End Class
