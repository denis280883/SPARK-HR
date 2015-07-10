
Partial Class DataEdit
    Inherits System.Web.UI.UserControl

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        'MsgBox(erptid.Text)
        ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "", "HideEdit();", True)
        '
    End Sub
End Class
