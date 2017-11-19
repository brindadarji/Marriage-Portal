<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="editeducation_user.aspx.cs" Inherits="editeducation_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                Highest Education</td>
            <td width="2%">
                :</td>
            <td>
                            <asp:TextBox ID="txthighesteducation" runat="server" Width="248px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td width="20%">
                Employee In</td>
            <td>
                :</td>
            <td>
                            <asp:RadioButtonList ID="rdbemployeein" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Government</asp:ListItem>
                                <asp:ListItem>Own Business</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                                <asp:ListItem>Nothing</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
        </tr>
        <tr>
            <td width="20%">
                Profession</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtprofession" runat="server" Width="250px"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td width="20%">
                Monthly Income</td>
            <td>
                :</td>
            <td>
                            <asp:TextBox ID="txtincome" runat="server" 
                                 Width="249px"></asp:TextBox>
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
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="28px" 
                    Width="84px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                    onclick="Button1_Click" Text="Cancel" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>

