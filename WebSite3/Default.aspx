<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace="System.Data" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript" src="jquery-1.5.1.min.js"></script>
	    <script type="text/javascript" src="jquery-ui-1.8.11.custom.min.js"></script>
       <link href="dashboard.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
            $(function() {
                $('.dragbox')
	            .each(function() {
	                $(this).hover(function() {
	                    $(this).find('h2').addClass('collapse');
	                }, function() {
	                    $(this).find('h2').removeClass('collapse');
	                })
		            .find('h2').hover(function() {
		                $(this).find('.configure').css('visibility', 'visible');
		            }, function() {
		                $(this).find('.configure').css('visibility', 'hidden');
		            })
		            .click(function() {
		                $(this).siblings('.dragbox-content').toggle();
		                //Save state on change of collapse state of panel
		                updateWidgetData();
		            })
		            .end()
		            .find('.configure').css('visibility', 'hidden');
	            });

                $('.column').sortable({
                    connectWith: '.column',
                    handle: 'h2',
                    cursor: 'move',
                    placeholder: 'placeholder',
                    forcePlaceholderSize: true,
                    opacity: 0.4,
                    start: function(event, ui) {
                        //Firefox, Safari/Chrome fire click event after drag is complete, fix for that
                        if ($.browser.mozilla || $.browser.safari)
                            $(ui.item).find('.dragbox-content').toggle();
                    },
                    stop: function(event, ui) {
                        ui.item.css({ 'top': '0', 'left': '0' }); //Opera fix
                        if (!$.browser.mozilla && !$.browser.safari)
                            updateWidgetData();
                    }
                })
	            .disableSelection();
                    });

                    function updateWidgetData() {
                       
                        //var items = [];
                        $('.column').each(function() {
                            var columnId = $(this).attr('id');
                            $('.dragbox', this).each(function(i) {
                                var collapsed = 0;
                                if ($(this).find('.dragbox-content').css('display') == "none")
                                    collapsed = 1;
                                
                                $.post('widgetUpdate.aspx', 'id=' + $(this).attr('id') +
                                '&collapsed=' + collapsed + '&order=' + i + '&column=' + columnId, function(response) {
                                    if (response == "success")
                                        $("#console").html('<div class="success">Saved</div>').hide().fadeIn(1000);
                                    setTimeout(function() {
                                        $('#console').fadeOut(1000);
                                    }, 2000);
                                });   
                            });
                        });        
                    }

    </script>
    <style type="text/css">
        #form1
        {
            height: 369px;
            width: 607px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <%
        Response.Write("<uc1:subTitle ID=subTitle2 runat=server />")
        
        'Must set the column manually
        For i As Integer = 1 To 2
            Response.Write("<div class=column id=column" & i & ">")
            Dim ds2 As ds_widgetTableAdapters.widgetsDetailTableAdapter = New ds_widgetTableAdapters.widgetsDetailTableAdapter
            Dim dt2 As New DataTable
            Try
                dt2 = ds2.GetData(i)
                For a As Integer = 0 To dt2.Rows.Count - 1
                    Response.Write("<div class=dragbox id=item" & dt2.Rows(a)("id") & ">")
                    Response.Write("<h2>" & dt2.Rows(a)("title") & "</h2>")
                    Response.Write("<div class=dragbox-content " & IIf(dt2.Rows(a)("collapsed") = 1, "style=display:none;>", ">"))
                    Response.Write("TESTIS")
                    Response.Write("</div>")
                    Response.Write("</div>")
                Next
            Catch ex As Exception

            End Try
            Response.Write("</div>")
        Next
            %>
    <asp:Panel ID="Panel1" runat="server" BackColor="#FF66FF" Height="176px">
    </asp:Panel>
    </form>
</body>
</html>
