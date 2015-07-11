
Partial Class DataEdit
    Inherits System.Web.UI.UserControl

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        'MsgBox(erptid.Text)
        ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "", "HideEdit();", True)
        '
    End Sub


    Private _name As String

    Public Property rptid() As String
        Get
            Return _name
        End Get
        Set(ByVal value As String)
            Me.erptid.Text = value
        End Set
    End Property


End Class
