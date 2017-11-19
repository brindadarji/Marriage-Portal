<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="send_user.aspx.cs" Inherits="send_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style6">
        <tr>
            <td width="15%">
                &nbsp;</td>
            <td class="style7" style="font-size: large; color: #FF0000; font-weight: bold">
                Sent Messages</td>
            <td width="15%">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="549px" 
        EmptyDataText="You have no emails" 
        style="margin-right: 2px" onrowcommand="GridView1_RowCommand" 
        AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="ID" Visible="false">
            <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="To_username" HeaderText="Email Id" 
                SortExpression="To_username" />
            <asp:BoundField DataField="To_name" HeaderText="Name" 
                SortExpression="To_name" Visible="false" />
            <asp:BoundField DataField="Message" HeaderText="Message" 
                SortExpression="Message" />
                 <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="btndelete1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' ImageUrl="~/img/delete.jpg" Height="20px" Width="20px" OnClientClick="return confirm('Are you sure you want to Remove this mail?')"  />
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
                <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
        SelectCommand="SELECT [ID],[To_username], [To_name], [Message] FROM [user_message] WHERE ([From_username] = @From_username)" DeleteCommand="Delete from [user_message] where [ID]= @ID" >
        <SelectParameters>
            <asp:SessionParameter Name="From_username" SessionField="loginemail" 
                Type="String" />
        </SelectParameters>
        <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
    </asp:SqlDataSource>
            </td>
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
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblsucess" runat="server"></asp:Label>
    <br />
</asp:Content>

