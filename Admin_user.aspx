<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="Admin_user.aspx.cs" Inherits="Admin_Admin_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="color: #FFFFFF" class="style7">
            Admin Users!!!!<asp:Label ID="lblsucess" runat="server" ForeColor="#009900"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            
            <asp:GridView ID="gridadminuser" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="gridadminuser_SelectedIndexChanged1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                         <ControlStyle Height="80px" Width="80px" />
                        </asp:ImageField>
                    
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                        SortExpression="ID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" 
                        SortExpression="UserName" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                        SortExpression="MobileNo" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                        SortExpression="EmailID" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Password" HeaderText="Password" 
                        SortExpression="Password" />
                    <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" Visible="false" />
                    <asp:TemplateField>
                        <ItemTemplate>
                        <asp:ImageButton ID="btndelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' ImageUrl="~/img/delete.jpg" Height="20px" Width="20px" OnClientClick="return confirm('Are you sure you want to Remove this user?')" />
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/img/view_profile_main.png"/>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
                SelectCommand="SELECT * FROM [Admin_create_user]" DeleteCommand="delete from [Admin_create_user] where [ID]=@ID">
             <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
             </DeleteParameters>   
             </asp:SqlDataSource>
           
            <br />
           </td>
    </tr>
</table>
</asp:Content>

