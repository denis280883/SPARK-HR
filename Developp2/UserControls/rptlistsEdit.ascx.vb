
Partial Class UserControls_rptlistsEdit
    Inherits System.Web.UI.UserControl

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
        'usedforWeb = CType(gridViewRow.FindControl("eusedforWeb"), Label).Text
        rptCategory = CType(gridViewRow.FindControl("LabelrptCategory"), Label).Text
        'isReportBook = CType(gridViewRow.FindControl("eisReportBook"), Label).Text
        ReportBookLoopField = CType(gridViewRow.FindControl("LabelReportBookLoopField"), Label).Text
        'iscrystalreport = CType(gridViewRow.FindControl("eiscrystalreport"), Label).Text
        'showpagebreak = CType(gridViewRow.FindControl("eshowpagebreak"), Label).Text
        'showsortGroupGrid = CType(gridViewRow.FindControl("eshowsortGroupGrid"), Label).Text
        'showLabelCompany = CType(gridViewRow.FindControl("eshowLabelCompany"), Label).Text
        'DatasetDistinctFieldSelectused = CType(gridViewRow.FindControl("elDatasetDistinctFieldSelectused"), Label).Text



    End Sub

    Sub New()

    End Sub

    Function ConvertNullBoolean(value As String) As String
        If (value = "") Then
            ConvertNullBoolean = "Null"
        Else
            ConvertNullBoolean = value
        End If
    End Function


    Property rptid() As Integer
        Get
            Return erptid.Text
        End Get
        Set(value As Integer)
            erptid.Text = value
        End Set
    End Property

    Property rpttype() As String
        Get
            Return erpttype.Text
        End Get
        Set(value As String)
            erpttype.Text = value
        End Set
    End Property

    Property rptthemeid() As String
        Get
            Return erptthemeid.Text
        End Get
        Set(value As String)
            erptthemeid.Text = value
        End Set
    End Property

    Property rptname() As String
        Get
            Return erptname.Text
        End Get
        Set(value As String)
            erptname.Text = value
        End Set
    End Property


    Property rptsql() As String
        Get
            Return erptsql.Text
        End Get
        Set(value As String)
            erptsql.Text = value
        End Set
    End Property

    Property rptAcc() As String
        Get
            Return erptAcc.Text
        End Get
        Set(value As String)
            erptAcc.Text = value
        End Set
    End Property

    Property rptOra() As String
        Get
            Return erptOra.Text
        End Get
        Set(value As String)
            erptOra.Text = value
        End Set
    End Property

    Property conditions() As String
        Get
            Return econditions.Text
        End Get
        Set(value As String)
            econditions.Text = value
        End Set
    End Property
    Property foreignTablewhere() As String
        Get
            Return eforeignTablewhere.Text
        End Get
        Set(value As String)
            eforeignTablewhere.Text = value
        End Set
    End Property

    Property desactive() As Boolean
        Get
            Return eDesactive.Checked
        End Get
        Set(value As Boolean)
            eDesactive.Checked = value
        End Set
    End Property

    Property trier() As String
        Get
            Return etrier.Text
        End Get
        Set(value As String)
            etrier.Text = value
        End Set
    End Property

    Property donneafiltrer() As String
        Get
            Return edonneafiltrer.Text
        End Get
        Set(value As String)
            edonneafiltrer.Text = value
        End Set
    End Property

    Property ForcegroupBySQL() As String
        Get
            Return eForcegroupBySQL.Text
        End Get
        Set(value As String)
            eForcegroupBySQL.Text = value
        End Set
    End Property

    Property Groups() As String
        Get
            Return eGroups.Text
        End Get
        Set(value As String)
            eGroups.SelectedValue = value
        End Set
    End Property

    Property loopOverTable() As String
        Get
            Return eloopOverTable.Text
        End Get
        Set(value As String)
            eloopOverTable.Text = value
        End Set
    End Property


    Property loopOverField() As String
        Get
            Return eloopOverField.Text
        End Get
        Set(value As String)
            eloopOverField.Text = value
        End Set
    End Property

    Property loopoverfieldType() As String
        Get
            Return eloopoverfieldType.Text
        End Get
        Set(value As String)
            eloopoverfieldType.Text = value
        End Set
    End Property

    Property lastSqlexecute() As String
        Get
            Return elastSqlexecute.Text
        End Get
        Set(value As String)
            elastSqlexecute.Text = value
        End Set
    End Property

    Property usedforWeb() As Boolean
        Get
            Return eusedforWeb.Text
        End Get
        Set(value As Boolean)
            eusedforWeb.Text = value
        End Set
    End Property


    Property rptCategory() As String
        Get
            Return erptCategory.Text
        End Get
        Set(value As String)
            erptCategory.Text = value
        End Set
    End Property

    Property isReportBook() As Boolean
        Get
            Return eisReportBook.Text
        End Get
        Set(value As Boolean)
            eisReportBook.Text = value
        End Set
    End Property

    Property ReportBookLoopField() As String
        Get
            Return eReportBookLoopField.Text
        End Get
        Set(value As String)
            eReportBookLoopField.Text = value
        End Set
    End Property

    Property iscrystalreport() As Boolean
        Get
            Return eiscrystalreport.Text
        End Get
        Set(value As Boolean)
            eiscrystalreport.Text = value
        End Set
    End Property

    Property showpagebreak() As Boolean
        Get
            Return eshowpagebreak.Text
        End Get
        Set(value As Boolean)
            eshowpagebreak.Text = value
        End Set
    End Property

    Property showsortGroupGrid() As Boolean
        Get
            Return eshowsortGroupGrid.Text
        End Get
        Set(value As Boolean)
            eshowsortGroupGrid.Text = value
        End Set
    End Property

    Property showLabelCompany() As Boolean
        Get
            Return eshowLabelCompany.Text
        End Get
        Set(value As Boolean)
            eshowLabelCompany.Text = value
        End Set
    End Property

    Property DatasetDistinctFieldSelectused() As Boolean
        Get
            Return eDatasetDistinctFieldSelectused.Text
        End Get
        Set(value As Boolean)
            eDatasetDistinctFieldSelectused.Text = value

        End Set
    End Property



    Public Event Start(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)


    Protected Sub BtnUpdate_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles BtnUpdate.Click
        RaiseEvent Start(sender, e)
    End Sub
End Class
