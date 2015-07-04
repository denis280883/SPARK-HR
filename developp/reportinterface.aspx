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
    <asp:Button ID="btnNewData" runat="server" Text="New Data" />
    <asp:Button ID="btnDeleteSelect" runat="server" Text="Suppresion" 
        Width="117px" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="Select">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <HeaderTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Edit"></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("rptid") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Image" CommandName="edit" 
                ImageUrl="~/Pictures/modify.PNG" Text="edit" />
            <asp:ButtonField CommandName="delete" Text="Supprimer" />
            <asp:ButtonField CommandName="update" Text="Modifier" />
            <asp:ButtonField CommandName="Cancel" Text="Cancel" />
            <asp:ButtonField ButtonType="Image" CommandName="BtnDuplicate" 
                HeaderText="Dupliquer" ImageUrl="~/Pictures/copier-modifier-icone-4892-96.png" 
                Text="Dupliquer" />
            <asp:BoundField DataField="rptid" HeaderText="code" 
                ApplyFormatInEditMode="True" />
            <asp:BoundField DataField="rpttype" HeaderText="rpttype" />
            <asp:BoundField DataField="rptthemeid" HeaderText="rptthemeid" />
            <asp:BoundField DataField="rptname" HeaderText="rptname" />
            <asp:BoundField DataField="rptsql" HeaderText="rptsql" />
            <asp:BoundField DataField="rptAcc" HeaderText="rptAcc" />
            <asp:BoundField DataField="rptOra" HeaderText="rptOra" />
            <asp:BoundField DataField="conditions" HeaderText="conditions" />
            <asp:BoundField DataField="foreignTablewhere" HeaderText="foreignTablewhere" />
            <asp:CheckBoxField DataField="desactive" HeaderText="CheckBoxdisable" 
                Text="desactive" />
            <asp:BoundField DataField="trier" HeaderText="sort" />
            <asp:CheckBoxField DataField="donneafiltrer" HeaderText="CheckBoxdatafilter" 
                Text="donneafiltrer" />
            <asp:BoundField DataField="ForcegroupBySQL" HeaderText="ForcegroupBySQL" />
            <asp:CheckBoxField DataField="Groups" HeaderText="CheckBoxGroups" 
                Text="Groups" />
            <asp:BoundField DataField="loopOverTable" HeaderText="loopOverTable" />
            <asp:BoundField DataField="loopOverField" HeaderText="loopOverField" />
            <asp:BoundField DataField="loopoverfieldType" HeaderText="loopoverfieldType" />
            <asp:BoundField DataField="lastSqlexecute" HeaderText="lastSqlexecute" />
            <asp:CheckBoxField DataField="usedforWeb" HeaderText="CheckBoxusedforWeb" 
                Text="usedforWeb" />
            <asp:BoundField DataField="rptCategory" HeaderText="rptCategory" />
            <asp:CheckBoxField DataField="isReportBook" HeaderText="CheckBoxisReportBook" 
                Text="isReportBook" />
            <asp:BoundField DataField="ReportBookLoopField" 
                HeaderText="ReportBookLoopField" />
            <asp:CheckBoxField DataField="iscrystalreport" 
                HeaderText="CheckBoxiscrystalreport" Text="iscrystalreport" />
            <asp:CheckBoxField DataField="showpagebreak" HeaderText="CheckBoxshowpagebreak" 
                Text="showpagebreak" />
            <asp:CheckBoxField DataField="showsortGroupGrid" 
                HeaderText="CheckBoxshowsortGroupGrid" Text="showsortGroupGrid" />
            <asp:CheckBoxField DataField="showLabelCompany" 
                HeaderText="CheckBoxshowLabelCompany" Text="showLabelCompany" />
            <asp:CheckBoxField DataField="DatasetDistinctFieldSelectused" 
                HeaderText="CheckBoxDatasetDistinctFieldSelectused" 
                Text="DatasetDistinctFieldSelectused" />
            <asp:ButtonField ButtonType="Image" CommandName="BtnDelete" 
                ImageUrl="~/Pictures/delete.PNG" Text="Delete" />
            <asp:TemplateField></asp:TemplateField>
        </Columns>
    </asp:GridView>

    <p id="demo">

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        &nbsp;&nbsp;
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ImageButton ID="ImageBtnUpdate" runat="server" CommandName="update" 
                            Height="22px" ImageUrl="~/Pictures/update.PNG" Width="22px" />
                        <asp:ImageButton ID="ImageBtnCancel" runat="server" CommandName="Cancel" 
                            Height="22px" ImageUrl="~/Pictures/undo.PNG" Width="22px" />
                    </EditItemTemplate>
                    <HeaderTemplate>
                        Editer<br />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageBtnEdit" runat="server" CommandName="edit" 
                            Height="14px" ImageUrl="~/Pictures/modify.PNG" Width="14px" />
                        <asp:ImageButton ID="ImageBtnDel" runat="server" CommandName="delete" 
                            Height="14px" ImageUrl="~/Pictures/delete.PNG" Width="14px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="enum" runat="server" Text='<%# bind("rptid") %>'></asp:TextBox>
                    </EditItemTemplate>
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
                    <HeaderTemplate>
                        rpttype
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# eval("rpttype") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptthemeid" runat="server" Text='<%# bind("rptthemeid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        rptthemeid
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# eval("rptthemeid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptname" runat="server" Text='<%# bind("rptname") %>'></asp:TextBox>
                    </EditItemTemplate>
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

                    <HeaderTemplate>
                        desactive
                    </HeaderTemplate>

                    <ItemTemplate>
                        <asp:CheckBox ID="edesactive" runat="server" 
                            Checked='<%# eval("desactive") %>' Enabled="False" 
                            EnableViewState="False" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eptrier" runat="server" Text='<%# bind("trier") %>'></asp:TextBox>
                    </EditItemTemplate>
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
                    <HeaderTemplate>
                        donneafiltrer
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="edonneafiltrer" runat="server" 
                            Checked='<%# eval("donneafiltrer") %>' Enabled="False" 
                            EnableViewState="False" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="epForcegroupBySQL" runat="server" Text='<%# bind("ForcegroupBySQL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        ForcegroupBySQL
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelForcegroupBySQL" runat="server" Text='<%# eval("ForcegroupBySQL") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epGroups" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        usedforWeb
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelGroups" runat="server" Text='<%# eval("Groups") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eploopOverTable" runat="server" Text='<%# bind("loopOverTable") %>'></asp:TextBox>
                    </EditItemTemplate>
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
                    <HeaderTemplate>
                        lastSqlexecute
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabellastSqlexecute" runat="server" Text='<%# eval("lastSqlexecute") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epusedforWeb" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        usedforWeb
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelusedforWeb" runat="server" Text='<%# eval("usedforWeb") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="eprptCategory" runat="server" Text='<%# bind("rptCategory") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        rptCategory
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelrptCategory" runat="server" Text='<%# eval("rptCategory") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epIsReportBook" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        isReportBook
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelisReportBook" runat="server" Text='<%# eval("isReportBook") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="epReportBookLoopField" runat="server" Text='<%# bind("ReportBookLoopField") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        ReportBookLoopField
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelReportBookLoopField" runat="server" Text='<%# eval("ReportBookLoopField") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="episcrystalreport" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        iscrystalreport
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labeliscrystalreport" runat="server" Text='<%# eval("iscrystalreport") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epshowpagebreak" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        showpagebreak
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Labelshowpagebreak" runat="server" Text='<%# eval("showpagebreak") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epshowsortGroupGrid" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        showsortGroupGrid
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelshowsortGroupGrid" runat="server" Text='<%# eval("showsortGroupGrid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epshowLabelCompany" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        showLabelCompany
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelshowLabelCompany" runat="server" Text='<%# eval("showLabelCompany") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ListBox ID="epDatasetDistinctFieldSelectused" runat="server">
                            <asp:ListItem>NULL</asp:ListItem>
                            <asp:ListItem Selected="True">TRUE</asp:ListItem>
                            <asp:ListItem>FALSE</asp:ListItem>
                        </asp:ListBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        DatasetDistinctFieldSelectused
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelDatasetDistinctFieldSelectused" runat="server" Text='<%# eval("DatasetDistinctFieldSelectused") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        J'attend</p>

    </form>

     <div data-role="main" class="ui-content">
    <a href="#myPopupDialog" data-rel="popup" data-position-to="window" data-transition="fade" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Open Dialog Popuper">
        <h1>Header Text</h1>
      </div>

      <div data-role="main" class="ui-content">
        <h2>Welcome to my Popup Dialog!</h2>
        <p id="tutu">jQuery Mobile is FUN!</p>
        <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b ui-icon-back ui-btn-icon-left" data-rel="back">Go Back</a>
      </div>


</body>
</html>
