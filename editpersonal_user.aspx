<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="editpersonal_user.aspx.cs" Inherits="editpersonal_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 6%;
        }
        .style8
        {
            width: 1%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" __designer:mapid="47">
        <tr __designer:mapid="48">
            <td class="style7" __designer:mapid="49">
                &nbsp;</td>
            <td class="style8" __designer:mapid="4a">
                &nbsp;</td>
            <td width="35%" __designer:mapid="4b">
                <asp:Label ID="lbl" runat="server" ForeColor="#009900"></asp:Label>
            </td>
        </tr>
        <tr __designer:mapid="4d">
            <td class="style7" __designer:mapid="4e">
                            About Me</td>
            <td class="style8" __designer:mapid="4f">
                            :</td>
            <td __designer:mapid="50">
                <asp:TextBox ID="txtaboutme" runat="server" Height="65px" TextMode="MultiLine" 
                                Width="286px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="54">
            <td class="style7" __designer:mapid="55">
                            About My Partner</td>
            <td class="style8" __designer:mapid="56">
                            :</td>
            <td width="35%" __designer:mapid="57">
                <asp:TextBox ID="txtaboutpartner" runat="server" Height="48px" 
                                TextMode="MultiLine" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="5b">
            <td class="style7" __designer:mapid="5c">
                            Hobbies</td>
            <td class="style8" __designer:mapid="5d">
                            :</td>
            <td width="35%" __designer:mapid="5e">
                <asp:TextBox ID="txthobbbies" runat="server" Height="16px" Width="283px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="61">
            <td class="style7" __designer:mapid="62">
                            Height</td>
            <td class="style8" __designer:mapid="63">
                            :</td>
            <td width="35%" style="color: #0000FF" __designer:mapid="64">
                <asp:TextBox ID="txtheight" runat="server"></asp:TextBox>
                            &nbsp; [ for example&nbsp; 5&quot;2 ]</td>
        </tr>
        <tr __designer:mapid="67">
            <td class="style7" __designer:mapid="68">
                            Physical Injury</td>
            <td class="style8" __designer:mapid="69">
                            :</td>
            <td width="35%" __designer:mapid="6a">
                <asp:RadioButtonList ID="rdbphysical" runat="server" 
                                RepeatDirection="Horizontal">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr __designer:mapid="70">
            <td class="style7" __designer:mapid="71">
                            Complexion</td>
            <td class="style8" __designer:mapid="72">
                            :</td>
            <td width="35%" __designer:mapid="73">
                <asp:RadioButtonList ID="rdbcomplexion" runat="server" 
                                RepeatDirection="Horizontal">
                    <asp:ListItem>Fair</asp:ListItem>
                    <asp:ListItem>Very Fair</asp:ListItem>
                    <asp:ListItem>Wheatish</asp:ListItem>
                    <asp:ListItem>Wheatish Brown</asp:ListItem>
                    <asp:ListItem>Brown</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr __designer:mapid="7c">
            <td class="style7" __designer:mapid="7d">
                &nbsp;</td>
            <td class="style8" __designer:mapid="7e">
                &nbsp;</td>
            <td width="35%" __designer:mapid="7f">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="7c">
            <td class="style7" __designer:mapid="7d">
                &nbsp;</td>
            <td class="style8" __designer:mapid="7e">
                &nbsp;</td>
            <td width="35%" __designer:mapid="7f">
                <asp:Button ID="btn1" runat="server" onclick="btn1_Click" Text="Update" 
                    BackColor="Black" Font-Bold="True" Font-Names="Times New Roman" 
                    Font-Size="Medium" ForeColor="White" Height="24px" Width="108px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

