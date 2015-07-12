
Partial Class UserControls_rptlistsShow
    Inherits System.Web.UI.UserControl


    Dim rptlists As Rptlists = New Rptlists()

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ShowData()
        End If
    End Sub


    Sub ShowEdit()
        rptlistsEdit1.Visible = True

    End Sub

    Protected Sub GridView2_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        If e.CommandName = "editUC" Then
            ShowEdit()
            'ButtonClick = True
            'DataEdit1.rptid = "test"
            'ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "", "ShowEdit();", True)
        End If
    End Sub


    Sub ShowData()
        rptlists.FillData()
        GridView2.DataSource = rptlists.ds
        GridView2.DataBind()
    End Sub

End Class
