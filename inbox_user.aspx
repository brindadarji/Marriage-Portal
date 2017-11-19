<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="inbox_user.aspx.cs" Inherits="inbox_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="20%">
                <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="~/img/msg9.jpg" 
                    Width="200px" />
            </td>
            <td class="style7" style="font-size: large; font-weight: bold; color: #FF0000" 
                width="50%">
                Inbox</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource1" 
                         ForeColor="#333333" ShowFooter="True" 
        OnRowCommand="GridView1_RowCommand" EmptyDataText="You Have no mails" 
        AllowPaging="True" GridLines="None" Width="549px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:TemplateField HeaderText="ID" Visible="false">
            <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="From_username" HeaderText="Email Id" 
                SortExpression="From_username" />
            <asp:BoundField DataField="From_name" HeaderText="Name" 
                SortExpression="From_name" Visible="false" />
            <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="btndelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' ImageUrl="~/img/delete.jpg" Height="20px" Width="20px" OnClientClick="return confirm('Are you sure you want to Remove this mail?')" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
            HorizontalAlign="Left" VerticalAlign="Top" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" 
            HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
        <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:registerConnectionString %>"
         runat="server" 
        
        SelectCommand="SELECT [ID], [From_username], [From_name], [Message] FROM [user_message] WHERE ([To_username] = @To_username)" DeleteCommand="Delete from [user_message] where [ID]= @ID">
            <SelectParameters>
                <asp:SessionParameter Name="To_username" SessionField="loginemail" 
                    Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int64" />
            </DeleteParameters>
    </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblsucess" runat="server"></asp:Label>
</asp:Content>

