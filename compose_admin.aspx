<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="compose_admin.aspx.cs" Inherits="compose_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="20%">
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblsucess" runat="server" ForeColor="#009900"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                To</td>
            <td>
                &nbsp;</td>
            <td width="30%">
                <asp:DropDownList ID="dropuser" runat="server">
                    <asp:ListItem>--Select User--</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Registered User</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                To</td>
            <td>
                :</td>
            <td width="30%">
                <asp:TextBox ID="txtto" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtto" Display="Dynamic" 
                    ErrorMessage="Please enter email id in TO Field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Message</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" Height="79px" TextMode="MultiLine" 
                    Width="220px"></asp:TextBox>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/send3.jpg" 
                Width="29%" onclick="ImageButton1_Click" Height="29px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

