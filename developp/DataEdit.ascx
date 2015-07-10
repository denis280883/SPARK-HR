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
     <asp:ListBox ID="ListBox1" runat="server">
        <asp:ListItem>Null</asp:ListItem>
        <asp:ListItem Selected="True">True</asp:ListItem>
        <asp:ListItem>False</asp:ListItem>
     </asp:ListBox>
 </TD>
</TR>

<TR>
 <TD>Prénom</TD>
 <TD>
 <INPUT type=text name="prenom">
 </TD>
</TR>

<TR>
 <TD>Sexe</TD>
 <TD>
 Homme : <INPUT type=radio name="sexe" value="M">
 <br>Femme : <INPUT type=radio name="sexe" value="F">
 </TD>
</TR>

<TR>
 <TD>Fonction</TD>
 <TD>
 <SELECT name="fonction">
  <OPTION VALUE="enseignant">Enseignant</OPTION>
  <OPTION VALUE="etudiant">Etudiant</OPTION>
  <OPTION VALUE="ingenieur">Ingénieur</OPTION>
  <OPTION VALUE="retraite">Retraité</OPTION>
  <OPTION VALUE="autre">Autre</OPTION>
 </SELECT>
 </TD>
</TR>
<TR>
 <TD>Commentaires</TD>
 <TD>
 <TEXTAREA rows="3" name="commentaires">
 Tapez ici vos commentaires</TEXTAREA>
 </TD>
</TR>

<TR>
 <TD COLSPAN=2>
 <INPUT type="submit" value="Envoyer">
 </TD>
</TR>




    <tr>
        <td>
            <asp:Panel ID="Panel1" runat="server" Height="363px">
            </asp:Panel>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

