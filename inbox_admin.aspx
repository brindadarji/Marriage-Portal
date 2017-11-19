<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="inbox_admin.aspx.cs" Inherits="inbox_admin" %>

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
            <td width="20%">
                <br />
            </td>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="96px" 
        Width="431px" onrowcommand="GridView1_RowCommand" 
        EmptyDataText="You Have no mails" AllowPaging="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" Visible="false" />
            <asp:BoundField DataField="From_uname" HeaderText="From" 
                SortExpression="From_uname" />
            <asp:BoundField DataField="To_uname" HeaderText="To" 
                SortExpression="To_uname" Visible="false"/>
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
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
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
        SelectCommand="SELECT * FROM [admin_message] WHERE ([To_uname] = @To_uname)" DeleteCommand="Delete from [admin_message] where [Id]= @Id">
        <SelectParameters>
            <asp:SessionParameter Name="To_uname" SessionField="loginemail" Type="String" />
        </SelectParameters>
        <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
    </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblsucess" runat="server"></asp:Label>
</asp:Content>

