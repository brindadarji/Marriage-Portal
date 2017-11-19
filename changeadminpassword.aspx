<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="changeadminpassword.aspx.cs" Inherits="Admin_changeadminpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 100%;
        }
    .style9
    {
        color: #FF0000;
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 11px;
    }
    .style11
    {
        color: #FFFFFF;
        font-size: medium;
        font-family: Calibri;
    }
    .style12
    {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: large;
        color: #FFFFFF;
    }
    .style13
    {
        font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 11px;
        color: #FFFFFF;
    }
        .style14
        {
            height: 25px;
        }
        .style15
        {
            color: #FFFFFF;
            font-size: medium;
            font-family: Calibri;
            height: 25px;
        }
        .style16
        {
            color: #FFFFFF;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
    <tr>
        <td align="left" class="style12" colspan="3" 
            style="font-color: #000000; color: #800000;">
            Change Your Password!!!!!!</td>
        <td align="left" class="style12" style="font-color: #000000; color: #800000;">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style11" style="color: #000000;" width="15%">
            &nbsp;</td>
        <td align="center" class="style13" style="font-color: #000000;" width="10px">
            &nbsp;</td>
        <td align="left" class="style9" style="font-color: #000000;" width="280px">
            <asp:Label ID="lblchangepass" runat="server" ForeColor="#009900"></asp:Label>
        </td>
        <td align="left" class="style9" style="font-color: #000000;" width="280px">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style11" style="color: #000000;" width="15%">
          Old  Password</td>
        <td align="center" class="style13" style="font-color: #000000;" width="10px">
            :</td>
        <td align="left" class="style9" style="font-color: #000000;" width="280px">
            <asp:TextBox ID="txtpass" runat="server" Height="23px" TextMode="Password" 
                Width="240px"></asp:TextBox>
            </td>
        <td align="left" class="style9" style="font-color: #000000;" width="280px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtpass" Display="Dynamic" 
                ErrorMessage="Please enter Old Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style11" width="15%" style="color: #000000">
            New Password</td>
        <td align="center" class="style2" width="10px">
            :</td>
        <td align="left" style="color: #FF0000" width="280px">
            <asp:TextBox ID="txtnewpass" runat="server" Height="23px" TextMode="Password" 
                Width="240px"></asp:TextBox>
            </td>
        <td align="left" style="color: #FF0000" width="280px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtnewpass" Display="Dynamic" 
                ErrorMessage="Please enter New Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style11" width="15%" style="color: #000000">
            Confirm Password</td>
        <td align="center" class="style2" width="10px">
            :</td>
        <td align="left" style="color: #FF0000" width="280px">
            <asp:TextBox ID="txtconfirm" runat="server" Height="23px" TextMode="Password" 
                Width="240px"></asp:TextBox>
            </td>
        <td align="left" style="color: #FF0000" width="280px">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnewpass" ControlToValidate="txtconfirm" 
                ErrorMessage="Password &amp; confirm Password must be match" 
                ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtconfirm" Display="Dynamic" 
                ErrorMessage="Please enter confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style15" width="15%" style="color: #000000">
            </td>
        <td align="center" class="style16" width="10px">
            </td>
        <td align="left" width="280px" class="style14">
            &nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" width="280px" class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style11" width="15%" style="color: #000000">
            &nbsp;</td>
        <td align="center" width="10px">
            &nbsp;</td>
        <td align="left" width="280px">
            <asp:Button ID="btnchange" runat="server" Text="Change Password" 
                Width="150px" Height="29px" onclick="btnchange_Click" BackColor="Black" 
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" 
                ForeColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                Text="Cancel" Height="29px" Width="73px" BackColor="Black" 
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" 
                ForeColor="White" CausesValidation="False" />
        </td>
        <td align="left" width="280px">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

