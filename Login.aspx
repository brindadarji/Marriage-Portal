<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style12
        {
            width: 100%;
        }
        .style13
        {
            height: 29px;
            width: 30%;
        }
        .style15
        {
            height: 25px;
            width: 0;
        }
        .style16
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table class="style12">
        <tr>
            <td style="border: medium double #CC0000;">
                <table align="center" class="style3" frame="border" width="500px" 
                    style="border-color: #CC0000">
                    <tr>
                        <td width="100px">
                            &nbsp;</td>
                        <td>
                            <table class="style1" 
                                style="height: 181px; font-family: Calibri; color: #CC2800; width: 99%;">
                                <tr>
                                    <td align="left" class="style8" colspan="3" 
                                        style="font-weight: bold; color: #FF0000; font-size: x-large;" 
                                        width="50%">
                                        <marquee dir="rtl">Member Login using Email ID</marquee>
                                       </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style13" 
                                        style="color: #FF0000; font-size: medium; font-weight: bold;">
                                        <asp:Image ID="Image2" runat="server" Height="100px" 
                                            ImageUrl="~/img/login2.jpg" Width="100px" />
                                    </td>
                                    <td align="center" class="style6" width="2%" 
                                        style="color: #FF0000; font-size: medium; font-weight: normal;">
                                        &nbsp;</td>
                                    <td align="left" width="50%" valign="top">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtuname" ErrorMessage="Please Enter User Name" 
                                            Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="txtpass" ErrorMessage="Please Enter Password" 
                                            Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:Label ID="lblsign" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                        <br />
                                        <br />
                                        <br />
                                        <asp:DropDownList ID="dropdownloginuser" runat="server" Height="16px" 
                                            Width="181px">
                                            <asp:ListItem>--Select User--</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>Registered User</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style13" 
                                        style="color: #FF0000; font-size: medium; font-weight: bold;">
                                        UserName</td>
                                    <td align="center" class="style6" width="2%" 
                                        style="color: #FF0000; font-size: medium; font-weight: normal;">
                                        :</td>
                                    <td align="left" width="50%">
                                        <asp:TextBox ID="txtuname" runat="server" Width="246px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style13" style="color: #FF0000; font-size: medium;">
                                        PassWord</td>
                                    <td align="center" class="style6">
                                        :</td>
                                    <td align="left" width="50%">
                                        <asp:TextBox ID="txtpass" runat="server" Height="22px" TextMode="Password" 
                                            Width="246px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style13" style="color: #FF0000; font-size: medium;">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                                            ImageUrl="~/img/login6.jpg" onclick="ImageButton1_Click" Width="98px" />
                                    </td>
                                    <td align="center" class="style6">
                                        &nbsp;</td>
                                    <td align="left" width="50%">
                                        <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Red" 
                                            NavigateUrl="~/Forgetpassword.aspx">ForgotPassword?</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style16" colspan="2">
                                        &nbsp;</td>
                                    <td align="center" class="style15" width="2px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" class="style13">
                                        &nbsp;</td>
                                    <td align="center" class="style6">
                                        &nbsp;</td>
                                    <td align="left" width="50%">
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="100px">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    
</asp:Content>

