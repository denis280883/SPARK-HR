Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient



Partial Class reportinterface




    Inherits System.Web.UI.Page

    Const CTETableName = "dbo.rptlists"
    Const CTEBtnDuplicate = "BtnDuplicate"
    Const CTEBtnEdit = "BtnEdit"
    Const CTEBtnDelete = "BtnDelete"
    Const CTEDELLINEFIELD = "Supprimer ligne de données"
    Const CTEASKDELLINE = "Voulez-vous supprimer les données avec le code: "
    Const CTENUMID = "rptid"

    Public TestReport As String
    Dim msql As String = ""
    Dim ds As New DataSet
    Dim cmd As New SqlCommand
    Dim cnt As New SqlConnection("data source=.\sqling051;initial catalog=reportsinterface;persist security info=True;user id=spark;workstation id=wnb-ing036;packet size=4096;password=SPARK2008")
    Dim da As New SqlDataAdapter

    Sub FillData()
        msql = "select * from dbo.rptlists;"
        cmd = cnt.CreateCommand()
        cmd.CommandText = msql
        da.SelectCommand = cmd
        da.Fill(ds)

        GridView2.DataSource = ds
        GridView2.DataBind()

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            FillData()
            'cnt.Open()
            'cmd.CommandText = msql
            'GridView1.DataSource = ds
            'GridView1.DataBind()
            'cnt.Close()
            ' MsgBox("Fin")
        End If
    End Sub

    Sub DeleteField(tablename As String, colDel As String, numId As String)
        'Dim msql As String
        'Dim cmd As New SqlCommand
        msql = "DELETE FROM " + tablename + " where " + colDel + "='" + numId + "';"

        cnt = New SqlConnection("data source=.\sqling051;initial catalog=reportsinterface;persist security info=True;user id=spark;workstation id=wnb-ing036;packet size=4096;password=SPARK2008")
        da = New SqlDataAdapter()
        cmd = cnt.CreateCommand()
        cmd.CommandText = msql
        da.SelectCommand = cmd
        ds = New DataSet()

        cnt.Open()
        cmd.CommandText = msql
        da.Fill(ds)
        cnt.Close()

        'DELETE FROM dbo.rptlists where rptid='1003';
    End Sub

    Sub RefreshData(tablename As String)
        'Dim msql As String
        msql = "select * from dbo.rptlists;"
        'Dim cmd As New SqlCommand
        'Dim ds As New DataSet
        'Dim da As New SqlDataAdapter
        da = New SqlDataAdapter()
        cmd.CommandText = msql
        da.SelectCommand = cmd
        ds = New DataSet()

        da.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Sub btnRptName_Click(sender As Object, e As System.EventArgs) Handles btnDeleteSelect.Click
        'MsgBox(GridView1.DataSource.ToString())

    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs)

        Select Case e.CommandName
            Case CTEBtnDuplicate
                MsgBox("Dupliquer")
            Case CTEBtnEdit
                'Response.Redirect("DataEdit.aspx", False)
                'Dim DataSQL As DataEdit
                'DataSQL = CType(Page.LoadControl("~/DataEdit.ascx"), DataEdit)

                Dim test As String = GridView1.Rows(e.CommandArgument).Cells(3).Text
                'Response.Write("<script>window.open('Author.aspx?Author=" + Me.txtAuthor.Text + "')</script>")
                'Response.Write("<script>window.open('DataEditPage.aspx?" + CTENUMID + "=" + GridView1.Rows(e.CommandArgument).Cells(3).Text + "')</script>")

                GridView1.AutoGenerateEditButton = True


                'Dim MyScript As String = "<script>function myFunction22() { var person = prompt('Please enter your name', 'Harry Potter');if (person != null) { document.getElementById('demo').innerHTML = 'Hello ' + person + '! How are you today?';}}</script>"
                '"<script>alert('Konaklama Başarıyla Eklendi');</script>"
                '    Response.Write(MyScript)

                'Response.Write("<button onclick='myFunction()'>Try it</button>")
                'Response.Write("<button onclick='#myPopupDialog'>Try it</button>")
                '    <a href="#myPopupDialog" data-rel="popup" data-position-to="window" data-transition="fade" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Open Dialog Popup</a>
            Case CTEBtnDelete
                'MsgBox("Delete")
                'GridView1.Rows(3).Cells(3).Text 1002
                If MsgBox(CTEASKDELLINE + GridView1.Rows(e.CommandArgument).Cells(3).Text + " ?", MsgBoxStyle.YesNo Or MsgBoxStyle.Question, CTEDELLINEFIELD) = MsgBoxResult.Yes Then
                    DeleteField(CTETableName, "rptid", GridView1.Rows(e.CommandArgument).Cells(3).Text)
                    'GridView1.Rows(4).Cells(3).Delete
                    'GridView1.DeleteRow(e.CommandArgument)
                    'MsgBox("Suppresion avec succès")
                    'RefreshData(CTETableName)

                    GridView1.DataSource = ds




                    'Response.Redirect("reportinterface.aspx")
                    'GridView1.DataBind()
                End If
            Case Else
                MsgBox("NON DEFINI")
        End Select

    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        FillData()
    End Sub

    Protected Sub GridView2_RowEditing(sender As Object, e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView2.RowEditing
        GridView2.EditIndex = e.NewEditIndex
        FillData()
    End Sub

    Protected Sub GridView2_RowDeleting(sender As Object, e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        Dim rpdid As Label
        rpdid = CType(GridView2.Rows(e.RowIndex).FindControl("enum"), Label)

        msql = "delete from " + CTETableName + " where " + CTENUMID + "=" + GridView2.Rows(e.RowIndex).Cells(3).Text
        msql = "delete from dbo.rptlists where rptid=@rpdid"
        cmd = New SqlCommand("delete from dbo.rptlists where rptid=" + rpdid.Text, cnt)
        'msql = "DELETE FROM " + tablename + " where " + colDel + "='" + numId + "';"

        Try

            If MsgBox(CTEASKDELLINE + rpdid.Text + " ?", MsgBoxStyle.YesNo Or MsgBoxStyle.Question, CTEDELLINEFIELD) = MsgBoxResult.Yes Then

                cnt.Open()
                cmd.ExecuteNonQuery()
                cnt.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        FillData()
    End Sub

    Protected Sub GridView2_RowCancelingEdit(sender As Object, e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView2.RowCancelingEdit
        GridView2.EditIndex = -1
        FillData()
    End Sub

    Protected Sub GridView2_RowUpdating(sender As Object, e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView2.RowUpdating
        msql = "update dbo.rptlists set  rptid=@rpdid, rpttype=@rpttype, rptthemeid=@rptthemeid, rptname=@rptname, rptsql=@rptsql, rptAcc=@rptAcc, rptOra=@rptOra, conditions=@conditions, foreignTablewhere=@foreignTablewhere, desactive=@desactive, trier=@trier, donneafiltrer=@donneafiltrer, ForcegroupBySQL=@ForcegroupBySQL, Groups=@Groups, loopOverTable=@loopOverTable, loopOverField=@loopOverField, loopoverfieldType=@loopoverfieldType, lastSqlexecute=@lastSqlexecute, usedforWeb=@usedforWeb, rptCategory=@rptCategory, isReportBook=@isReportBook, ReportBookLoopField=@ReportBookLoopField, iscrystalreport=@iscrystalreport, showpagebreak=@showpagebreak, showsortGroupGrid=@showsortGroupGrid, showLabelCompany=@showLabelCompany, DatasetDistinctFieldSelectused=@DatasetDistinctFieldSelectused where rptid=@rpdid"
        cmd = New SqlCommand(msql, cnt)

        Dim rpdid As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("enum"), TextBox)
        Dim rpttype As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("erpttype"), TextBox)
        Dim rptthemeid As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptthemeid"), TextBox)
        Dim rptname As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptname"), TextBox)
        Dim rptsql As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptsql"), TextBox)
        Dim rptAcc As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptAcc"), TextBox)
        Dim rptOra As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptOra"), TextBox)
        Dim conditions As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("epconditions"), TextBox)
        Dim foreignTablewhere As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("epforeignTablewhere"), TextBox)
        Dim Desactive As CheckBox = CType(GridView2.Rows(e.RowIndex).FindControl("epdesactive"), CheckBox)
        Dim trier As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eptrier"), TextBox)
        Dim donneafiltrer As CheckBox = CType(GridView2.Rows(e.RowIndex).FindControl("epdonneafiltrer"), CheckBox)
        Dim ForcegroupBySQL As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("epForcegroupBySQL"), TextBox)
        Dim Groups As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epGroups"), ListBox)
        Dim loopOverTable As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eploopOverTable"), TextBox)
        Dim loopOverField As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eploopOverField"), TextBox)
        Dim loopoverfieldType As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eploopoverfieldType"), TextBox)
        Dim lastSqlexecut As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eplastSqlexecute"), TextBox)
        Dim usedforWeb As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epusedforWeb"), ListBox)
        Dim rptCategory As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptCategory"), TextBox)
        Dim isReportBook As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epIsReportBook"), ListBox)
        Dim ReportBookLoopField As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("epReportBookLoopField"), TextBox)
        Dim iscrystalreport As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("episcrystalreport"), ListBox)
        Dim showpagebreak As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epshowpagebreak"), ListBox)
        Dim showsortGroupGrid As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epshowsortGroupGrid"), ListBox)
        Dim showLabelCompany As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epshowLabelCompany"), ListBox)
        Dim DatasetDistinctFieldSelectused As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epDatasetDistinctFieldSelectused"), ListBox)

        Try

            If MsgBox(CTEASKDELLINE + rpdid.Text + " ?", MsgBoxStyle.YesNo Or MsgBoxStyle.Question, CTEDELLINEFIELD) = MsgBoxResult.Yes Then

                'cnt.Open()
                'cmd.ExecuteNonQuery()
                'cnt.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        FillData()
    End Sub
End Class
