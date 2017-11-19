<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="editprofile_admin.aspx.cs" Inherits="editprofile_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3" style="color: #FFFFFF" align="left" class="style7">
            Create Admin Users!!!<asp:Label ID="lblsucess" runat="server" ForeColor="#009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
            Name</td>
            <td align="center" class="style2" width="2%">
            :</td>
            <td width="60%">
                <asp:TextBox ID="txtname" runat="server" Width="295px" Height="28px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
                Mobile&nbsp; No</td>
            <td align="center" class="style2" width="2%">
            :</td>
            <td width="60%">
                <asp:TextBox ID="txtmobileno" runat="server" Height="28px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style7" width="10%">
            Email ID</td>
            <td align="center" class="style7" width="2%">
            :</td>
            <td width="60%" class="style7">
                <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
            Address</td>
            <td align="center" class="style2" width="2%">
            :</td>
            <td width="60%">
                <asp:TextBox ID="txtaddress" runat="server" Height="28px" TextMode="MultiLine" 
                Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
                &nbsp;</td>
            <td align="center" class="style2" width="2%">
                &nbsp;</td>
            <td width="60%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
                &nbsp;</td>
            <td align="center" class="style2" width="2%">
                &nbsp;</td>
            <td width="60%">
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                Width="129px" Height="29px" onclick="btncreateuser_Click" BackColor="Black" 
                    Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" 
                    ForeColor="White" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
            &nbsp;</td>
            <td align="center" class="style2" width="2%">
            &nbsp;</td>
            <td width="60%">
            &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
            &nbsp;</td>
            <td align="center" class="style2" width="2%">
            &nbsp;</td>
            <td width="60%">
            &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style2" width="10%">
                &nbsp;</td>
            <td align="center" class="style2" width="2%">
            &nbsp;</td>
            <td width="60%">
        &nbsp;</td>
        </tr>
    </table>
</asp:Content>

