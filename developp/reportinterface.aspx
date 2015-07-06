<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reportinterface.aspx.vb" Inherits="reportinterface" %>


<%@ Register TagPrefix="custdata" TagName="DataEdit" 
    Src="DataEdit.ascx" %>

           <EditFormSettings  UserControlName ="DataEdit.ascx"      EditFormType="WebUserControl">

                    <EditColumn UniqueName="EditCommandColumn1" >

                    </EditColumn>

                  <PopUpSettings     ScrollBars="Auto" Width="20px"/>

                 <FormTableStyle Width="50%" BackColor="BlueViolet" />

             </EditFormSettings>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit</title>


    <script>
        function myFunction() {
            var test = document.getElementById("tutu").innerHTML;
            var person = prompt("Please enter your name", "Harry Potter " + test);
            if (person != null) {
                document.getElementById("demo").innerHTML =
        "Hello " + person + "! How are you today?";
            }
        }
    </script>

</head>
<body>
    <form id="rptlists" runat="server">
    <div>
    
    </div>
    <asp:Button ID="btnDeleteSelect" runat="server" Text="Supprime selection" 
        Width="117px" />
    <asp:Button ID="BtnCopySelect" runat="server" Text="Copie Selection" />
    <br />

    <asp:CheckBox ID="cbNotAskUser" runat="server" 
        Text="Sans confirmation de l'utilisateur" />

    <p id="demo"> J'attend</p>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        &nbsp;&nbsp;
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="cbField" runat="server" 
                        />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ImageButton ID="ImageBtnUpdate" runat="server" CommandName="update" 
                            Height="22px" ImageUrl="~/Pictures/update.PNG" Width="22px" />
                        <asp:ImageButton ID="ImageBtnCancel" runat="server" CommandName="Cancel" 
                            Height="22px" ImageUrl="~/Pictures/undo.PNG" Width="22px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ID="btnAddData" runat="server" CommandName="ajout" 
                            Height="30px" ImageUrl="~/Pictures/add.png" Width="30px" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        Editer<br />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageBtnEdit" runat="server" CommandName="edit" 
                            Height="14px" ImageUrl="~/Pictures/modify.PNG" Width="14px" />
                        <asp:ImageButton ID="ImageBtnDel" runat="server" CommandName="delete" 
                            Height="14px" ImageUrl="~/Pictures/delete.PNG" Width="14px" />
                        <asp:ImageButton ID="ImageBtnDuplicate" runat="server" CommandName="duplicate" 
                            CommandArgument='<%#Container.DataItemIndex%>'
                            Height="22px" ImageUrl="~/Pictures/copier-modifier-icone-4892-96.png" 
                            Width="22px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="enum" runat="server" Text='<%# bind("rptid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="fnum" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Numero
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="labelnum" runat="server" Text='<%# eval ("rptid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="erpttype" runat="server" Text='<%# bind("rpttype") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frpttype" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rpttype
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="labelrpttype" runat="server" Text='<%# eval("rpttype") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptthemeid" runat="server" Text='<%# bind("rptthemeid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frptthemeid" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rptthemeid
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labelrptthemeid" runat="server" Text='<%# eval("rptthemeid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptname" runat="server" Text='<%# bind("rptname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frptname" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rptname
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labelrptname" runat="server" Text='<%# eval("rptname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptsql" runat="server" Text='<%# bind("rptsql") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frptsql" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rptsql
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labelrptsql" runat="server" Text='<%# eval("rptsql") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptAcc" runat="server" Text='<%# bind("rptAcc") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frptAcc" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rptAcc
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labelrptacc" runat="server" Text='<%# eval("rptAcc") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptOra" runat="server" Text='<%# bind("rptOra") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frptOra" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rptOra
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelrptOra" runat="server" Text='<%# eval("rptOra") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="epconditions" runat="server" Text='<%# bind("conditions") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="fconditions" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        conditions
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labelconditions" runat="server" Text='<%# eval("conditions") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="epforeignTablewhere" runat="server" Text='<%# bind("foreignTablewhere") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="fforeignTablewhere" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        foreignTablewhere
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelforeignTablewhere" runat="server" Text='<%# eval("foreignTablewhere") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:CheckBox ID="epdesactive" runat="server" 
                            Checked='<%# bind("desactive") %>' />
                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:CheckBox ID="fdesactive" runat="server" 
                            Checked='<%# bind("desactive") %>' />
                    </FooterTemplate>

                    <HeaderTemplate>
                        desactive
                    </HeaderTemplate>

                    <ItemTemplate>
                        <asp:CheckBox ID="edesactive" runat="server" 
                            Checked='<%# eval("desactive") %>' Enabled="False" 
                            EnableViewState="False" />
                        <asp:Label ID="Labeldesactive" runat="server" Text='<%# eval("desactive") %>' 
                            Visible="False"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eptrier" runat="server" Text='<%# bind("trier") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="ftrier" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Trier
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labeltrier" runat="server" Text='<%# eval("trier") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:CheckBox ID="epdonneafiltrer" runat="server" 
                            Checked='<%# bind("donneafiltrer") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:CheckBox ID="fdonneafiltrer" runat="server" 
                            Checked='<%# bind("donneafiltrer") %>' />
                    </FooterTemplate>
                    <HeaderTemplate>
                        donneafiltrer
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="edonneafiltrer" runat="server" 
                            Checked='<%# eval("donneafiltrer") %>' Enabled="False" 
                            EnableViewState="False" />
                        <asp:Label ID="Labeldonnerafiltrer" runat="server" 
                            Text='<%# eval("donneafiltrer") %>' Visible="False"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="epForcegroupBySQL" runat="server" Text='<%# bind("ForcegroupBySQL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="fForcegroupBySQL" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        ForcegroupBySQL
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelForcegroupBySQL" runat="server" Text='<%# eval("ForcegroupBySQL") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epGroups" runat="server" onload="epGroups_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fGroups" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Groups
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eGroups" runat="server" Text='<%# eval("Groups") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eploopOverTable" runat="server" Text='<%# bind("loopOverTable") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="floopOverTable" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        loopOverTable
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelloopOverTable" runat="server" Text='<%# eval("loopOverTable") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eploopOverField" runat="server" Text='<%# bind("loopOverField") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="floopOverField" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        loopOverField
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelloopOverField" runat="server" Text='<%# eval("loopOverField") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eploopoverfieldType" runat="server" 
                            Text='<%# bind("loopoverfieldType") %>' MaxLength="1"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="floopoverfieldType" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        loopoverfieldType
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelloopoverfieldType" runat="server" Text='<%# eval("loopoverfieldType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eplastSqlexecute" runat="server" Text='<%# bind("lastSqlexecute") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="flastSqlexecute" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        lastSqlexecute
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabellastSqlexecute" runat="server" Text='<%# eval("lastSqlexecute") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epusedforWeb" runat="server" onload="epusedforWeb_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fusedforWeb" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        usedforWeb
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eusedforWeb" runat="server" Text='<%# eval("usedforWeb") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptCategory" runat="server" Text='<%# bind("rptCategory") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="frptCategory" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        rptCategory
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelrptCategory" runat="server" Text='<%# eval("rptCategory") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epIsReportBook" runat="server" onload="epIsReportBook_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fIsReportBook" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        isReportBook
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eisReportBook" runat="server" Text='<%# eval("isReportBook") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="epReportBookLoopField" runat="server" Text='<%# bind("ReportBookLoopField") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="fReportBookLoopField" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        ReportBookLoopField
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelReportBookLoopField" runat="server" Text='<%# eval("ReportBookLoopField") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="episcrystalreport" runat="server" 
                            onload="episcrystalreport_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fiscrystalreport" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        iscrystalreport
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eiscrystalreport" runat="server" Text='<%# eval("iscrystalreport") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epshowpagebreak" runat="server" onload="epshowpagebreak_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fshowpagebreak" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        showpagebreak
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eshowpagebreak" runat="server" Text='<%# eval("showpagebreak") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epshowsortGroupGrid" runat="server" 
                            onload="epshowsortGroupGrid_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fshowsortGroupGrid" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        showsortGroupGrid
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eshowsortGroupGrid" runat="server" Text='<%# eval("showsortGroupGrid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epshowLabelCompany" runat="server" 
                            onload="epshowLabelCompany_Load">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fshowLabelCompany" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        showLabelCompany
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="eshowLabelCompany" runat="server" Text='<%# eval("showLabelCompany") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epDatasetDistinctFieldSelectused" runat="server" 
                            onload="epDatasetDistinctFieldSelectused_Load1">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ListBox ID="fDatasetDistinctFieldSelectused" runat="server">
                            <asp:ListItem>Null</asp:ListItem>
                            <asp:ListItem Selected="True">True</asp:ListItem>
                            <asp:ListItem>False</asp:ListItem>
                        </asp:ListBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        DatasetDistinctFieldSelectused
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="elDatasetDistinctFieldSelectused" runat="server" Text='<%# eval("DatasetDistinctFieldSelectused") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        

    </form>

     <div data-role="main" class="ui-content">
    <a href="#myPopupDialog" data-rel="popup" data-position-to="window" data-transition="fade" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Open Dialog Popuper">
        >Go Back</a>
      </div>


</body>
</html>
