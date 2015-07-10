<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DataEdit.ascx.vb" Inherits="DataEdit" %>
<style type="text/css">
    .style1
    {
        width: 12px;
    }
    .style2
    {
        width: 130px;
    }
</style>
<table id="Table2" runat="Server" border="1" cellpadding="1" cellspacing="2" rules="none" 
    style="width:100%;">


<TR>
 <TD class="style1">rptid</TD>
 <TD class="style2">
     <asp:TextBox ID="erptid" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rpttype</TD>
 <TD class="style2">
     <asp:TextBox ID="erpttype" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rptthemeid</TD>
 <TD class="style2">
     <asp:TextBox ID="erptthemeid" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rptname</TD>
 <TD class="style2">
     <asp:TextBox ID="erptname" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rptsql</TD>
 <TD class="style2">
     <asp:TextBox ID="erptsql" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rptAcc</TD>
 <TD class="style2">
     <asp:TextBox ID="erptAcc" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rptOra</TD>
 <TD class="style2">
     <asp:TextBox ID="erptOra" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">conditions</TD>
 <TD class="style2">
     <asp:TextBox ID="econditions" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">foreignTablewhere</TD>
 <TD class="style2">
     <asp:TextBox ID="eforeignTablewhere" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">Desactive</TD>
 <TD class="style2">
     <asp:CheckBox ID="eDesactive" runat="server" />
 </TD>
</TR>
<TR>
 <TD class="style1">trier</TD>
 <TD class="style2">
     <asp:TextBox ID="etrier" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">donneafiltrer</TD>
 <TD class="style2">
     <asp:CheckBox ID="edonneafiltrer" runat="server" />
 </TD>
</TR>
<TR>
 <TD class="style1">ForcegroupBySQL</TD>
 <TD class="style2">
     <asp:TextBox ID="eForcegroupBySQL" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">Groups</TD>
 <TD class="style2">
     <asp:ListBox ID="eGroups" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">loopOverTable</TD>
 <TD class="style2">
     <asp:TextBox ID="eloopOverTable" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">loopOverField</TD>
 <TD class="style2">
     <asp:TextBox ID="eloopOverField" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">loopoverfieldType</TD>
 <TD class="style2">
     <asp:TextBox ID="eloopoverfieldType" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">lastSqlexecute</TD>
 <TD class="style2">
     <asp:TextBox ID="elastSqlexecute" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">usedforWeb</TD>
 <TD class="style2">
     <asp:ListBox ID="eusedforWeb" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">rptCategory</TD>
 <TD class="style2">
     <asp:TextBox ID="erptCategory" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">isReportBook</TD>
 <TD class="style2">
     <asp:ListBox ID="eisReportBook" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">ReportBookLoopField</TD>
 <TD class="style2">
     <asp:TextBox ID="eReportBookLoopField" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD class="style1">iscrystalreport</TD>
 <TD class="style2">
     <asp:ListBox ID="eiscrystalreport" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">showpagebreak</TD>
 <TD class="style2">
     <asp:ListBox ID="eshowpagebreak" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">showsortGroupGrid</TD>
 <TD class="style2">
     <asp:ListBox ID="eshowsortGroupGrid" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">showLabelCompany</TD>
 <TD class="style2">
     <asp:ListBox ID="eshowLabelCompany" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD class="style1">DatasetDistinctFieldSelectused</TD>
 <TD class="style2">
     <asp:ListBox ID="eDatasetDistinctFieldSelectused" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
</table>

