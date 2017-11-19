<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="viewprofile_admin.aspx.cs" Inherits="viewprofile_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px">
        <Fields>
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" Visible="false" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="ConfirmPassword" HeaderText="ConfirmPassword" 
                SortExpression="ConfirmPassword" Visible="false"/>
            <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" Visible="false" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
        
        SelectCommand="SELECT * FROM [Admin_create_user] WHERE ([EmailID] = @EmailID)">
        <SelectParameters>
            <asp:SessionParameter Name="EmailID" SessionField="loginemail" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

