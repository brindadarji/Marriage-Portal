<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="editfamily_user.aspx.cs" Inherits="editfamily_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 20%;
        }
        .style8
        {
            width: 20%;
            height: 17px;
        }
        .style9
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Father name</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtfather" runat="server" Width="246px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                Mother name</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtmother" runat="server" Width="245px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                No of Brothers</td>
            <td>
                :</td>
            <td>
                            <asp:DropDownList ID="drpnoofbrothers" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                No of Sisters</td>
            <td>
                :</td>
            <td>
                            <asp:DropDownList ID="drpnoofsister" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </td>
        </tr>
        <tr>
            <td class="style8">
                Father Contact No</td>
            <td class="style9">
                :</td>
            <td class="style9">
                            <asp:TextBox ID="txtfathercontact" runat="server" Width="243px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                Family Status</td>
            <td>
                :</td>
            <td>
                            <asp:RadioButtonList ID="rdbfamilystatus" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Lower class</asp:ListItem>
                                <asp:ListItem>Middle Class</asp:ListItem>
                                <asp:ListItem>Rich</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                Father Profession</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtfatherbusiness" runat="server" Width="238px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                Mother Profession</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtmotherbusiness" runat="server" Width="236px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    Text="Update" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="34px" 
                    Width="103px" />
            &nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Traditional Arabic" Font-Size="Medium" ForeColor="White" 
                    Height="31px" Text="Cancel" Width="71px" CausesValidation="False" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

