<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="home_admin.aspx.cs" Inherits="home_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 583px;
        }
        .style8
        {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td style="font-size: large; color: #006600">
                <asp:TextBox ID="txtsearch" runat="server" Height="21px" Width="302px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    BorderColor="Red" Height="23px" ImageUrl="~/img/search6.png" Width="60px" 
                    onclick="ImageButton1_Click" />
            </td>
            <td width="35%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; color: #006600">
                Total No. Of Registered Users =
                <asp:Label ID="totalregistereduser" runat="server" ForeColor="#0033CC"></asp:Label>
            </td>
            <td width="35%">
&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; color: #006600">
                Total No. Of Admin Users =
                <asp:Label ID="totaladminuser" runat="server" ForeColor="#0000CC"></asp:Label>
            </td>
            <td width="35%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; color: #006600">
                Total No. Of Messages =
                <asp:Label ID="totalmessage" runat="server" ForeColor="#0000CC"></asp:Label>
            </td>
            <td width="35%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large; color: #006600">
                Total No. Of Sent Messages =
                <asp:Label ID="totalsent" runat="server" ForeColor="#0000CC"></asp:Label>
            </td>
            <td width="35%" class="style8">
                </td>
        </tr>
        <tr>
            <td class="style7">
&nbsp;&nbsp;
                </td>
            <td width="35%">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gridsearch" runat="server" 
                    onrowdatabound="gridsearch_RowDataBound" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="gridsearch_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                    <asp:CommandField ButtonType="Image" 
                                SelectImageUrl="~/img/view_profile_main.png" ShowSelectButton="True" />
                                <asp:TemplateField>
                    <ItemTemplate>
                           <asp:Image ID="img" Height="100px" Width="100px" ImageUrl='<%# Eval("Photo") %>' 
                                   runat="server" />
                           </ItemTemplate>
                           </asp:TemplateField>
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
            </td>
            <td width="35%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td width="35%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

