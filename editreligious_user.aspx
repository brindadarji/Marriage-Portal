<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="editreligious_user.aspx.cs" Inherits="editreligious_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="20%">
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%">
                Birth Place</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtbirthplace" runat="server" Width="258px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7" width="20%">
                Birth Time</td>
            <td class="style7">
                :</td>
            <td class="style7">
                            <asp:TextBox ID="txtbirthtime" runat="server" Width="257px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td width="20%">
                Rashi</td>
            <td>
                :</td>
            <td>
                            <asp:DropDownList ID="droprashi" runat="server" Height="16px" 
                    Width="147px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Aries</asp:ListItem>
                                <asp:ListItem>Taurus</asp:ListItem>
                                <asp:ListItem>Gemini</asp:ListItem>
                                <asp:ListItem>Cancer</asp:ListItem>
                                <asp:ListItem>Leo</asp:ListItem>
                                <asp:ListItem>Virgo</asp:ListItem>
                                <asp:ListItem>Libra</asp:ListItem>
                                <asp:ListItem>Scorpio</asp:ListItem>
                                <asp:ListItem>Saggittarius</asp:ListItem>
                                <asp:ListItem>Capricorn</asp:ListItem>
                                <asp:ListItem>Aquarius</asp:ListItem>
                                <asp:ListItem>Pisces</asp:ListItem>
                            </asp:DropDownList>
                        </td>
        </tr>
        <tr>
            <td width="20%">
                Manglik</td>
            <td>
                :</td>
            <td>
                            <asp:RadioButtonList ID="rdbmanglik" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
        </tr>
        <tr>
            <td width="20%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="26px" 
                    Width="111px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

