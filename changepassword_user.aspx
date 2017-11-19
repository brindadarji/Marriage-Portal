<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="changepassword_user.aspx.cs" Inherits="changepassword_user" %>

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
                <asp:Label ID="lblchangepassword" runat="server" Font-Italic="True" 
                    ForeColor="#009933"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                Old Password</td>
            <td width="2%">
                :</td>
            <td width="30%">
                <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password" 
                    Width="184px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter old password" ForeColor="Red" 
                    ControlToValidate="txtoldpassword" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                New Password</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" 
                    Width="184px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter new  password" ForeColor="Red" 
                    ControlToValidate="txtnewpassword" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Retype New Password</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtretypenewpass" runat="server" TextMode="Password" 
                    Width="182px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please retype new  password" ForeColor="Red" 
                    ControlToValidate="txtretypenewpass" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnewpassword" ControlToValidate="txtretypenewpass" 
                Display="Dynamic" ErrorMessage="New password and retype password not match" 
                ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnpassword" runat="server" onclick="btnpassword_Click" 
                    Text="Save" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    Width="78px" />
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

