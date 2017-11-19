<%@ Page Title="" Language="C#" MasterPageFile="~/user_panel_MasterPage.master" AutoEventWireup="true" CodeFile="home_user.aspx.cs" Inherits="home_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .style7
        {
            text-align: justify;
        }
        .style8
        {
            width: 897px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr><td class="style8" 
        style="font-size: large; font-weight: bold; color: #FF0000; font-family: 'MS Sans Serif'">
               <marquee dir="rtl">A Successfull marriage requires falling in love many times always with the same  Person</marquee></td></tr>
</table>
   <table class="style6">
        <tr>
            <td width="25%" rowspan="3" valign="top">
            <marquee  direction="up" truespeed="truespeed" scrollamount="2" scrolldelay="50" loop="-1" onmousemove="this.scrollAmount=0" onmouseout="this.scrollAmount=2">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    Width="200px" BorderColor="#ff0000" BorderStyle="Solid">
                    <ItemTemplate>
                        <table  class="style1" style="height: 49px; width: 101%">
                            <tr>
                                
                                
                                <td align="center">
                                    <asp:Image ID="Image2" runat="server" Height="90px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="90px" />
                                </td>
                            </tr>
                            <tr>
                                
                                
                                <td align="center">
                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                
                               
                                <td align="center">
                                    <asp:Label ID="lblage" runat="server" Text='<%# Eval("Age") %>'></asp:Label> Year
                                </td>
                            </tr>
                            <tr>
                                
                                <td align="center">
                                    <asp:Label ID="lblcity" runat="server" Text='<%# Eval("Country_living_in") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
               <%-- </marquee>--%>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT [Photo],[First_name],[Age],[Gender],[Country_living_in] FROM [user_detail] Where [Gender]=@Gender">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Male" Name="Gender" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource></td>
            <td style="color: #FF0000; font-weight: bold; font-size: large">
               &nbsp;</td>
            <td width="25%" align="left" rowspan="3" valign="top">
            <marquee  direction="up" truespeed="truespeed" scrollamount="2" scrolldelay="50" loop="-1" onmousemove="this.scrollAmount=0" onmouseout="this.scrollAmount=2">
                <asp:DataList ID="Datafemale" runat="server" DataSourceID="SqlDataSource2" 
                    Width="200px" BorderColor="Red" BorderStyle="Solid">
                    <ItemTemplate>
                        <table class="style1" style="height: 49px; width: 101%">
                            <tr>
                               
                                <td align="center">
                                    <asp:Image ID="Image2" runat="server" Height="90px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="90px" />
                                </td>
                            </tr>
                            <tr>
                               
                                <td align="center">
                                    <asp:Label ID="lblname1" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                
                                <td align="center">
                                    <asp:Label ID="lblage" runat="server" Text='<%# Eval("Age") %>'></asp:Label> Year
                                </td>
                            </tr>
                            <tr>
                                
                                <td align="center">
                                    <asp:Label ID="lblcountry" runat="server" 
                                        Text='<%# Eval("Country_living_in") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT [First_name], [Gender], [Age], [Photo], [Country_living_in] FROM [user_detail] WHERE ([Gender] = @Gender)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Female" Name="Gender" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource></td>
        </tr>
        <tr>
            <td class="style7" valign="top">
                <p class="MsoNormal" style="margin-bottom: 15.95pt; line-height: 130%">
                    <span lang="EN-US" 
                        style="font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; color: #111111">
                    Love by itself does not subsist on fresh air and sunshine alone. The present 
                    world is a materialistic world and in order to meet your material needs, proper 
                    financing and budgeting is essential. Without it, no family can live 
                    comfortably. Such a situation aptly bears out the saying that &quot;when poverty 
                    knocks at the door, love flies through the window.&quot; This does not mean that one 
                    must be rich to make a marriage work. However, if one has the basic necessities 
                    of life provided through a secure job and careful planning, many unnecessary 
                    anxieties can be removed from a marriage.<o:p></o:p></span></p>
                <p class="MsoNormal" 
                    style="margin-top: 15.95pt; margin-right: 0cm; margin-bottom: 15.95pt; margin-left: 0cm; line-height: 130%">
                    <span lang="EN-US" 
                        style="font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; color: #111111">
                    The discomfort of poverty can be averted if there is complete understanding 
                    between the couple. Both partners must understand the value of contentment. Both 
                    must treat all problems as &quot;our problems&quot; and share all the &quot;ups&quot; and &quot;downs&quot; in 
                    the true spirit of a long-standing life partnership.<o:p></o:p></span></p>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

