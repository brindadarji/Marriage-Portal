<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="sucessstoriesuser.aspx.cs" Inherits="sucessstoriesuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="center" style="font-size: large; font-weight: bold; color: #FF0000">
                    Success Stories</td>
        </tr>
        <tr>
            <td>
                <table class="style4" style="width: 898px">
                    <tr>
                        <td width="8%">
                                &nbsp;</td>
                        <td align="center">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" 
                                    ForeColor="#660033" GridLines="None" PageSize="4" DataKeyNames="SSID">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="SSID" HeaderText="SSID" ReadOnly="True" 
                                            SortExpression="SSID" Visible="false" />
                                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                                        <ControlStyle Height="150px" Width="150px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Bride_name" HeaderText="Bride Name" 
                                            SortExpression="Bride_name" />
                                    <asp:BoundField DataField="Groom_name" HeaderText="Groom Name" 
                                            SortExpression="Groom_name" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" 
                                            SortExpression="Description" />
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
                                    SelectCommand="SELECT * FROM [user_success]"></asp:SqlDataSource>
                        </td>
                        <td width="8%">
                                &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

