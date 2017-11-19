<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgetpasswordque.aspx.cs" Inherits="Forgetpasswordque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
        }
        .style17
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td width="30%">
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td width="30%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="30%">
                Question1</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblque1" runat="server"></asp:Label>
            </td>
            <td width="30%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Answer</td>
            <td class="style17" width="2%">
                :</td>
            <td class="style17">
                <asp:TextBox ID="txtanswer1" runat="server" Width="327px"></asp:TextBox>
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style17">
                Question2</td>
            <td class="style17" width="2%">
                :</td>
            <td class="style17">
                <asp:Label ID="lblque2" runat="server"></asp:Label>
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td>
                Answer</td>
            <td width="2%">
                :</td>
            <td>
                <asp:TextBox ID="txtanswer2" runat="server" Width="321px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td width="2%">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsubmitanswer" runat="server" onclick="btnsubmitanswer_Click" 
                    Text="Submit " BackColor="Black" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="28px" 
                    Width="101px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

