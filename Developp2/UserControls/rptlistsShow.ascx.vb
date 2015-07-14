
Partial Class UserControls_rptlistsShow
    Inherits System.Web.UI.UserControl


    Dim rptlists As Rptlists = New Rptlists()


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'AddHandler rptlistsEdit1.tbClick, AddressOf tb_OnClick
        AddHandler rptlistsEdit1.Start, AddressOf Me.tb_OnClick
        If Not IsPostBack Then
            ShowData()
        End If
    End Sub

    Friend WithEvents MySender As UserControls_rptlistsEdit




    Sub FillEdit(pos As Integer)

        'rptlistsEdit1(GridView2.Rows(pos))
        rptlistsEdit1.FillData(GridView2.Rows(pos))
    End Sub


    Sub ShowEdit(pos As Integer)

        ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "", "ShowEdit();", True)
        FillEdit(pos)
    End Sub

    Protected Sub GridView2_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        If e.CommandName = "editUC" Then
            ShowEdit(e.CommandArgument)

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

    Private Sub tb_OnClick()
        MsgBox("TT")
        'Throw New NotImplementedException
    End Sub





End Class
