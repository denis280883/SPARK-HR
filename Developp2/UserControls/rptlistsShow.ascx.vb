
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

    'Friend WithEvents MySender As UserControls_rptlistsEdit




    Sub FillEdit(pos As Integer)

        'rptlistsEdit1(GridView2.Rows(pos))
        rptlistsEdit1.FillData(GridView2.Rows(pos))
    End Sub


    Sub ShowEdit(pos As Integer)

        ScriptManager.RegisterStartupScript(Me.Page, Me.GetType(), "", "ShowEdit();", True)
        FillEdit(pos)
    End Sub

    Protected Sub GridView2_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand

        Select Case e.CommandName
            Case "editUC"
                ShowEdit(e.CommandArgument)
                rptlists.CommandClick = "edit"
                rptlistsEdit1.ModeEdit = "edit"
            Case "duplicate"

                rptlists.InsertCopySelect(e.CommandArgument, GridView2.Rows(e.CommandArgument))

                'rptlists.InsertCopySelect(Convert.ToInt32(e.CommandArgument) 'rptid As String, rpptype As String, rptthemeid As String, rptname As String, rptsql As String, rptAcc As String, rptOra As String, conditions As String, foreignTablewhere As String, desactive As String, trier As String, donneafiltrer As String, ForcegroupBySQL As String, Groups As String, loopOverTable As String, loopOverField As String, loopoverfieldType As String, lastSqlexecute As String, usedforWeb As String, rptCategory As String, isReportBook As String, ReportBookLoopField As String, iscrystalreport As String, showpagebreak As String, showsortGroupGrid As String, showLabelCompany As String, DatasetDistinctFieldSelectused As String)
            Case Else

        End Select

    End Sub


    Sub ShowData()
        rptlists.FillData()
        GridView2.DataSource = rptlists.ds
        GridView2.DataBind()
    End Sub

    Private Sub tb_OnClick()
        If rptlistsEdit1.ModeEdit = "edit" Then


            rptlists.UpdateData(rptlistsEdit1.rptid, rptlistsEdit1.rpttype, rptlistsEdit1.rptthemeid, rptlistsEdit1.rptname, rptlistsEdit1.rptsql, rptlistsEdit1.rptAcc, rptlistsEdit1.rptOra, rptlistsEdit1.conditions, rptlistsEdit1.foreignTablewhere, rptlistsEdit1.desactive, rptlistsEdit1.trier, rptlistsEdit1.donneafiltrer, rptlistsEdit1.ForcegroupBySQL, rptlistsEdit1.Groups, rptlistsEdit1.loopOverTable, rptlistsEdit1.loopOverField, rptlistsEdit1.loopoverfieldType, rptlistsEdit1.lastSqlexecute, rptlistsEdit1.usedforWeb, rptlistsEdit1.rptCategory, rptlistsEdit1.isReportBook, rptlistsEdit1.ReportBookLoopField, rptlistsEdit1.iscrystalreport, rptlistsEdit1.showpagebreak, rptlistsEdit1.showsortGroupGrid, rptlistsEdit1.showLabelCompany, rptlistsEdit1.DatasetDistinctFieldSelectused)
            GridView2.EditIndex = -1
            'rptlists.FillData()

            ShowData()
        End If
        'Throw New NotImplementedException
    End Sub





End Class
