Partial Public Class widgetUpdate
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim id As String = Request.Form("id")
        Dim collapsed As String = Request.Form("collapsed")
        Dim order As String = Request.Form("order")
        Dim column As String = Request.Form("column")

        Try
            'Dim products As List(Of widgets) = js.DeserializeObject(Request.Form("dataItem"))
            Dim qa As ds_widgetTableAdapters.QueriesTableAdapter = New ds_widgetTableAdapters.QueriesTableAdapter
            qa.UpdateQuery(extractNumber(column), order, collapsed, extractNumber(id))
        Catch ex As Exception

        End Try
    End Sub

    Function extractNumber(ByVal expression As String) As Integer
        Dim re As New Regex("[0-9]")
        Dim m As Match = re.Match(expression)
        Return m.Value
    End Function
End Class