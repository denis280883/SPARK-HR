<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code qui s’exécute au démarrage de l’application
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code qui s’exécute à l’arrêt de l’application
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code qui s’exécute lorsqu’une erreur non gérée se produit
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code qui s’exécute lorsqu’une nouvelle session démarre
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code qui s’exécute lorsqu’une session se termine. 
        ' Remarque : l’événement Session_End est déclenché uniquement lorsque le mode sessionstate
        ' a la valeur InProc dans le fichier Web.config. Si le mode de session a la valeur StateServer 
        ' ou SQLServer, l’événement n’est pas déclenché.
    End Sub
       
</script>