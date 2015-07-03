<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ReportInterface2.aspx.vb" Inherits="ReportInterface2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    rptid
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="enum" runat="server" Text='<%# eval("rptid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
            <asp:TemplateField></asp:TemplateField>
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
