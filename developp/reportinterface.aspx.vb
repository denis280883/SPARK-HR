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
    Const CTEUPDLINEFIELD = "Mise à jour des données"
    Const CTEASKUPDATE = "Voulez-vous enregistrer les données avec le code: "
    Const CTENUMID = "rptid"

    Public TestReport As String
    Dim msql As String = ""
    Dim ds As New DataSet
    Dim cmd As New SqlCommand
    Dim cnt As New SqlConnection("data source=.\sqling051;initial catalog=reportsinterface;persist security info=True;user id=spark;workstation id=wnb-ing036;packet size=4096;password=SPARK2008")
    Dim da As New SqlDataAdapter

    Dim lbDatasetDistinctFieldSelectused As String
    Dim lbshowLabelCompany As String
    Dim lbshowsortGroupGrid As String
    Dim lbshowpagebreak As String
    Dim lbiscrystalreport As String
    Dim lbisReportBook As String
    Dim lbusedforWeb As String
    Dim lbGroups As String

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
        'Response.Redirect("document.getElementById('demo').innerHTML = 'Hello ma poule';")
        'Response.Write("<script language=javascript>document.getElementById('demo').innerHTML = 'Hello ma poule';</script>")

        Dim showLabelCompany As Label = CType(GridView2.Rows(e.NewEditIndex).FindControl("eshowLabelCompany"), Label)
        lbDatasetDistinctFieldSelectused = CType(GridView2.Rows(e.NewEditIndex).FindControl("elDatasetDistinctFieldSelectused"), Label).Text
        lbshowLabelCompany = CType(GridView2.Rows(e.NewEditIndex).FindControl("eshowLabelCompany"), Label).Text
        lbshowsortGroupGrid = CType(GridView2.Rows(e.NewEditIndex).FindControl("eshowsortGroupGrid"), Label).Text
        lbshowpagebreak = CType(GridView2.Rows(e.NewEditIndex).FindControl("eshowpagebreak"), Label).Text
        lbiscrystalreport = CType(GridView2.Rows(e.NewEditIndex).FindControl("eiscrystalreport"), Label).Text
        lbisReportBook = CType(GridView2.Rows(e.NewEditIndex).FindControl("eisReportBook"), Label).Text
        lbusedforWeb = CType(GridView2.Rows(e.NewEditIndex).FindControl("eusedforWeb"), Label).Text
        lbGroups = CType(GridView2.Rows(e.NewEditIndex).FindControl("eGroups"), Label).Text
        FillData()
    End Sub

    Protected Sub GridView2_RowDeleting(sender As Object, e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        Dim rpdid As Label
        rpdid = CType(GridView2.Rows(e.RowIndex).FindControl("labelnum"), Label)

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
        Dim lastSqlexecute As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eplastSqlexecute"), TextBox)
        Dim usedforWeb As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epusedforWeb"), ListBox)
        Dim rptCategory As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("eprptCategory"), TextBox)
        Dim isReportBook As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epIsReportBook"), ListBox)
        Dim ReportBookLoopField As TextBox = CType(GridView2.Rows(e.RowIndex).FindControl("epReportBookLoopField"), TextBox)
        Dim iscrystalreport As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("episcrystalreport"), ListBox)
        Dim showpagebreak As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epshowpagebreak"), ListBox)
        Dim showsortGroupGrid As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epshowsortGroupGrid"), ListBox)
        Dim showLabelCompany As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epshowLabelCompany"), ListBox)
        Dim DatasetDistinctFieldSelectused As ListBox = CType(GridView2.Rows(e.RowIndex).FindControl("epDatasetDistinctFieldSelectused"), ListBox)

        cmd.Parameters.Add("@rpdid", SqlDbType.Int, 4).Value = rpdid.Text '00
        cmd.Parameters.Add("@rpttype", SqlDbType.VarChar).Value = rpttype.Text '01
        cmd.Parameters.Add("@rptthemeid", SqlDbType.VarChar).Value = rptthemeid.Text '02
        cmd.Parameters.Add("@rptname", SqlDbType.VarChar).Value = rptname.Text '03
        cmd.Parameters.Add("@rptsql", SqlDbType.VarChar).Value = rptsql.Text '04
        cmd.Parameters.Add("@rptAcc", SqlDbType.VarChar).Value = rptAcc.Text '05
        cmd.Parameters.Add("@rptOra", SqlDbType.VarChar).Value = rptOra.Text '06
        cmd.Parameters.Add("@conditions", SqlDbType.VarChar).Value = conditions.Text '07
        cmd.Parameters.Add("@foreignTablewhere", SqlDbType.VarChar).Value = foreignTablewhere.Text '08
        cmd.Parameters.Add("@Desactive", SqlDbType.Bit).Value = Desactive.Enabled '09 BOOLEAN
        cmd.Parameters.Add("@trier", SqlDbType.VarChar).Value = trier.Text '10
        cmd.Parameters.Add("@donneafiltrer", SqlDbType.Bit).Value = donneafiltrer.Enabled '11 BOOLEAN
        cmd.Parameters.Add("@ForcegroupBySQL", SqlDbType.VarChar).Value = ForcegroupBySQL.Text '11
        InserDataBooleanWithValueNull("@Groups", Groups.Text) 'cmd.Parameters.Add("@Groups", SqlDbType.VarChar).Value = Groups.Text '12
        cmd.Parameters.Add("@loopOverTable", SqlDbType.VarChar).Value = loopOverTable.Text '13
        cmd.Parameters.Add("@loopOverField", SqlDbType.VarChar).Value = loopOverField.Text '14
        cmd.Parameters.Add("@loopoverfieldType", SqlDbType.VarChar).Value = loopoverfieldType.Text '15
        cmd.Parameters.Add("@lastSqlexecute", SqlDbType.VarChar).Value = lastSqlexecute.Text '16
        InserDataBooleanWithValueNull("@usedforWeb", usedforWeb.Text) 'cmd.Parameters.Add("@usedforWeb", SqlDbType.Bit).Value = usedforWeb.Text '17
        cmd.Parameters.Add("@rptCategory", SqlDbType.VarChar).Value = rptCategory.Text '17
        InserDataBooleanWithValueNull("@isReportBook", isReportBook.Text)'cmd.Parameters.Add("@isReportBook", SqlDbType.Bit).Value = isReportBook.Text '18
        cmd.Parameters.Add("@ReportBookLoopField", SqlDbType.VarChar).Value = ReportBookLoopField.Text '19
        InserDataBooleanWithValueNull("@iscrystalreport", iscrystalreport.Text) 'cmd.Parameters.Add("@iscrystalreport", SqlDbType.Bit).Value = False 'iscrystalreport.Text '20
        InserDataBooleanWithValueNull("@showpagebreak", showpagebreak.Text) 'cmd.Parameters.Add("@showpagebreak", SqlDbType.Bit).Value = False 'showpagebreak.Text '21
        InserDataBooleanWithValueNull("@showsortGroupGrid", showsortGroupGrid.Text) 'cmd.Parameters.Add("@showsortGroupGrid", SqlDbType.Bit).Value = False 'showsortGroupGrid.Text '22
        InserDataBooleanWithValueNull("@showLabelCompany", showLabelCompany.Text) 'cmd.Parameters.Add("@showLabelCompany", SqlDbType.Bit).Value = False 'showLabelCompany.Text '23
        InserDataBooleanWithValueNull("@DatasetDistinctFieldSelectused", DatasetDistinctFieldSelectused.Text) 'cmd.Parameters.Add("@DatasetDistinctFieldSelectused", SqlDbType.Bit).Value = False 'DatasetDistinctFieldSelectused.Text '24




        'cmd.Parameters.Add("@iscrystalreport", SqlDbType.Bit).Value = iscrystalreport.Text '20
        'cmd.Parameters.Add("@showpagebreak", SqlDbType.Bit).Value = showpagebreak.Text '21
        'cmd.Parameters.Add("@showsortGroupGrid", SqlDbType.Bit).Value = showsortGroupGrid.Text '22
        'cmd.Parameters.Add("@showLabelCompany", SqlDbType.Bit).Value = showLabelCompany.Text '23
        'cmd.Parameters.Add("@DatasetDistinctFieldSelectused", SqlDbType.Bit).Value = DatasetDistinctFieldSelectused.Text '24
        Try

            If MsgBox(CTEASKUPDATE + rpdid.Text + " ?", MsgBoxStyle.YesNo Or MsgBoxStyle.Question, CTEUPDLINEFIELD) = MsgBoxResult.Yes Then

                cnt.Open()
                cmd.ExecuteNonQuery()
                cnt.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        GridView2.EditIndex = -1
        FillData()
    End Sub

    Protected Sub epDatasetDistinctFieldSelectused_Load1(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbDatasetDistinctFieldSelectused = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbDatasetDistinctFieldSelectused
        End If
    End Sub

    Protected Sub epshowLabelCompany_Load(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbshowLabelCompany = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbshowLabelCompany
        End If
    End Sub

    Protected Sub epIsReportBook_Load(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbisReportBook = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbisReportBook
        End If
    End Sub

    Protected Sub episcrystalreport_Load(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbiscrystalreport = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbiscrystalreport
        End If
    End Sub

    Protected Sub epshowpagebreak_Load(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbshowpagebreak = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbshowpagebreak
        End If


    End Sub

    Protected Sub epshowsortGroupGrid_Load(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbshowsortGroupGrid = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbshowsortGroupGrid
        End If

    End Sub
    Protected Sub epGroups_Load(sender As Object, e As System.EventArgs)
        Dim lb As ListBox = DirectCast(sender, ListBox)
        If lbGroups = "" Then
            lb.SelectedValue = "Null"
        Else
            lb.SelectedValue = lbGroups
        End If

    End Sub


    Sub AddCParamSQLcmd(rpdid As String, rpttype As String, rptthemeid As String, rptname As String, rptsql As String, rptAcc As String, rptOra As String, conditions As String, foreignTablewhere As String, _
                       Desactive As Boolean, trier As String, donneafiltrer As Boolean, ForcegroupBySQL As String, Groups As String, _
                       loopOverTable As String, loopOverField As String, loopoverfieldType As String, lastSqlexecute As String, _
                       usedforWeb As String, rptCategory As String, isReportBook As String, ReportBookLoopField As String, _
                       iscrystalreport As String, showpagebreak As String, showsortGroupGrid As String, showLabelCompany As String, _
                       DatasetDistinctFieldSelectused As String)
        cmd.Parameters.Add("@rpdid", SqlDbType.Int, 4).Value = rpdid '00
        cmd.Parameters.Add("@rpttype", SqlDbType.VarChar).Value = rpttype '01
        cmd.Parameters.Add("@rptthemeid", SqlDbType.VarChar).Value = rptthemeid '02
        cmd.Parameters.Add("@rptname", SqlDbType.VarChar).Value = rptname '03
        cmd.Parameters.Add("@rptsql", SqlDbType.VarChar).Value = rptsql '04
        cmd.Parameters.Add("@rptAcc", SqlDbType.VarChar).Value = rptAcc '05
        cmd.Parameters.Add("@rptOra", SqlDbType.VarChar).Value = rptOra '06
        cmd.Parameters.Add("@conditions", SqlDbType.VarChar).Value = conditions '07
        cmd.Parameters.Add("@foreignTablewhere", SqlDbType.VarChar).Value = foreignTablewhere '08
        cmd.Parameters.Add("@Desactive", SqlDbType.Bit).Value = Desactive '09 BOOLEAN
        cmd.Parameters.Add("@trier", SqlDbType.VarChar).Value = trier '10
        cmd.Parameters.Add("@donneafiltrer", SqlDbType.Bit).Value = donneafiltrer '11 BOOLEAN
        cmd.Parameters.Add("@ForcegroupBySQL", SqlDbType.VarChar).Value = ForcegroupBySQL '11
        InserDataBooleanWithValueNull("@Groups", Groups) 'cmd.Parameters.Add("@Groups", SqlDbType.Bit).Value = Groups.Text '12


        cmd.Parameters.Add("@loopOverTable", SqlDbType.VarChar).Value = loopOverTable '13
        cmd.Parameters.Add("@loopOverField", SqlDbType.VarChar).Value = loopOverField '14
        cmd.Parameters.Add("@loopoverfieldType", SqlDbType.VarChar).Value = loopoverfieldType '15
        cmd.Parameters.Add("@lastSqlexecute", SqlDbType.VarChar).Value = lastSqlexecute '16
        InserDataBooleanWithValueNull("@usedforWeb", usedforWeb) 'cmd.Parameters.Add("@usedforWeb", SqlDbType.Bit).Value = usedforWeb.Text '17
        cmd.Parameters.Add("@rptCategory", SqlDbType.VarChar).Value = rptCategory '17
        InserDataBooleanWithValueNull("@isReportBook", isReportBook)
        cmd.Parameters.Add("@ReportBookLoopField", SqlDbType.VarChar).Value = ReportBookLoopField '19
        InserDataBooleanWithValueNull("@iscrystalreport", iscrystalreport) 'cmd.Parameters.Add("@iscrystalreport", SqlDbType.Bit).Value = False 'iscrystalreport.Text '20
        InserDataBooleanWithValueNull("@showpagebreak", showpagebreak) 'cmd.Parameters.Add("@showpagebreak", SqlDbType.Bit).Value = False 'showpagebreak.Text '21
        InserDataBooleanWithValueNull("@showsortGroupGrid", showsortGroupGrid) 'cmd.Parameters.Add("@showsortGroupGrid", SqlDbType.Bit).Value = False 'showsortGroupGrid.Text '22
        InserDataBooleanWithValueNull("@showLabelCompany", showLabelCompany) 'cmd.Parameters.Add("@showLabelCompany", SqlDbType.Bit).Value = False 'showLabelCompany.Text '23
        InserDataBooleanWithValueNull("@DatasetDistinctFieldSelectused", DatasetDistinctFieldSelectused) 'cmd.Parameters.Add("@DatasetDistinctFieldSelectused", SqlDbType.Bit).Value = False 'DatasetDistinctFieldSelectused.Text '24



    End Sub


    Protected Sub GridView2_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        If e.CommandName = "ajout" Then
            msql = "insert into dbo.rptlists(rptid, rpttype, rptthemeid, rptname, rptsql, rptAcc, rptOra, conditions, foreignTablewhere, desactive, trier, donneafiltrer, ForcegroupBySQL, Groups, loopOverTable, loopOverField, loopoverfieldType, lastSqlexecute, usedforWeb, rptCategory, isReportBook, ReportBookLoopField, iscrystalreport, showpagebreak, showsortGroupGrid, showLabelCompany, DatasetDistinctFieldSelectused) values(@rpdid, @rpttype, @rptthemeid, @rptname, @rptsql, @rptAcc, @rptOra, @conditions, @foreignTablewhere, @desactive, @trier, @donneafiltrer, @ForcegroupBySQL, @Groups, @loopOverTable, @loopOverField, @loopoverfieldType, @lastSqlexecute, @usedforWeb, @rptCategory, @isReportBook, @ReportBookLoopField, @iscrystalreport, @showpagebreak, @showsortGroupGrid, @showLabelCompany, @DatasetDistinctFieldSelectused)"
            cmd = New SqlCommand(msql, cnt)


            Dim rpdid As TextBox = CType(GridView2.FooterRow.FindControl("fnum"), TextBox)
            Dim rpttype As TextBox = CType(GridView2.FooterRow.FindControl("frpttype"), TextBox)
            Dim rptthemeid As TextBox = CType(GridView2.FooterRow.FindControl("frptthemeid"), TextBox)
            Dim rptname As TextBox = CType(GridView2.FooterRow.FindControl("frptname"), TextBox)
            Dim rptsql As TextBox = CType(GridView2.FooterRow.FindControl("frptsql"), TextBox)
            Dim rptAcc As TextBox = CType(GridView2.FooterRow.FindControl("frptAcc"), TextBox)
            Dim rptOra As TextBox = CType(GridView2.FooterRow.FindControl("frptOra"), TextBox)
            Dim conditions As TextBox = CType(GridView2.FooterRow.FindControl("fconditions"), TextBox)
            Dim foreignTablewhere As TextBox = CType(GridView2.FooterRow.FindControl("fforeignTablewhere"), TextBox)
            Dim Desactive As CheckBox = CType(GridView2.FooterRow.FindControl("fdesactive"), CheckBox)
            Dim trier As TextBox = CType(GridView2.FooterRow.FindControl("ftrier"), TextBox)
            Dim donneafiltrer As CheckBox = CType(GridView2.FooterRow.FindControl("fdonneafiltrer"), CheckBox)
            Dim ForcegroupBySQL As TextBox = CType(GridView2.FooterRow.FindControl("fForcegroupBySQL"), TextBox)
            Dim Groups As ListBox = CType(GridView2.FooterRow.FindControl("fGroups"), ListBox)
            Dim loopOverTable As TextBox = CType(GridView2.FooterRow.FindControl("floopOverTable"), TextBox)
            Dim loopOverField As TextBox = CType(GridView2.FooterRow.FindControl("floopOverField"), TextBox)
            Dim loopoverfieldType As TextBox = CType(GridView2.FooterRow.FindControl("floopoverfieldType"), TextBox)
            Dim lastSqlexecute As TextBox = CType(GridView2.FooterRow.FindControl("flastSqlexecute"), TextBox)
            Dim usedforWeb As ListBox = CType(GridView2.FooterRow.FindControl("fusedforWeb"), ListBox)
            Dim rptCategory As TextBox = CType(GridView2.FooterRow.FindControl("frptCategory"), TextBox)
            Dim isReportBook As ListBox = CType(GridView2.FooterRow.FindControl("fIsReportBook"), ListBox)
            Dim ReportBookLoopField As TextBox = CType(GridView2.FooterRow.FindControl("fReportBookLoopField"), TextBox)
            Dim iscrystalreport As ListBox = CType(GridView2.FooterRow.FindControl("fiscrystalreport"), ListBox)
            Dim showpagebreak As ListBox = CType(GridView2.FooterRow.FindControl("fshowpagebreak"), ListBox)
            Dim showsortGroupGrid As ListBox = CType(GridView2.FooterRow.FindControl("fshowsortGroupGrid"), ListBox)
            Dim showLabelCompany As ListBox = CType(GridView2.FooterRow.FindControl("fshowLabelCompany"), ListBox)
            Dim DatasetDistinctFieldSelectused As ListBox = CType(GridView2.FooterRow.FindControl("fDatasetDistinctFieldSelectused"), ListBox)

            AddCParamSQLcmd(rpdid.Text, rpttype.Text, rptthemeid.Text, rptname.Text, rptsql.Text, rptAcc.Text, rptOra.Text, conditions.Text, foreignTablewhere.Text, _
                       Desactive.Checked, trier.Text, donneafiltrer.Checked, ForcegroupBySQL.Text, Groups.Text, _
                       loopOverTable.Text, loopOverField.Text, loopoverfieldType.Text, lastSqlexecute.Text, _
                       usedforWeb.Text, rptCategory.Text, isReportBook.Text, ReportBookLoopField.Text, _
                       iscrystalreport.Text, showpagebreak.Text, showsortGroupGrid.Text, showLabelCompany.Text, _
                       DatasetDistinctFieldSelectused.Text)
            Try
                cnt.Open()
                cmd.ExecuteNonQuery()
                cnt.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            GridView2.EditIndex = -1
            FillData()
        End If
    End Sub
    Sub InserDataBooleanWithValueNull(Variabl As String, ValueVariabl As String)
        'cmd.Parameters.Add("@isReportBook", SqlDbType.Bit).Value = False 'DBNull.Value 'ConvertStringBoolean(isReportBook.Text) '19
        'cmd.Parameters("@isReportBook").IsNullable = True
        'cmd.Parameters("@isReportBook").Value = DBNull.Value
        cmd.Parameters.Add(Variabl, SqlDbType.Bit).Value = False
        cmd.Parameters(Variabl).IsNullable = True
        If ValueVariabl = "Null" Then
            cmd.Parameters(Variabl).Value = DBNull.Value
        Else
            cmd.Parameters(Variabl).Value = ValueVariabl
        End If

    End Sub
    Function ConvertStringBoolean(value As String) As Boolean
        If (value <> "Null") Then
            ConvertStringBoolean = Convert.ToBoolean(value)
        End If
    End Function
End Class
