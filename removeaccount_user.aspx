<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="removeaccount_user.aspx.cs" Inherits="removeaccount_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style7
        {
            height: 17px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7" 
                style="font-size: medium; font-weight: lighter; color: #0033CC">
                If you remove account then you will never again open this account....</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnremove" runat="server" Text="Remove" 
                    
                    OnClientClick="return confirm('Are you sure you want to Remove your Account?')"  
                    onclick="btnremove_Click" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="29px" 
                    Width="84px"/>
&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="Cancel" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="25px" 
                    Width="76px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

