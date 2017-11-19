<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration1.aspx.cs" Inherits="Registration1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        height: 17px;
    }
        .style16
        {
            width: 2%;
        }
        .style17
        {
            width: 14%;
        }
        .style18
        {
            height: 17px;
        }
        .style19
        {
            width: 100%;
        }
        .style20
        {
        }
        .style21
        {
            width: 11px;
        }
        .style22
        {
            width: 305px;
        }
        .style23
        {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td width="20%">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/r4.jpg" />
        </td>
        <td width="2%" style="font-size: large; font-weight: bold; color: #FF0000">
                    REGISTRATION FORM</td>
        <td width="20%">
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
                    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
        <td>
            <asp:Label ID="lblinsert" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="Panel6" runat="server" GroupingText="Personal Information" 
                BorderColor="#9F0000" BorderStyle="Solid">
                <table class="style3">
                    <tr>
                        <td class="style17">
                            About Me</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtaboutme" runat="server" Height="65px" TextMode="MultiLine" 
                                Width="286px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtaboutme" Display="Dynamic" 
                                ErrorMessage="Please write something about you" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            About My Partner</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtaboutpartner" runat="server" Height="48px" 
                                TextMode="MultiLine" Width="283px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtaboutpartner" Display="Dynamic" 
                                ErrorMessage="Please write something about your Partner" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Hobbies</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txthobbbies" runat="server" Height="56px" Width="282px" 
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                ControlToValidate="txthobbbies" Display="Dynamic" 
                                ErrorMessage="Please write your hobbies" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Height</td>
                        <td class="style16">
                            :</td>
                        <td width="35%" style="color: #0000FF">
                            <asp:TextBox ID="txtheight" runat="server" Width="182px"></asp:TextBox>
                            &nbsp;<br /> &nbsp;[ for example&nbsp; 5&quot;2 ]</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                ControlToValidate="txtheight" Display="Dynamic" 
                                ErrorMessage="Please Enter your height" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Physical Injury</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:RadioButtonList ID="rdbphysical" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="rdbphysical" Display="Dynamic" 
                                ErrorMessage="Please select Physical Injury" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Complexion</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:RadioButtonList ID="rdbcomplexion" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Fair</asp:ListItem>
                                <asp:ListItem>Very Fair</asp:ListItem>
                                <asp:ListItem>Wheatish</asp:ListItem>
                                <asp:ListItem>Wheatish Brown</asp:ListItem>
                                <asp:ListItem>Brown</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="rdbcomplexion" Display="Dynamic" 
                                ErrorMessage="Please select complexion" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td width="35%">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="style18">
            </td>
        <td class="style18">
            </td>
        <td class="style18">
            </td>
        <td class="style18">
            </td>
    </tr>
    <tr>
        <td>
            </td>
        <td>
            </td>
        <td>
            </td>
        <td>
            </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="Panel7" runat="server" GroupingText="Location Information" 
                BorderColor="#9F0000" BorderStyle="Solid">
                <table class="style3">
                    <tr>
                        <td class="style17">
                            Residing State</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:DropDownList ID="dropstate" runat="server" Height="16px" Width="257px" 
                                AutoPostBack="True" onselectedindexchanged="dropstate_SelectedIndexChanged">
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
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtstate" runat="server" Visible="False" Width="218px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Residing City</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtcity" runat="server" Width="254px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="Please enter city" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                runat="server" ControlToValidate="txtcity" Display="Dynamic" 
                                ErrorMessage="City information is not proper" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z].*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Address</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtaddress" runat="server" Height="63px" TextMode="MultiLine" 
                                Width="256px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                ControlToValidate="txtaddress" Display="Dynamic" 
                                ErrorMessage="Please enter Your proper address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="Panel8" runat="server" GroupingText="Religious Information" 
                BorderColor="#9F0000" BorderStyle="Solid">
                <table class="style3">
                    <tr>
                        <td class="style17">
                            Birth Place</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtbirthplace" runat="server" Width="258px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtbirthplace" Display="Dynamic" 
                                ErrorMessage="Please enter birth place" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                runat="server" ControlToValidate="txtbirthplace" Display="Dynamic" 
                                ErrorMessage="Birth place is not in valid format" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Birth Time</td>
                        <td class="style16">
                            :</td>
                        <td width="35%" style="color: #000080">
                            <asp:TextBox ID="txtbirthtime" runat="server" Width="257px"></asp:TextBox>
                            &nbsp;<br /> [24 Hour Format like 14:00:00]</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtbirthtime" Display="Dynamic" 
                                ErrorMessage="Please enter Birth time" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Rashi</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:DropDownList ID="droprashi" runat="server" Height="16px" Width="147px">
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
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Manglik</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:RadioButtonList ID="rdbmanglik" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="rdbmanglik" Display="Dynamic" 
                                ErrorMessage="Please select Manglik" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="Panel9" runat="server" GroupingText="Education &amp; Profession" 
                BorderColor="#9F0000" BorderStyle="Solid">
                <table class="style3">
                    <tr>
                        <td class="style17">
                            Highest Education</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            &nbsp;
                            <asp:TextBox ID="txthighesteducation" runat="server" Width="248px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                ControlToValidate="txthighesteducation" Display="Dynamic" 
                                ErrorMessage="Please enter Highest education" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Employee In</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:RadioButtonList ID="rdbemployeein" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Government</asp:ListItem>
                                <asp:ListItem>Own Business</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                                <asp:ListItem>Nothing</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="rdbemployeein" Display="Dynamic" 
                                ErrorMessage="Please select Employee In" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Profession</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtprofession" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtprofession" Display="Dynamic" 
                                ErrorMessage="Please enter profession" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                ControlToValidate="txtprofession" Display="Dynamic" 
                                ErrorMessage="Profession is not in valid format" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Monthly Income</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtincome" runat="server" 
                                 Width="249px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtincome" Display="Dynamic" 
                                ErrorMessage="Please enter monthly Income" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                                runat="server" ControlToValidate="txtincome" Display="Dynamic" 
                                ErrorMessage="Please enter proper monthly income" ForeColor="Red" 
                                ValidationExpression="^[0-9]*[^a-zA-z.,?/&quot;'@#$%&amp;()}{][&lt;&gt;~`]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td width="35%">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="Panel10" runat="server" GroupingText="Family Information" 
                BorderColor="#9F0000" BorderStyle="Solid">
                <table class="style3">
                    <tr>
                        <td class="style17">
                            Father Name</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtfather" runat="server" Width="246px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtfather" Display="Dynamic" 
                                ErrorMessage="Please enter Father name" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                                runat="server" ControlToValidate="txtfather" Display="Dynamic" 
                                ErrorMessage="Father name in not valid" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Mother Name</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtmother" runat="server" Width="245px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="txtmother" Display="Dynamic" 
                                ErrorMessage="Please enter mother name" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                                runat="server" ControlToValidate="txtmother" Display="Dynamic" 
                                ErrorMessage="Mother name in not valid" ForeColor="Red" 
                                ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            No. Of Brothers</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
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
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            No. of Sisters</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
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
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Father Contact No.</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtfathercontact" runat="server" Width="243px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="txtfathercontact" Display="Dynamic" 
                                ErrorMessage="Please enter Father contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                                runat="server" ControlToValidate="txtfathercontact" Display="Dynamic" 
                                ErrorMessage="Father Contact number is not valid" ForeColor="Red" 
                                ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Family Status</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:RadioButtonList ID="rdbfamilystatus" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Lower class</asp:ListItem>
                                <asp:ListItem>Middle Class</asp:ListItem>
                                <asp:ListItem>Rich</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="rdbfamilystatus" Display="Dynamic" 
                                ErrorMessage="Please select family status" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Father Profession</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtfatherbusiness" runat="server" Width="238px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ControlToValidate="txtfatherbusiness" Display="Dynamic" 
                                ErrorMessage="Please enter father business" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            Mother Profession</td>
                        <td class="style16">
                            :</td>
                        <td width="35%">
                            <asp:TextBox ID="txtmotherbusiness" runat="server" Width="236px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txtmotherbusiness" Display="Dynamic" 
                                ErrorMessage="Please enter mother business" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
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
                                    &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="Panel11" runat="server" GroupingText="Other Information" 
                BorderColor="#CC0000" BorderStyle="Solid">
                <table class="style19">
                    <tr>
                        <td class="style20" colspan="4" style="color: #000080">
                            Please Add your questions and answers for your account security<br /> For 
                            EXAMPLE [ Which is your Favourite Color?]</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Favourite Question 1</td>
                        <td class="style21">
                            :</td>
                        <td class="style22">
                            <asp:TextBox ID="txtque1" runat="server" Width="299px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                ControlToValidate="txtque1" Display="Dynamic" 
                                ErrorMessage="Please enter Question 1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Answer of Question 1</td>
                        <td class="style21">
                            :</td>
                        <td class="style22">
                            <asp:TextBox ID="txtans1" runat="server" Width="299px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                ControlToValidate="txtans1" Display="Dynamic" 
                                ErrorMessage="Please enter Answer 1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Favourite Question 2</td>
                        <td class="style21">
                            :</td>
                        <td class="style22">
                            <asp:TextBox ID="txtque2" runat="server" Width="299px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                ControlToValidate="txtque2" Display="Dynamic" 
                                ErrorMessage="Please enter Question 2" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            Answer of Question 2</td>
                        <td class="style21">
                            :</td>
                        <td class="style22">
                            <asp:TextBox ID="txtans2" runat="server" Width="299px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                ControlToValidate="txtans2" Display="Dynamic" 
                                ErrorMessage="Please enter Answer 2" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            &nbsp;</td>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
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
                                    <asp:Button ID="btnregistration1" runat="server" 
                Font-Bold="True" Text="Register" 
                                        Width="171px" onclick="btnregistration1_Click" BackColor="Black" 
                                        Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" 
                                        Height="27px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                onclick="Button1_Click" Text="Delete" Visible="False" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

