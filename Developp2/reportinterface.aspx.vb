
Partial Class reportinterface
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Dim rptlists As Rptlists




        If Not IsPostBack Then

            'Test = ""
            'cnt.Open()
            'cmd.CommandText = msql
            'GridView1.DataSource = ds
            'GridView1.DataBind()
            'cnt.Close()
            ' MsgBox("Fin")
        End If
    End Sub


End Class
