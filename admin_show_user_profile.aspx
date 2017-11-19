<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="admin_show_user_profile.aspx.cs" Inherits="admin_show_user_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style6">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Basic Detail</td>
                <td>
                    &nbsp;</td>
                <td>
                    Personal Detail</td>
            </tr>
            <tr>
                <td align="left" valign="top" width="45%">
        <asp:DetailsView ID="detailviewbasic" runat="server" AutoGenerateRows="False" 
            DataKeyNames="Registration_no" DataSourceID="SqlDataSource1" Height="50px" 
            Width="280px">
            <Fields>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                         <ControlStyle Height="90px" Width="90px" />
                        </asp:ImageField>
                <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                    ReadOnly="True" SortExpression="Registration_no"/>
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
                <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" Visible="false" />
                <asp:BoundField DataField="Religion" HeaderText="Religion" 
                    SortExpression="Religion" />
                <asp:BoundField DataField="Mother_tounge" HeaderText="Mother tounge" 
                    SortExpression="Mother_tounge" />
                <asp:BoundField DataField="Caste" HeaderText="Caste" SortExpression="Caste" />
                <asp:BoundField DataField="Maritial_status" HeaderText="Maritial status" 
                    SortExpression="Maritial_status" />
                <asp:BoundField DataField="Have_a_children" HeaderText="Have a children" 
                    SortExpression="Have_a_children" />
                <asp:BoundField DataField="Country_living_in" HeaderText="Country living in" 
                    SortExpression="Country_living_in" />
                <asp:BoundField DataField="Mobile_no" HeaderText="Mobile no" 
                    SortExpression="Mobile_no" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Fields>
        </asp:DetailsView>
                </td>
                <td width="2%">
                    &nbsp;</td>
                <td align="left" valign="top">
                    <asp:DetailsView ID="detailviewpersonal" runat="server" 
                        AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="288px" 
                        Width="280px">
                        <Fields>
                            <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                                SortExpression="Registration_no" />
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
                        SelectCommand="SELECT * FROM [user_personal] WHERE ([Registration_no] = @Registration_no2)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Registration_no2" SessionField="r" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Religious Detail</td>
                <td>
                    &nbsp;</td>
                <td>
                    Education Information</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="detailviewreligious" runat="server" 
                        AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="115px" 
                        Width="279px">
                        <Fields>
                            <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                                SortExpression="Registration_no" />
                            <asp:BoundField DataField="Birth_place" HeaderText="Birth place" 
                                SortExpression="Birth_place" />
                            <asp:BoundField DataField="Birth_time" HeaderText="Birth time" 
                                SortExpression="Birth_time" />
                            <asp:BoundField DataField="Rashi" HeaderText="Rashi" SortExpression="Rashi" />
                            <asp:BoundField DataField="Manglik" HeaderText="Manglik" 
                                SortExpression="Manglik" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                        SelectCommand="SELECT * FROM [user_religious] WHERE ([Registration_no] = @Registration_no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Registration_no" SessionField="r" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DetailsView ID="detailvieweducation" runat="server" 
                        AutoGenerateRows="False" DataSourceID="SqlDataSource4" Height="110px" 
                        Width="277px">
                        <Fields>
                            <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                                SortExpression="Registration_no" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                        SelectCommand="SELECT * FROM [user_education] WHERE ([Registration_no] = @Registration_no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Registration_no" SessionField="r" Type="String" />
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
                <td>
                    Location Information</td>
                <td>
                    &nbsp;</td>
                <td>
                    Other Information</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="detaillocation" runat="server" AutoGenerateRows="False" 
                        DataSourceID="SqlDataSource5" Height="107px" Width="277px">
                        <Fields>
                            <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                                SortExpression="Registration_no" />
                            <asp:BoundField DataField="Residing_state" HeaderText="Residing state" 
                                SortExpression="Residing_state" />
                            <asp:BoundField DataField="Residing_city" HeaderText="Residing city" 
                                SortExpression="Residing_city" />
                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                SortExpression="Address" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                        SelectCommand="SELECT * FROM [user_location] WHERE ([Registration_no] = @Registration_no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Registration_no" SessionField="r" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DetailsView ID="detailviewother" runat="server" AutoGenerateRows="False" 
                        DataSourceID="SqlDataSource6" Height="100px" Width="283px">
                        <Fields>
                            <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                                SortExpression="Registration_no" />
                            <asp:BoundField DataField="Question1" HeaderText="Question1" 
                                SortExpression="Question1" />
                            <asp:BoundField DataField="Answer1" HeaderText="Answer1" 
                                SortExpression="Answer1" />
                            <asp:BoundField DataField="Question2" HeaderText="Question2" 
                                SortExpression="Question2" />
                            <asp:BoundField DataField="Answer2" HeaderText="Answer2" 
                                SortExpression="Answer2" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                        SelectCommand="SELECT * FROM [user_otherinfo] WHERE ([Registration_no] = @Registration_no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Registration_no" SessionField="r" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Family informatioin</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="detailfamily" runat="server" AutoGenerateRows="False" 
                        DataSourceID="SqlDataSource7" Height="50px" Width="283px">
                        <Fields>
                            <asp:BoundField DataField="Registration_no" HeaderText="Registration no" 
                                SortExpression="Registration_no" />
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
                            <asp:BoundField DataField="Father_business" HeaderText="Father Profession" 
                                SortExpression="Father_business" />
                            <asp:BoundField DataField="Mother_business" HeaderText="Mother Profession" 
                                SortExpression="Mother_business" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                        SelectCommand="SELECT * FROM [user_family] WHERE ([Registration_no] = @Registration_no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Registration_no" SessionField="r" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
            SelectCommand="SELECT * FROM [user_detail] WHERE ([Registration_no] = @Registration_no)">
            <SelectParameters>
                <asp:SessionParameter Name="Registration_no" SessionField="r" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

