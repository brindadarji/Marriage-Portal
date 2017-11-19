<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetpassword.aspx.cs" Inherits="Forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style16
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td width="100">
                &nbsp;</td>
            <td align="center" style="font-size: large; color: #CD0000">
                Forgot Your Password ??</td>
            <td width="100">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100">
                &nbsp;</td>
            <td align="left" rowspan="3" style="font-size: larger" valign="top">
                <table class="style16">
                    <tr>
                        <td>
                Username:::</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtforgetpass" runat="server" Width="326px" Height="24px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" BackColor="Black" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="26px" 
                                Width="86px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="100">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100">
                &nbsp;</td>
            <td width="100">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="100">
                &nbsp;</td>
            <td width="100">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

