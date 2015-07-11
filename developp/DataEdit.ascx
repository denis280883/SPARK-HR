<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DataEdit.ascx.vb" Inherits="DataEdit" %>
<style type="text/css">
    .style3
    {
        width: 10px;
    }
    .style4
    {
        width: 476px;
    }
</style>


<div style="left:300px; top:100px; width:415px; height:500px; overflow:auto;">
    <table id="Table2" runat="Server" border="1" cellpadding="1" cellspacing="2" rules="none" 
        style="width:60%;" bgcolor="#669999" width="&lt;">
    <TR>
     <TD class="style3" style="width: 10px">rptid</TD>
     <TD class="style4">
         <asp:TextBox ID="erptid" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rpttype</TD>
     <TD class="style4">
         <asp:TextBox ID="erpttype" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rptthemeid</TD>
     <TD class="style4">
         <asp:TextBox ID="erptthemeid" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rptname</TD>
     <TD class="style4">
         <asp:TextBox ID="erptname" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rptsql</TD>
     <TD class="style4">
         <asp:TextBox ID="erptsql" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rptAcc</TD>
     <TD class="style4">
         <asp:TextBox ID="erptAcc" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rptOra</TD>
     <TD class="style4">
         <asp:TextBox ID="erptOra" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">conditions</TD>
     <TD class="style4">
         <asp:TextBox ID="econditions" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">foreignTablewhere</TD>
     <TD class="style4">
         <asp:TextBox ID="eforeignTablewhere" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">Desactive</TD>
     <TD class="style4">
         <asp:CheckBox ID="eDesactive" runat="server" />
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">trier</TD>
     <TD class="style4">
         <asp:TextBox ID="etrier" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">donneafiltrer</TD>
     <TD class="style4">
         <asp:CheckBox ID="edonneafiltrer" runat="server" />
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">ForcegroupBySQL</TD>
     <TD class="style4">
         <asp:TextBox ID="eForcegroupBySQL" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">Groups</TD>
     <TD class="style4">
         <asp:ListBox ID="eGroups" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">loopOverTable</TD>
     <TD class="style4">
         <asp:TextBox ID="eloopOverTable" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">loopOverField</TD>
     <TD class="style4">
         <asp:TextBox ID="eloopOverField" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">loopoverfieldType</TD>
     <TD class="style4">
         <asp:TextBox ID="eloopoverfieldType" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">lastSqlexecute</TD>
     <TD class="style4">
         <asp:TextBox ID="elastSqlexecute" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">usedforWeb</TD>
     <TD class="style4">
         <asp:ListBox ID="eusedforWeb" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">rptCategory</TD>
     <TD class="style4">
         <asp:TextBox ID="erptCategory" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">isReportBook</TD>
     <TD class="style4">
         <asp:ListBox ID="eisReportBook" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">ReportBookLoopField</TD>
     <TD class="style4">
         <asp:TextBox ID="eReportBookLoopField" runat="server"></asp:TextBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">iscrystalreport</TD>
     <TD class="style4">
         <asp:ListBox ID="eiscrystalreport" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">showpagebreak</TD>
     <TD class="style4">
         <asp:ListBox ID="eshowpagebreak" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">showsortGroupGrid</TD>
     <TD class="style4">
         <asp:ListBox ID="eshowsortGroupGrid" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">showLabelCompany</TD>
     <TD class="style4">
         <asp:ListBox ID="eshowLabelCompany" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    <TR>
     <TD class="style3" style="width: 10px">DatasetDistinctFieldSelectused</TD>
     <TD class="style4">
         <asp:ListBox ID="eDatasetDistinctFieldSelectused" runat="server">
            <asp:ListItem>Null</asp:ListItem>
            <asp:ListItem Selected="True">True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
         </asp:ListBox>
     </TD>
    </TR>
    </table>
</div>

<p>
    <asp:Button ID="Button1" 
         runat="server" Text="Button" />
    </p>


