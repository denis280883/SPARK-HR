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
                        <asp:Button ID="Button3" runat="server" CommandName="update" Text="modifier" />
                        <asp:Button ID="Button4" runat="server" Text="Cancel" />
                    </EditItemTemplate>
                    <HeaderTemplate>
                        Editer<br />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandName="edit" Text="Edit" />
                        <asp:Button ID="Button2" runat="server" CommandName="delete" Text="Supprimer" />
                        <asp:ImageButton ID="ImageBtnEdit" runat="server" CommandName="edit" 
                            Height="14px" ImageUrl="~/Pictures/modify.PNG" Width="14px" />
                        <asp:ImageButton ID="ImageBtnDel" runat="server" CommandName="delete" 
                            Height="14px" ImageUrl="~/Pictures/delete.PNG" Width="14px" />

                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Numero
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="enum" runat="server" Text='<%# eval ("rptid") %>'></asp:Label>
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
