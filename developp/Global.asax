<%@ Application Language="VB" %>
<%@ Import Namespace="System.ComponentModel.DataAnnotations" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.DynamicData" %>

<script RunAt="server">
Private Shared s_defaultModel As New MetaModel
Public Shared ReadOnly Property DefaultModel() As MetaModel
    Get
        Return s_defaultModel
    End Get
End Property

Public Shared Sub RegisterRoutes(ByVal routes As RouteCollection)
    '                     IMPORTANT : INSCRIPTION DU MODÈLE DE DONNÉES 
    ' Supprimez les marques de commentaire de la ligne pour inscrire un modèle ADO.NET Entity Framework pour Dynamic Data ASP.NET.
    ' Définissez ScaffoldAllTables = true uniquement si vous êtes certain  que vous voulez que toutes les tables du
    ' modèle de données prennent en charge une vue de génération de modèles automatique (c’est-à-dire des modèles). Pour contrôler la génération de modèles automatique des
    ' des tables individuelles, créez une classe partielle pour la table et appliquez
    ' l’attribut <ScaffoldTable(true)> à la classe partielle.
    ' Remarque : vérifiez que vous remplacez "YourDataContextType" par le nom de la classe du contexte de données
    ' de votre application.
    ' DefaultModel.RegisterContext(GetType(YourDataContextType), New ContextConfiguration() With {.ScaffoldAllTables = False})

    ' L’instruction suivante prend en charge le mode page séparée, où les tâches Liste, Détail, Insérer et 
    ' Mettre à jour sont exécutées à l’aide de pages distinctes. Pour activer ce mode, supprimez les marques de commentaire 
    ' de la définition route suivante et commentez les définitions de route dans la section de mode combined-page qui suit.
    routes.Add(New DynamicDataRoute("{table}/{action}.aspx") With {
        .Constraints = New RouteValueDictionary(New With {.Action = "List|Details|Edit|Insert"}),
        .Model = DefaultModel})

    ' Les instructions suivantes prennent en charge le mode combined-page, où les tâches Liste, Détail, Insérer et
    ' Mettre à jour sont exécutées à l’aide de la même page. Pour activer ce mode, supprimez les marques de commentaire
    ' de routes et commentez la définition de l’itinéraire dans la section du mode page séparée ci-dessus.
    'routes.Add(New DynamicDataRoute("{table}/ListDetails.aspx") With {
    '    .Action = PageAction.List,
    '    .ViewName = "ListDetails",
    '    .Model = DefaultModel})

    'routes.Add(New DynamicDataRoute("{table}/ListDetails.aspx") With {
    '    .Action = PageAction.Details,
    '    .ViewName = "ListDetails",
    '    .Model = DefaultModel})
End Sub

Private Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
    RegisterRoutes(RouteTable.Routes)
End Sub

</script>
