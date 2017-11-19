<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.master" AutoEventWireup="true" CodeFile="createUser.aspx.cs" Inherits="Admin_createUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 17px;
        }
        .style8
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="3" style="color: #FFFFFF" align="left" class="style7">
            Create Admin Users!!!</td>
    </tr>
    <tr>
        <td align="left" class="style8" width="10%">
            Name</td>
        <td align="center" class="style8" width="2%">
            :</td>
        <td width="60%" class="style8">
            <asp:TextBox ID="txtname" runat="server" Width="295px" Height="28px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Please enter name" ForeColor="Red" 
                ControlToValidate="txtname" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="txtname" Display="Dynamic" 
                        ErrorMessage="Name in not valid" ForeColor="Red" 
                        ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style2" width="10%">
            Mobile&nbsp; No</td>
        <td align="center" class="style2" width="2%">
            :</td>
        <td width="60%">
            <asp:TextBox ID="txtmobileno" runat="server" Height="28px" Width="295px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ErrorMessage="Please enter Mobile no" ForeColor="Red" 
                ControlToValidate="txtmobileno" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                                runat="server" ControlToValidate="txtmobileno" Display="Dynamic" 
                                ErrorMessage="Mobile number is not valid" ForeColor="Red" 
                                ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style2" width="10%">
            Email ID</td>
        <td align="center" class="style2" width="2%">
            :</td>
        <td width="60%">
            <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="295px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtemail" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                Display="Dynamic">Please Enter Valid Email Address</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ErrorMessage="Please enter Email address" ForeColor="Red" 
                ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style2" width="10%">
            Photo</td>
        <td align="center" class="style2" width="2%">
            &nbsp;</td>
        <td width="60%">
            <asp:FileUpload ID="fuploadadmin" runat="server" Width="187px" />
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="Address Required!!!!" ForeColor="Red" 
                ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style2" width="10%">
            Password</td>
        <td align="center" class="style2" width="2%">
            :</td>
        <td width="60%">
            <asp:TextBox ID="txtpass" runat="server" Height="27px" Width="295px" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtpass" ErrorMessage="Please Enter Password" 
                ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style2" width="10%">
            Confirm Password</td>
        <td align="center" class="style2" width="2%">
            :</td>
        <td width="60%">
            <asp:TextBox ID="txtconfirm" runat="server" Height="28px" Width="295px" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtconfirm" ErrorMessage="Confirm Password is required" 
                ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtconfirm" 
                ErrorMessage="Password &amp; Confirm Password must be same" 
                ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
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
        <td align="left" class="style7" width="10%">
            </td>
        <td align="center" class="style7" width="2%">
            </td>
        <td width="60%" class="style7">
            </td>
    </tr>
    <tr>
        <td align="left" class="style2" width="10%">
            <asp:Label ID="lblsucess" runat="server" ForeColor="#009933"></asp:Label>
        </td>
        <td align="center" class="style2" width="2%">
            &nbsp;</td>
        <td width="60%">
            <asp:Button ID="btncreateuser" runat="server" Text="Create Admin User" 
                Width="169px" Height="36px" onclick="btncreateuser_Click" 
                BackColor="Black" Font-Bold="True" Font-Names="Times New Roman" 
                Font-Size="Medium" ForeColor="White" />
            &nbsp;&nbsp;
            <asp:Button ID="btnclear" runat="server" Height="34px" onclick="btnclear_Click" 
                Text="Clear" Width="67px" BackColor="Black" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                CausesValidation="False" />
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Delete" Visible="False" />
        </td>
    </tr>
</table>
</asp:Content>

