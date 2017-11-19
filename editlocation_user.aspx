<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="editlocation_user.aspx.cs" Inherits="editlocation_user" %>

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
            <td width="20%">
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Residing State</td>
            <td>
                :</td>
            <td>
                            <asp:DropDownList ID="dropstate" runat="server" Height="16px" 
                    Width="257px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Andaman &amp; Nicobar</asp:ListItem>
                                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                <asp:ListItem>Assam</asp:ListItem>
                                <asp:ListItem>Bihar</asp:ListItem>
                                <asp:ListItem>Chandigarh</asp:ListItem>
                                <asp:ListItem>Chhattisgarh</asp:ListItem>
                                <asp:ListItem>Dadra &amp; Nagar Haveli</asp:ListItem>
                                <asp:ListItem>Daman &amp; Diu</asp:ListItem>
                                <asp:ListItem>Delhi</asp:ListItem>
                                <asp:ListItem>Goa</asp:ListItem>
                                <asp:ListItem>Gujarat</asp:ListItem>
                                <asp:ListItem>Haryana</asp:ListItem>
                                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                                <asp:ListItem>Jharkand</asp:ListItem>
                                <asp:ListItem>Karnataka</asp:ListItem>
                                <asp:ListItem>Kerala</asp:ListItem>
                                <asp:ListItem>Lakshadeep</asp:ListItem>
                                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                <asp:ListItem>Maharashtra</asp:ListItem>
                                <asp:ListItem>Manipur</asp:ListItem>
                                <asp:ListItem>Meghalaya</asp:ListItem>
                                <asp:ListItem>Mizoram</asp:ListItem>
                                <asp:ListItem>Nagaland</asp:ListItem>
                                <asp:ListItem>Orissa</asp:ListItem>
                                <asp:ListItem>Pondicherry</asp:ListItem>
                                <asp:ListItem>Punjab</asp:ListItem>
                                <asp:ListItem>Rajasthan</asp:ListItem>
                                <asp:ListItem>Sikkim</asp:ListItem>
                                <asp:ListItem>Tamil Nadu</asp:ListItem>
                                <asp:ListItem>Tripura</asp:ListItem>
                                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                <asp:ListItem>Uttaranchal</asp:ListItem>
                                <asp:ListItem>West Bengal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
        </tr>
        <tr>
            <td>
                Residing City</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtcity" runat="server" Width="254px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                Address</td>
            <td class="style7">
                :</td>
            <td class="style7">
                            <asp:TextBox ID="txtaddress" runat="server" Height="63px" TextMode="MultiLine" 
                                Width="256px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
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
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="25px" 
                    Width="101px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

