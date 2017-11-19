<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="admin_show_admin_profile.aspx.cs" Inherits="admin_show_admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: large; color: #FF0000">
        Admin User Profile</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="217px" Width="240px">
            <Fields>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                         <ControlStyle Height="90px" Width="90px" />
                     </asp:ImageField>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                    SortExpression="EmailID" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" Visible="false" />
                <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" Visible="false"/>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
            SelectCommand="SELECT * FROM [Admin_create_user] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:SessionParameter Name="ID" SessionField="idadmin" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

