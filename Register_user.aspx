<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="Register_user.aspx.cs" Inherits="Admin_Register_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="10%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblsucess" runat="server"></asp:Label>
            </td>
            <td width="10%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10%">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Registration_no" DataSourceID="SqlDataSource1" 
                    AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onrowcommand="GridView1_RowCommand" 
                     Width="814px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        
                       
                        
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                         <ControlStyle Height="80px" Width="80px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                            ReadOnly="True" SortExpression="Registration_no"/>
                        <asp:BoundField DataField="Profile_created_by" HeaderText="Profile_created_by" 
                            SortExpression="Profile_created_by" Visible="false" />
                        <asp:BoundField DataField="First_name" HeaderText="FirstName" 
                            SortExpression="First_name" />
                        <asp:BoundField DataField="Middle_name" HeaderText="MiddleName" 
                            SortExpression="Middle_name" Visible="false" />
                        <asp:BoundField DataField="Last_name" HeaderText="LastName" 
                            SortExpression="Last_name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Date_of_birth" HeaderText="Birthdate" 
                            SortExpression="Date_of_birth" Visible="false"/>
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" Visible="false" />
                        <asp:BoundField DataField="Religion" HeaderText="Religion" 
                            SortExpression="Religion" Visible="false" />
                        <asp:BoundField DataField="Mother_tounge" HeaderText="Mother tounge" 
                            SortExpression="Mother_tounge" Visible="false" />
                        <asp:BoundField DataField="Caste" HeaderText="Caste" SortExpression="Caste" Visible="false" />
                        <asp:BoundField DataField="Maritial_status" HeaderText="Maritial status" 
                            SortExpression="Maritial_status" Visible="false" />
                        <asp:BoundField DataField="Have_a_children" HeaderText="Have_a_children" 
                            SortExpression="Have_a_children" Visible="false" />
                        <asp:BoundField DataField="Country_living_in" HeaderText="Country" 
                            SortExpression="Country_living_in" />
                        <asp:BoundField DataField="Mobile_no" HeaderText="Mobile no" 
                            SortExpression="Mobile_no" Visible="false" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:TemplateField>
                        <ItemTemplate>
                        <asp:ImageButton ID="btndelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Registration_no") %>' ImageUrl="~/img/delete.jpg" Height="20px" Width="20px" OnClientClick="return confirm('Are you sure you want to Remove this user?')" />
                    </ItemTemplate>
            </asp:TemplateField>
             <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/img/view_profile_main.png"/>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Left" VerticalAlign="Top" /> 
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT * FROM [user_detail]" DeleteCommand="delete from [user_education] where [Registration_no]=@Registration_no ">
                    <DeleteParameters>
                <asp:Parameter Name="Registration_no" Type="String" />
            </DeleteParameters>
                    </asp:SqlDataSource>
            </td>
            <td width="10%">
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

