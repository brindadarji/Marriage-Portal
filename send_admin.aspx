<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="send_admin.aspx.cs" Inherits="send_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="40%">
                <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/img/msg11.jpg" 
                    Width="150px" />
            </td>
            <td width="5%">
                &nbsp;</td>
            <td>
    <asp:Label ID="lblsucess" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="40%">
                &nbsp;</td>
            <td width="5%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="40%">
                Please select user to show sent messages..</td>
            <td width="5%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="40%">
                <asp:DropDownList ID="dropuser" runat="server" Height="33px" Width="162px">
                    <asp:ListItem>--Select User--</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Registered User</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn" runat="server" onclick="btn_Click" Text="Show SendBox" />
            </td>
            <td width="5%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="40%" align="left" valign="top">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="17px" 
        Width="357px" onrowcommand="GridView1_RowCommand" AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" Visible="false"/>
            <asp:BoundField DataField="From_uname" HeaderText="From" 
                SortExpression="From_uname" Visible="false" />
            <asp:BoundField DataField="To_uname" HeaderText="To" 
                SortExpression="To_uname" />
            <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="btndelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' ImageUrl="~/img/delete.jpg" Height="20px" Width="20px" OnClientClick="return confirm('Are you sure you want to Remove this mail?')" DeleteCommand="Delete from [admin_message] where [Id]= @Id"/>
                </ItemTemplate>
            </asp:TemplateField>
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
            </td>
            <td width="5%">
                &nbsp;</td>
            <td align="left" valign="top">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                    Height="129px" Visible="False" Width="406px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" Visible="false"/>
                        <asp:BoundField DataField="From_username" HeaderText="From" 
                            SortExpression="From_username" Visible="false"/>
                        <asp:BoundField DataField="From_name" HeaderText="Name" 
                            SortExpression="From_name" Visible="false" />
                        <asp:BoundField DataField="To_username" HeaderText="To" 
                            SortExpression="To_username" />
                        <asp:BoundField DataField="To_name" HeaderText="Name" 
                            SortExpression="To_name" Visible="false" />
                        <asp:BoundField DataField="Message" HeaderText="Message" 
                            SortExpression="Message" />
                        <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="btndelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' ImageUrl="~/img/delete.jpg" Height="20px" Width="20px" OnClientClick="return confirm('Are you sure you want to Remove this mail?')" DeleteCommand="Delete from [admin_message] where [Id]= @Id"/>
                </ItemTemplate>
            </asp:TemplateField>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [user_message] WHERE ([From_username] = @From_username)" DeleteCommand="Delete from [user_message] where [Id]= @Id" >
                    <SelectParameters>
                        <asp:Parameter DefaultValue="@CustomerCare" Name="From_username" 
                            Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
                </asp:SqlDataSource>
            </td>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
        SelectCommand="SELECT * FROM [admin_message] WHERE ([From_uname] = @From_uname)" DeleteCommand="Delete from [admin_message] where [Id]= @Id">
        <SelectParameters>
            <asp:SessionParameter Name="From_uname" SessionField="loginemail" 
                Type="String" />
        </SelectParameters>
        <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>

