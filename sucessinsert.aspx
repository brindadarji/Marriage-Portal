﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="sucessinsert.aspx.cs" Inherits="sucessinsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="right" style="width: 45%">
                <table class="style1">
                    <tr>
                        <td align="left" class="style2" dir="ltr" width="20%">
                            Photo</td>
                        <td align="left" class="style2" width="2%">
                            :</td>
                        <td align="left" class="style2" width="30%">
                            <asp:FileUpload ID="fuploadsucess" runat="server" />
                            &nbsp;&nbsp;&nbsp;
                            <%--<asp:Button ID="btnsuccessupload" runat="server" 
                                onclick="btnsuccessupload_Click" Text="Upload" CausesValidation="False" />--%>
                        </td>
                        <td align="left" class="style2">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style7">
                            Bride Name</td>
                        <td align="left" class="style7">
                            :</td>
                        <td align="left" width="30%" class="style7">
                            <asp:TextBox ID="txtbride" runat="server" Width="140px"></asp:TextBox>
                        </td>
                        <td align="left" class="style7">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtbride" Display="Dynamic" 
                                ErrorMessage="Please enter bride name" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                                runat="server" ControlToValidate="txtbride" Display="Dynamic" 
                                ErrorMessage="bride name in not valid" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Groom Name</td>
                        <td align="left">
                            :</td>
                        <td align="left" width="30%">
                            <asp:TextBox ID="txtgroom" runat="server" Width="143px"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtgroom" ErrorMessage="Please enter Groom name" 
                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                                runat="server" ControlToValidate="txtgroom" Display="Dynamic" 
                                ErrorMessage="groom name in not valid" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Description</td>
                        <td align="left">
                            :</td>
                        <td align="left" width="30%">
                            <asp:TextBox ID="txtdescription" runat="server" Height="94px" 
                                TextMode="MultiLine" Width="217px"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtdescription" 
                                ErrorMessage="Please enter Something about your success story" 
                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" width="30%">
                            <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                                Text="Submit" Width="114px" BackColor="Black" Font-Bold="True" 
                                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                                Height="31px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" 
                                Height="32px" Width="75px" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" width="30%">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
