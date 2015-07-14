Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class Rptlists

    Private _msql As String
    Dim _ds As New DataSet
    Dim cmd As New SqlCommand
    Dim cnt As New SqlConnection("data source=.\sqling051;initial catalog=reportsinterface;persist security info=True;user id=spark;workstation id=wnb-ing036;packet size=4096;password=SPARK2008")
    Dim da As New SqlDataAdapter


    Private _CommandClick As String

    Private _rptid As Integer
    Private _rpttype As String
    Private _rptthemeid As String
    Private _rptname As String
    Private _rptsql As String
    Private _rptAcc As String
    Private _rptOra As String
    Private _conditions As String
    Private _foreignTablewhere As String
    Private _desactive As Boolean
    Private _trier As String
    Private _donneafiltrer As String
    Private _ForcegroupBySQL As String
    Private _Groups As Boolean
    Private _loopOverTable As String
    Private _loopOverField As String
    Private _loopoverfieldType As String
    Private _lastSqlexecute As String
    Private _usedforWeb As Boolean
    Private _rptCategory As String
    Private _isReportBook As Boolean
    Private _ReportBookLoopField As String
    Private _iscrystalreport As Boolean
    Private _showpagebreak As Boolean
    Private _showsortGroupGrid As Boolean
    Private _showLabelCompany As Boolean
    Private _DatasetDistinctFieldSelectused As Boolean




    Sub New(ByVal rptid As Integer, ByVal rpttype As String, ByVal rptthemeid As String, ByVal rptname As String)
        Me.rptid = rptid
        Me._rpttype = rpttype
    End Sub

    Sub New()

    End Sub


    Sub InserDataBooleanWithValueNull(Variabl As String, ValueVariabl As String)
        cmd.Parameters.Add(Variabl, SqlDbType.Bit).Value = False
        cmd.Parameters(Variabl).IsNullable = True
        If ValueVariabl = "Null" Then
            cmd.Parameters(Variabl).Value = DBNull.Value
        Else
            cmd.Parameters(Variabl).Value = ValueVariabl
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


    Public Sub UpdateData(rptid As String, rpptype As String, rptthemeid As String, rptname As String, rptsql As String, rptAcc As String, rptOra As String, conditions As String, foreignTablewhere As String, desactive As String, trier As String, donneafiltrer As String, ForcegroupBySQL As String, Groups As String, loopOverTable As String, loopOverField As String, loopoverfieldType As String, lastSqlexecute As String, usedforWeb As String, rptCategory As String, isReportBook As String, ReportBookLoopField As String, iscrystalreport As String, showpagebreak As String, showsortGroupGrid As String, showLabelCompany As String, DatasetDistinctFieldSelectused As String)
        msql = "update dbo.rptlists set  rptid=@rpdid, rpttype=@rpttype, rptthemeid=@rptthemeid, rptname=@rptname, rptsql=@rptsql, rptAcc=@rptAcc, rptOra=@rptOra, conditions=@conditions, foreignTablewhere=@foreignTablewhere, desactive=@desactive, trier=@trier, donneafiltrer=@donneafiltrer, ForcegroupBySQL=@ForcegroupBySQL, Groups=@Groups, loopOverTable=@loopOverTable, loopOverField=@loopOverField, loopoverfieldType=@loopoverfieldType, lastSqlexecute=@lastSqlexecute, usedforWeb=@usedforWeb, rptCategory=@rptCategory, isReportBook=@isReportBook, ReportBookLoopField=@ReportBookLoopField, iscrystalreport=@iscrystalreport, showpagebreak=@showpagebreak, showsortGroupGrid=@showsortGroupGrid, showLabelCompany=@showLabelCompany, DatasetDistinctFieldSelectused=@DatasetDistinctFieldSelectused where rptid=@rpdid"
        cmd = New SqlCommand(msql, cnt)

        AddCParamSQLcmd(rptid, rpptype, rptthemeid, rptname, rptsql, rptAcc, rptOra, conditions, foreignTablewhere, _
           desactive, trier, donneafiltrer, ForcegroupBySQL, Groups, _
           loopOverTable, loopOverField, loopoverfieldType, lastSqlexecute, _
           usedforWeb, rptCategory, isReportBook, ReportBookLoopField, _
           iscrystalreport, showpagebreak, showsortGroupGrid, showLabelCompany, _
           DatasetDistinctFieldSelectused)
        Try
            cnt.Open()
            cmd.ExecuteNonQuery()
            cnt.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Function GetMaxRptid() As Integer

        msql = "SELECT MAX (rptid) from rptlists;"
        cmd = cnt.CreateCommand()
        cmd.CommandText = msql
        Try
            cnt.Open()
            GetMaxRptid = (Convert.ToInt16(cmd.ExecuteScalar)) + 1
            cnt.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
            GetMaxRptid = 0
        End Try
    End Function

    Function ConvertNullBoolean(value As String) As String
        If (value = "") Then
            ConvertNullBoolean = "Null"
        Else
            ConvertNullBoolean = value
        End If
    End Function

    Public Sub FillData(ByVal gridViewRow As GridViewRow)

        rptid = Convert.ToInt32(CType(gridViewRow.FindControl("labelnum"), Label).Text)
        rpttype = CType(gridViewRow.FindControl("labelrpttype"), Label).Text
        rptthemeid = CType(gridViewRow.FindControl("Labelrptthemeid"), Label).Text
        rptname = CType(gridViewRow.FindControl("Labelrptname"), Label).Text
        rptsql = CType(gridViewRow.FindControl("Labelrptsql"), Label).Text
        rptAcc = CType(gridViewRow.FindControl("Labelrptacc"), Label).Text
        rptOra = CType(gridViewRow.FindControl("LabelrptOra"), Label).Text
        conditions = CType(gridViewRow.FindControl("Labelconditions"), Label).Text
        foreignTablewhere = CType(gridViewRow.FindControl("LabelforeignTablewhere"), Label).Text
        desactive = CType(gridViewRow.FindControl("Labeldesactive"), Label).Text
        trier = CType(gridViewRow.FindControl("Labeltrier"), Label).Text
        donneafiltrer = CType(gridViewRow.FindControl("Labeldonnerafiltrer"), Label).Text
        ForcegroupBySQL = CType(gridViewRow.FindControl("LabelForcegroupBySQL"), Label).Text
        Groups = ConvertNullBoolean(CType(gridViewRow.FindControl("eGroups"), Label).Text)
        'Groups = CType(gridViewRow.FindControl("eGroups"), Label).Text
        loopOverTable = CType(gridViewRow.FindControl("LabelloopOverTable"), Label).Text
        loopOverField = CType(gridViewRow.FindControl("LabelloopOverField"), Label).Text
        loopoverfieldType = CType(gridViewRow.FindControl("LabelloopoverfieldType"), Label).Text
        lastSqlexecute = CType(gridViewRow.FindControl("LabellastSqlexecute"), Label).Text
        usedforWeb = ConvertNullBoolean(CType(gridViewRow.FindControl("eusedforWeb"), Label).Text)
        rptCategory = CType(gridViewRow.FindControl("LabelrptCategory"), Label).Text
        isReportBook = ConvertNullBoolean(CType(gridViewRow.FindControl("eisReportBook"), Label).Text)
        ReportBookLoopField = CType(gridViewRow.FindControl("LabelReportBookLoopField"), Label).Text
        iscrystalreport = ConvertNullBoolean(CType(gridViewRow.FindControl("eiscrystalreport"), Label).Text)
        showpagebreak = ConvertNullBoolean(CType(gridViewRow.FindControl("eshowpagebreak"), Label).Text)
        showsortGroupGrid = ConvertNullBoolean(CType(gridViewRow.FindControl("eshowsortGroupGrid"), Label).Text)
        showLabelCompany = ConvertNullBoolean(CType(gridViewRow.FindControl("eshowLabelCompany"), Label).Text)
        DatasetDistinctFieldSelectused = ConvertNullBoolean(CType(gridViewRow.FindControl("elDatasetDistinctFieldSelectused"), Label).Text)



    End Sub


    Sub InsertCopySelect(i As Integer, gridViewRow As GridViewRow) ', rptid As String, rpptype As String, rptthemeid As String, rptname As String, rptsql As String, rptAcc As String, rptOra As String, conditions As String, foreignTablewhere As String, desactive As String, trier As String, donneafiltrer As String, ForcegroupBySQL As String, Groups As String, loopOverTable As String, loopOverField As String, loopoverfieldType As String, lastSqlexecute As String, usedforWeb As String, rptCategory As String, isReportBook As String, ReportBookLoopField As String, iscrystalreport As String, showpagebreak As String, showsortGroupGrid As String, showLabelCompany As String, DatasetDistinctFieldSelectused As String)
        Dim maxrpid As Integer = GetMaxRptid()
        msql = "insert into dbo.rptlists(rptid, rpttype, rptthemeid, rptname, rptsql, rptAcc, rptOra, conditions, foreignTablewhere, desactive, trier, donneafiltrer, ForcegroupBySQL, Groups, loopOverTable, loopOverField, loopoverfieldType, lastSqlexecute, usedforWeb, rptCategory, isReportBook, ReportBookLoopField, iscrystalreport, showpagebreak, showsortGroupGrid, showLabelCompany, DatasetDistinctFieldSelectused) values(@rpdid, @rpttype, @rptthemeid, @rptname, @rptsql, @rptAcc, @rptOra, @conditions, @foreignTablewhere, @desactive, @trier, @donneafiltrer, @ForcegroupBySQL, @Groups, @loopOverTable, @loopOverField, @loopoverfieldType, @lastSqlexecute, @usedforWeb, @rptCategory, @isReportBook, @ReportBookLoopField, @iscrystalreport, @showpagebreak, @showsortGroupGrid, @showLabelCompany, @DatasetDistinctFieldSelectused)"
        cmd = New SqlCommand(msql, cnt)


        FillData(gridViewRow)

        AddCParamSQLcmd(maxrpid.ToString(), rpttype, rptthemeid, rptname, rptsql, rptAcc, rptOra, conditions, foreignTablewhere, _
        desactive, trier, donneafiltrer, ForcegroupBySQL, Groups, _
        loopOverTable, loopOverField, loopoverfieldType, lastSqlexecute, _
        usedforWeb, rptCategory, isReportBook, ReportBookLoopField, _
        iscrystalreport, showpagebreak, showsortGroupGrid, showLabelCompany, _
        DatasetDistinctFieldSelectused)

        Try
            cnt.Open()
            cmd.ExecuteNonQuery()
            cnt.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub


    Property CommandClick() As String
        Get
            Return _CommandClick
        End Get
        Set(value As String)
            _CommandClick = value
        End Set
    End Property


    Public Sub FillData()
        msql = "select * from dbo.rptlists;"
        cmd = cnt.CreateCommand()
        cmd.CommandText = msql
        da.SelectCommand = cmd
        da.Fill(ds)
    End Sub

    Property ds() As DataSet
        Get
            Return _ds
        End Get
        Set(value As DataSet)
            _ds = value
        End Set
    End Property


    Property msql() As String
        Get
            Return _msql
        End Get
        Set(value As String)
            _msql = value
        End Set
    End Property

    Property rpttype() As String
        Get
            Return _rpttype
        End Get
        Set(value As String)
            _rpttype = value
        End Set
    End Property

    Property rptthemeid() As String
        Get
            Return _rptthemeid
        End Get
        Set(value As String)
            _rptthemeid = value
        End Set
    End Property

    Property rptname() As String
        Get
            Return _rptname
        End Get
        Set(value As String)
            _rptname = value
        End Set
    End Property


    Property rptsql() As String
        Get
            Return _rptsql
        End Get
        Set(value As String)
            _rptsql = value
        End Set
    End Property

    Property rptAcc() As String
        Get
            Return _rptAcc
        End Get
        Set(value As String)
            _rptAcc = value
        End Set
    End Property

    Property rptOra() As String
        Get
            Return _rptOra
        End Get
        Set(value As String)
            _rptOra = value
        End Set
    End Property

    Property conditions() As String
        Get
            Return _conditions
        End Get
        Set(value As String)
            _conditions = value
        End Set
    End Property
    Property foreignTablewhere() As String
        Get
            Return _foreignTablewhere
        End Get
        Set(value As String)
            _foreignTablewhere = value
        End Set
    End Property

    Property desactive() As Boolean
        Get
            Return _desactive
        End Get
        Set(value As Boolean)
            _desactive = value
        End Set
    End Property

    Property trier() As String
        Get
            Return _trier
        End Get
        Set(value As String)
            _trier = value
        End Set
    End Property

    Property donneafiltrer() As String
        Get
            Return _donneafiltrer
        End Get
        Set(value As String)
            _donneafiltrer = value
        End Set
    End Property

    Property ForcegroupBySQL() As String
        Get
            Return _ForcegroupBySQL
        End Get
        Set(value As String)
            _ForcegroupBySQL = value
        End Set
    End Property

    Property Groups() As Boolean
        Get
            Return _Groups
        End Get
        Set(value As Boolean)
            _Groups = value
        End Set
    End Property

    Property loopOverTable() As String
        Get
            Return _loopOverTable
        End Get
        Set(value As String)
            _loopOverTable = value
        End Set
    End Property


    Property loopOverField() As String
        Get
            Return _loopOverField
        End Get
        Set(value As String)
            _loopOverField = value
        End Set
    End Property

    Property loopoverfieldType() As String
        Get
            Return _loopoverfieldType
        End Get
        Set(value As String)
            _loopoverfieldType = value
        End Set
    End Property

    Property lastSqlexecute() As String
        Get
            Return _lastSqlexecute
        End Get
        Set(value As String)
            _lastSqlexecute = value
        End Set
    End Property

    Property usedforWeb() As Boolean
        Get
            Return _usedforWeb
        End Get
        Set(value As Boolean)
            _usedforWeb = value
        End Set
    End Property


    Property rptCategory() As String
        Get
            Return _rptCategory
        End Get
        Set(value As String)
            _rptCategory = value
        End Set
    End Property

    Property isReportBook() As Boolean
        Get
            Return _isReportBook
        End Get
        Set(value As Boolean)
            _isReportBook = value
        End Set
    End Property

    Property ReportBookLoopField() As String
        Get
            Return _ReportBookLoopField
        End Get
        Set(value As String)
            _ReportBookLoopField = value
        End Set
    End Property

    Property iscrystalreport() As Boolean
        Get
            Return _iscrystalreport
        End Get
        Set(value As Boolean)
            _iscrystalreport = value
        End Set
    End Property

    Property showpagebreak() As Boolean
        Get
            Return _showpagebreak
        End Get
        Set(value As Boolean)
            _showpagebreak = value
        End Set
    End Property

    Property showsortGroupGrid() As Boolean
        Get
            Return _showsortGroupGrid
        End Get
        Set(value As Boolean)
            _showsortGroupGrid = value
        End Set
    End Property

    Property showLabelCompany() As Boolean
        Get
            Return _showLabelCompany
        End Get
        Set(value As Boolean)
            _showLabelCompany = value
        End Set
    End Property

    Property DatasetDistinctFieldSelectused() As Boolean
        Get
            Return _DatasetDistinctFieldSelectused
        End Get
        Set(value As Boolean)
            _DatasetDistinctFieldSelectused = value
        End Set
    End Property

    Property rptid() As Integer
        Get
            Return _rptid
        End Get
        Set(value As Integer)
            _rptid = value
        End Set
    End Property


End Class
