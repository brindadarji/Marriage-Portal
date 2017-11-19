<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="compose_user.aspx.cs" Inherits="compose_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style6" style="width: 100%; height: 167px">
    <tr>
        <td width="20%">
            &nbsp;</td>
        <td width="2%">
            &nbsp;</td>
        <td>
            <asp:Label ID="lblsucess" runat="server" ForeColor="#D10E30"></asp:Label>
        </td>
        <td align="center" rowspan="5" valign="top">
            <br />
            <br />
            <marquee  direction="up" truespeed="truespeed" scrollamount="2" scrolldelay="50" loop="-1" onmousemove="this.scrollAmount=0" onmouseout="this.scrollAmount=2">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="style6">
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image2" runat="server" Height="80px" 
                                    ImageUrl='<%# Eval("Photo") %>' Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style7">
                                <asp:Label ID="lblemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                SelectCommand="SELECT [First_name], [Photo], [Email] FROM [user_detail]">
            </asp:SqlDataSource></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbldes" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td width="30%">
            <asp:Label ID="lblto" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            To</td>
        <td>
            :</td>
        <td width="40%">
            <asp:TextBox ID="txtto" runat="server" Width="282px"></asp:TextBox>
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View Name</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td>
            Message</td>
        <td>
            :</td>
        <td>
            <asp:TextBox ID="txtmessage" runat="server" Height="79px" TextMode="MultiLine" 
                Width="286px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            </td>
        <td class="style8">
            </td>
        <td class="style8">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/send3.jpg" 
                Width="29%" onclick="ImageButton1_Click" Height="26px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" onclick="btndelete_Click" 
                Text="Cancel" BackColor="Black" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                CausesValidation="False" />
        </td>
    </tr>
</table>
</asp:Content>

