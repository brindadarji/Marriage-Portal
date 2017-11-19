<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
    {
        height: 24px;
    }
        .style4
        {
            height: 18px;
        }
        .style5
        {
            height: 11px;
        }
        .style16
        {
            width: 13%;
        }
        .style18
        {
            height: 29px;
            width: 13%;
        }
        .style19
        {
            height: 37px;
            width: 13%;
        }
        .style20
        {
            width: 2%;
        }
        .style22
        {
            height: 29px;
            width: 2%;
        }
        .style23
        {
            height: 37px;
            width: 2%;
        }
        .style24
        {
            height: 11px;
        }
        .style25
        {
            height: 11px;
            width: 13%;
        }
        .style26
        {
            height: 11px;
            width: 2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 910px">
            <tr>
                <td align="center" colspan="4">
                    We provide Facility to search your partner. You can search your partner by 
                    name,age,state.</td>
            </tr>
            <tr>
                <td width="20%">
                    &nbsp;</td>
                <td class="style16">
                    Search Partner By</td>
                <td class="style20">
                    :</td>
                <td>
                    <asp:DropDownList ID="dropsearch" runat="server" 
                        onselectedindexchanged="dropsearch_SelectedIndexChanged" 
                        AutoPostBack="True" Height="27px" Width="167px">
                        <asp:ListItem>-- Search --</asp:ListItem>
                        <asp:ListItem>By Name</asp:ListItem>
                        <asp:ListItem>By Age</asp:ListItem>
                        <asp:ListItem>By State</asp:ListItem>
                        <asp:ListItem>By Cast</asp:ListItem>
                        
                        
                        <asp:ListItem>By Rashi</asp:ListItem>
                        <asp:ListItem>By Job</asp:ListItem>
                        <asp:ListItem>By Family Status</asp:ListItem>
                        <asp:ListItem>By Profession</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsearch" runat="server" Text="Search" 
                        onclick="btnsearch_Click" BackColor="Black" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="23px" 
                        Width="83px" />
                </td>
            </tr>
            <tr>
                <td width="20%">
                    &nbsp;</td>
                <td class="style16">
                    <asp:Label ID="lblsearch" runat="server"></asp:Label>
                </td>
                <td class="style20">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtsearch" runat="server" Height="21px" Visible="False" 
                        Width="167px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="20%">
                    &nbsp;</td>
                <td class="style16">
                    <asp:Label ID="lblrashi1" runat="server"></asp:Label>
                </td>
                <td class="style20">
                    &nbsp;</td>
                <td>
                            <asp:DropDownList ID="droprashi" runat="server" Height="19px" 
                        Width="169px" Visible="False">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Aries</asp:ListItem>
                                <asp:ListItem>Taurus</asp:ListItem>
                                <asp:ListItem>Gemini</asp:ListItem>
                                <asp:ListItem>Cancer</asp:ListItem>
                                <asp:ListItem>Leo</asp:ListItem>
                                <asp:ListItem>Virgo</asp:ListItem>
                                <asp:ListItem>Libra</asp:ListItem>
                                <asp:ListItem>Scorpio</asp:ListItem>
                                <asp:ListItem>Saggittarius</asp:ListItem>
                                <asp:ListItem>Capricorn</asp:ListItem>
                                <asp:ListItem>Aquarius</asp:ListItem>
                                <asp:ListItem>Pisces</asp:ListItem>
                            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    </td>
                <td class="style25">
                    <asp:Label ID="lblrashi" runat="server"></asp:Label>
                    </td>
                <td class="style26">
                    </td>
                <td class="style24">
                    &nbsp;
                            <asp:RadioButtonList ID="rdbemployeein" runat="server" 
                                RepeatDirection="Horizontal" Visible="False" Height="27px" Width="325px">
                                <asp:ListItem>Government</asp:ListItem>
                                <asp:ListItem>Own Business</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                                <asp:ListItem>Nothing</asp:ListItem>
                            </asp:RadioButtonList>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
                <td class="style18">
                    <asp:Label ID="lblfamilystatus" runat="server"></asp:Label>
                    </td>
                <td class="style22">
                    </td>
                <td class="style5">
                            <asp:RadioButtonList ID="rdbfamilystatus" runat="server" 
                                RepeatDirection="Horizontal" Visible="False" Width="304px">
                                <asp:ListItem>Lower class</asp:ListItem>
                                <asp:ListItem>Middle Class</asp:ListItem>
                                <asp:ListItem>Rich</asp:ListItem>
                            </asp:RadioButtonList>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style19">
                    </td>
                <td class="style23">
                    </td>
                <td class="style3">
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style16">
                </td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="4">
                    <asp:GridView ID="gridsearch" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" 
                        onrowdatabound="gridsearch_RowDataBound">
                        <Columns>
                            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                                <ControlStyle Height="100px" Width="100px" />
                            </asp:ImageField>

                        </Columns>
                        <AlternatingRowStyle BackColor="White" />
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
            </tr>
            <tr>
                <td class="style3" colspan="4">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

