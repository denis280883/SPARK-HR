Imports System.Web.DynamicData

Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        Dim visibleTables As IList = ASP.global_asax.DefaultModel.VisibleTables
        If visibleTables.Count = 0 Then
            Throw New InvalidOperationException("Il n'y a aucune table accessible. " &
                "Assurez-vous qu'au moins un modèle de données est inscrit dans Global.asax " &
                "et que la génération de modèles automatique est activée, ou implémentez des pages personnalisées.")
        End If
        Menu1.DataSource = visibleTables
        Menu1.DataBind()
    End Sub
    
End Class
