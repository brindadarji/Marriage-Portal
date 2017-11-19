<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="viewprofile_user.aspx.cs" Inherits="viewprofile_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td width="45%">
                * * * *
                Basic Information * * * *</td>
            <td width="5%">
                &nbsp;</td>
            <td width="50%">
                * * * *
                Personal Information * * * *<br />
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:DetailsView ID="Detailsbasic" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource1" Height="50px" Width="300px">
                    <Fields>
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Photo" HeaderText="Photo" 
                            SortExpression="Photo" Visible="false" />
                        <asp:BoundField DataField="Profile_created_by" HeaderText="Profile created by" 
                            SortExpression="Profile_created_by" />
                        <asp:BoundField DataField="First_name" HeaderText="First name" 
                            SortExpression="First_name" />
                        <asp:BoundField DataField="Middle_name" HeaderText="Middle name" 
                            SortExpression="Middle_name" />
                        <asp:BoundField DataField="Last_name" HeaderText="Last name" 
                            SortExpression="Last_name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Date_of_birth" HeaderText="Date of birth" 
                            SortExpression="Date_of_birth" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Religion" HeaderText="Religion" 
                            SortExpression="Religion" />
                        <asp:BoundField DataField="Mother_tounge" HeaderText="Mother tounge" 
                            SortExpression="Mother_tounge" />
                        <asp:BoundField DataField="Caste" HeaderText="Cast" SortExpression="Caste" />
                        <asp:BoundField DataField="Maritial_status" HeaderText="Maritial status" 
                            SortExpression="Maritial_status" />
                        <asp:BoundField DataField="Have_a_children" HeaderText="Have a children" 
                            SortExpression="Have_a_children" />
                        <asp:BoundField DataField="Country_living_in" HeaderText="Country living in" 
                            SortExpression="Country_living_in" />
                        <asp:BoundField DataField="Mobile_no" HeaderText="Mobile no" 
                            SortExpression="Mobile_no" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT [Profile_created_by], [First_name], [Middle_name], [Last_name], [Gender], [Date_of_birth], [Age], [Religion],[Photo], [Mother_tounge], [Caste], [Maritial_status], [Have_a_children], [Country_living_in], [Mobile_no], [Email] FROM [user_detail] WHERE ([Email] = @Email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Email" SessionField="loginemail" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td valign="top">
                <asp:DetailsView ID="Detailspersonal" runat="server" Height="50px" Width="300px" 
                    AutoGenerateRows="False" DataSourceID="SqlDataSource2">
                    <Fields>
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                            SortExpression="Registration_no" Visible="false"/>
                        <asp:BoundField DataField="About_Me" HeaderText="About Me" 
                            SortExpression="About_Me" />
                        <asp:BoundField DataField="About_partner" HeaderText="About partner" 
                            SortExpression="About_partner" />
                        <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" 
                            SortExpression="Hobbies" />
                        <asp:BoundField DataField="Height" HeaderText="Height" 
                            SortExpression="Height" />
                        <asp:BoundField DataField="Physical_injury" HeaderText="Physical injury" 
                            SortExpression="Physical_injury" />
                        <asp:BoundField DataField="Complexion" HeaderText="Complexion" 
                            SortExpression="Complexion" />
                    </Fields>

                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    
                    SelectCommand="SELECT [Registration_no], [About_Me], [About_partner], [Hobbies], [Height], [Physical_injury], [Complexion] FROM [user_personal] WHERE ([Registration_no] = @Registration_no2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Registration_no2" SessionField="rno" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                * * * *
                Education and profession information * * * *<br />
                <br />
                <asp:DetailsView ID="Detailseducation" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource7" Height="50px" Width="300px">
                    <Fields>
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration_no" 
                            SortExpression="Registration_no" Visible="false"/>
                        <asp:BoundField DataField="Highest_education" HeaderText="Highest education" 
                            SortExpression="Highest_education" />
                        <asp:BoundField DataField="Employee_in" HeaderText="Employee in" 
                            SortExpression="Employee_in" />
                        <asp:BoundField DataField="Profession" HeaderText="Profession" 
                            SortExpression="Profession" />
                        <asp:BoundField DataField="Monthly_income" HeaderText="Monthly income" 
                            SortExpression="Monthly_income" />
                    </Fields>
                </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [user_education] WHERE ([Registration_no] = @Registration_no)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Registration_no" SessionField="rno" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                * * * *
                Location Information * * * *<br />
            </td>
            <td>
                &nbsp;</td>
            <td valign="top">
                &nbsp; * * * *
                Family Information * * * *</td>
        </tr>
        <tr>
            <td valign="top">
                <asp:DetailsView ID="Detailslocation" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource3" Height="50px" Width="300px">
                    <Fields>
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration_no" 
                            SortExpression="Registration_no" Visible="false"/>
                        <asp:BoundField DataField="Residing_state" HeaderText="State" 
                            SortExpression="Residing_state" />
                        <asp:BoundField DataField="Residing_city" HeaderText="City" 
                            SortExpression="Residing_city" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT * FROM [user_location] WHERE ([Registration_no] = @Registration_no)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Registration_no" SessionField="rno" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                * * * *
                Religious Information * * * *<br />
                <br />
                <asp:DetailsView ID="Detailsreligious" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource5" Height="50px" Width="300px">
                    <Fields>
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration_no" 
                            SortExpression="Registration_no" Visible="false" />
                        <asp:BoundField DataField="Birth_place" HeaderText="Birth place" 
                            SortExpression="Birth_place" />
                        <asp:BoundField DataField="Birth_time" HeaderText="Birth time" 
                            SortExpression="Birth_time" />
                        <asp:BoundField DataField="Rashi" HeaderText="Rashi" SortExpression="Rashi" />
                        <asp:BoundField DataField="Manglik" HeaderText="Manglik" 
                            SortExpression="Manglik" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource6" Height="50px" Width="300px">
                    <Fields>
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration_no" 
                            SortExpression="Registration_no" Visible="false" />
                        <asp:BoundField DataField="Father_name" HeaderText="Father name" 
                            SortExpression="Father_name" />
                        <asp:BoundField DataField="Mother_name" HeaderText="Mother name" 
                            SortExpression="Mother_name" />
                        <asp:BoundField DataField="No_of_brothers" HeaderText="No of brothers" 
                            SortExpression="No_of_brothers" />
                        <asp:BoundField DataField="No_of_sisters" HeaderText="No of sisters" 
                            SortExpression="No_of_sisters" />
                        <asp:BoundField DataField="Father_contact_no" HeaderText="Father contact no" 
                            SortExpression="Father_contact_no" />
                        <asp:BoundField DataField="Family_status" HeaderText="Family status" 
                            SortExpression="Family_status" />
                        <asp:BoundField DataField="Father_business" HeaderText="Father business" 
                            SortExpression="Father_business" />
                        <asp:BoundField DataField="Mother_business" HeaderText="Mother business" 
                            SortExpression="Mother_business" />
                    </Fields>
                </asp:DetailsView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT * FROM [user_family] WHERE ([Registration_no] = @Registration_no)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Registration_no" SessionField="rno" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
            <td valign="top">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT * FROM [user_religious] WHERE ([Registration_no] = @Registration_no)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Registration_no" SessionField="rno" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

