<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="changeusername_user.aspx.cs" Inherits="changeusername_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="20%">
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td width="30%">
                <asp:Label ID="lbluname" runat="server" ForeColor="#009933"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                Your old Username is</td>
            <td width="2%">
                :</td>
            <td width="30%">
                <asp:TextBox ID="txtolduname" runat="server" Width="207px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                New Username</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtnewuname" runat="server" Width="208px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnewuname" Display="Dynamic" 
                    ErrorMessage="Please enter new username" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Please enter proper Email id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtnewuname" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td>
                Retype new Username</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtretypenewname" runat="server" Width="206px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtretypenewname" Display="Dynamic" 
                    ErrorMessage="Please retype new username" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnewuname" ControlToValidate="txtretypenewname" 
                Display="Dynamic" ErrorMessage="New username and retyped username not match" 
                ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnuname" runat="server" onclick="btnuname_Click" Text="Save" 
                    BackColor="Black" Font-Bold="True" Font-Names="Times New Roman" 
                    Font-Size="Medium" ForeColor="White" Height="26px" Width="77px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

