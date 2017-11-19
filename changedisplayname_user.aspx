<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="changedisplayname_user.aspx.cs" Inherits="changedisplayname_user" %>

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
            <asp:Label ID="lblchangename" runat="server" Font-Italic="True" 
                ForeColor="#009933"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="20%">
            Old Name</td>
        <td width="2%">
            :</td>
        <td width="30%">
            <asp:TextBox ID="txtoldnameuser" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            New Name</td>
        <td>
            :</td>
        <td>
            <asp:TextBox ID="txtnewnameuser" runat="server" Width="199px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtnewnameuser" Display="Dynamic" 
                ErrorMessage="Please enter New name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Retype New Name</td>
        <td>
            :</td>
        <td>
            <asp:TextBox ID="txtretypenameuser" runat="server" Width="199px"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnewnameuser" ControlToValidate="txtretypenameuser" 
                Display="Dynamic" ErrorMessage="New name and Retype name not match" 
                ForeColor="Red"></asp:CompareValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtretypenameuser" Display="Dynamic" 
                ErrorMessage="Please enter retype name " ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
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
            <asp:Button ID="btnname" runat="server" onclick="btnname_Click" Text="Save" 
                Width="97px" BackColor="Black" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                Height="31px" />
        &nbsp;&nbsp;
            <asp:Button ID="btn" runat="server" BackColor="Black" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                onclick="btn_Click" Text="Cancel" CausesValidation="False" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

