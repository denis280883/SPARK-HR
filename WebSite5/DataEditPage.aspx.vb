

Partial Class DataEdit
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        TxtBox_rptid.Text = Me.ClientQueryString

    End Sub
End Class
