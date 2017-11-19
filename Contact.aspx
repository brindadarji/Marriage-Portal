<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
        }
        .style17
        {
            color: #FF0000;
            font-weight: bold;
            font-size: x-large;
        }
.Te-6 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-style: normal;
	line-height: 1.3em;
	font-weight: normal;
	font-variant: normal;
	text-transform: none;
	color: #000000;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td width="10%">
                <asp:Image ID="Image2" runat="server" Height="50px" 
                    ImageUrl="~/img/contact.bmp" Width="50px" />
            </td>
            <td class="style17">
                Contact Us</td>
            <td width="20%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10%">
                &nbsp;</td>
            <td>
                <table bgcolor="White" border="0" class="style16">
                    <tr>
                        <td width="10%">
                            <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/img/home.png" 
                                Width="50px" />
                        </td>
                        <td width="15%">
                            Address</td>
                        <td>
                            107, World Trade Center, Beside Empire State Building,<br />
                            &nbsp;&nbsp;Mandarwaja, Ring Road, Surat-395002, Gujarat(India).</td>
                    </tr>
                    <tr>
                        <td width="10%">
                            <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/img/phone.png" 
                                Width="50px" />
                        </td>
                        <td width="15%">
                            Phone No</td>
                        <td>
                            + 91 9227912777</td>
                    </tr>
                    <tr>
                        <td width="10%">
                            <asp:Image ID="Image5" runat="server" Height="50px" 
                                ImageUrl="~/img/customers.png" Width="50px" />
                        </td>
                        <td width="15%">
                            Customer Care</td>
                        <td>
                            <span class="Te-6">+91 90993 17777 +91 90993 27777</span></td>
                    </tr>
                    <tr>
                        <td width="10%">
                            <asp:Image ID="Image6" runat="server" Height="50px" 
                                ImageUrl="~/img/receptionist.png" Width="50px" />
                        </td>
                        <td width="15%">
                            Support</td>
                        <td>
                            +91922707 1777</td>
                    </tr>
                    <tr>
                        <td width="10%">
                            <asp:Image ID="Image7" runat="server" Height="50px" 
                                ImageUrl="~/img/WebSites.png" Width="50px" />
                        </td>
                        <td width="15%">
                            Website</td>
                        <td>
                            <span class="Te-6">&nbsp;www.bmantrasoftware.com</span></td>
                    </tr>
                    <tr>
                        <td width="10%">
                            <asp:Image ID="Image8" runat="server" Height="50px" 
                                ImageUrl="~/img/email_open.png" Width="50px" />
                        </td>
                        <td width="15%">
                            Email</td>
                        <td>
                            <span class="Te-6">bmantrasoftware777@gmail.com</span></td>
                    </tr>
                </table>
            </td>
            <td width="20%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="20%">
                &nbsp;</td>
        </tr>
    </table>
   </asp:Content>

