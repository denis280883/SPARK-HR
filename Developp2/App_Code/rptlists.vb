Imports Microsoft.VisualBasic

Public Class Rptlists

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
