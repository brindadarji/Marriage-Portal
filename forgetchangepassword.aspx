<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgetchangepassword.aspx.cs" Inherits="forgetchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td colspan="4">
                We are Happy to Help you....... for your password recovery change your password 
                by writing new password and relogin by new password.....</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="30%">
                Old Password</td>
            <td width="2%">
                :</td>
            <td>
                <asp:TextBox ID="txtold" runat="server" TextMode="Password" Width="224px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="30%">
                New Password</td>
            <td width="2%">
                :</td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" Width="228px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Retype Password</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtretypepassword" runat="server" Width="228px" 
                    TextMode="Password"></asp:TextBox>
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
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="SUBMIT" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="26px" 
                    Width="110px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

