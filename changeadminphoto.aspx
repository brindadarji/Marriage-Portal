<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="changeadminphoto.aspx.cs" Inherits="changeadminphoto" %>

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
                <asp:Label ID="lblchangephoto" runat="server" Font-Italic="True" 
                    ForeColor="#009900"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Your Old Photo is</td>
            <td>
                :</td>
            <td>
                <asp:Image ID="imgoldphoto" runat="server" Height="70px" Width="70px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                New Photo</td>
            <td>
                :</td>
            <td>
                <asp:FileUpload ID="fuploadnewphoto" runat="server" />
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
                <asp:Button ID="btnchangephoto" runat="server" onclick="btnchangephoto_Click" 
                    Text="Save" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    Width="80px" />
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

