<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DataEdit.ascx.vb" Inherits="DataEdit" %>
<table id="Table2" runat="Server" border="1" cellpadding="1" cellspacing="2" rules="none" 
    style="width:100%;">


<TR>
 <TD>rptid</TD>
 <TD>
     <asp:TextBox ID="erptid" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>rpttype</TD>
 <TD>
     <asp:TextBox ID="erpttype" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>rptthemeid</TD>
 <TD>
     <asp:TextBox ID="erptthemeid" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>rptname</TD>
 <TD>
     <asp:TextBox ID="erptname" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>rptsql</TD>
 <TD>
     <asp:TextBox ID="erptsql" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>rptAcc</TD>
 <TD>
     <asp:TextBox ID="erptAcc" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>rptOra</TD>
 <TD>
     <asp:TextBox ID="erptOra" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>conditions</TD>
 <TD>
     <asp:TextBox ID="econditions" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>foreignTablewhere</TD>
 <TD>
     <asp:TextBox ID="eforeignTablewhere" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>Desactive</TD>
 <TD>
     <asp:CheckBox ID="eDesactive" runat="server" />
 </TD>
</TR>
<TR>
 <TD>trier</TD>
 <TD>
     <asp:TextBox ID="etrier" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>donneafiltrer</TD>
 <TD>
     <asp:CheckBox ID="edonneafiltrer" runat="server" />
 </TD>
</TR>
<TR>
 <TD>ForcegroupBySQL</TD>
 <TD>
     <asp:TextBox ID="eForcegroupBySQL" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>Groups</TD>
 <TD>
     <asp:ListBox ID="eGroups" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>loopOverTable</TD>
 <TD>
     <asp:TextBox ID="eloopOverTable" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>loopOverField</TD>
 <TD>
     <asp:TextBox ID="eloopOverField" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>loopoverfieldType</TD>
 <TD>
     <asp:TextBox ID="eloopoverfieldType" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>lastSqlexecute</TD>
 <TD>
     <asp:TextBox ID="elastSqlexecute" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>usedforWeb</TD>
 <TD>
     <asp:ListBox ID="eusedforWeb" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>rptCategory</TD>
 <TD>
     <asp:TextBox ID="erptCategory" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>isReportBook</TD>
 <TD>
     <asp:ListBox ID="eisReportBook" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>ReportBookLoopField</TD>
 <TD>
     <asp:TextBox ID="eReportBookLoopField" runat="server"></asp:TextBox>
 </TD>
</TR>
<TR>
 <TD>iscrystalreport</TD>
 <TD>
     <asp:ListBox ID="eiscrystalreport" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>showpagebreak</TD>
 <TD>
     <asp:ListBox ID="eshowpagebreak" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>showsortGroupGrid</TD>
 <TD>
     <asp:ListBox ID="eshowsortGroupGrid" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>showLabelCompany</TD>
 <TD>
     <asp:ListBox ID="eshowLabelCompany" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
<TR>
 <TD>DatasetDistinctFieldSelectused</TD>
 <TD>
     <asp:ListBox ID="eDatasetDistinctFieldSelectused" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>
</table>

