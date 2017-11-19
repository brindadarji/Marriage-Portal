<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style3
        {
            width: 32%;
        }
        .style18
        {
            height: 7px;
            width: 70%;
        }
        .style19
        {
            width: 32%;
            height: 37px;
        }
        p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <table class="style1" style="height: 49px; width: 101%">
        <tr>
            <td width="30%" class="style18" colspan="2" 
                style="font-family: 'monotype Corsiva'; font-size: xx-large; color: #FF0000;">
                &nbsp;<marquee dir="rtl">The Highest happiness on earth is the happiness of marriage</td>
        </tr>
        <tr>
            <td class="style19" align="left" valign="top">
                <p class="MsoNormal" 
                    style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; text-justify: inter-ideograph; line-height: 15.0pt">
                    <span lang="EN-US" 
                        style="font-size: 11.5pt; font-family: &quot;Century Gothic&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: Arial; color: black">
                    It is a proven fact that marriages within the community are happier and more 
                    stable. Married couples feel more comfortable in common social and cultural 
                    environments and are able to jointly celebrate traditions and values that were 
                    part of their upbringing. <o:p></o:p></span>
                </p>
                <p class="MsoNormal" 
                    style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; text-justify: inter-ideograph; line-height: 15.0pt">
                    <span lang="EN-US" 
                        style="font-size: 11.5pt; font-family: &quot;Century Gothic&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: Arial; color: black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Matrimonial Portal is an exclusive matrimony portal catering to the special 
                    matrimonial needs of the Community community across the globe. This portal 
                    provides platform to a lot of Bride/Groom for finding perfect match. The portal 
                    offers several benefits to its members, primary being the pleasure of searching 
                    for a life partner within one&#39;s own community from across the globe at the click 
                    of a mouse. Matrimonial Portal is powered by innovative tools and cutting-edge 
                    technologies to provide the best search experience for its users. <o:p></o:p>
                    </span>
                </p>
                <p class="MsoNormal" 
                    style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; text-justify: inter-ideograph; line-height: 15.0pt">
                    <span lang="EN-US" 
                        style="font-size: 11.5pt; font-family: &quot;Century Gothic&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: Arial; color: black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    For Communities who value tradition and are passionate about their roots, this 
                    portal will help them connect with a partner from their community irrespective 
                    of whether they are from the same city or several thousand miles away, across 
                    continents. <o:p></o:p></span>
                </p>
            </td>
            <td width="25%" align="center" valign="top">
             <marquee  direction="up" truespeed="truespeed" scrollamount="2" scrolldelay="50" loop="-1" onmousemove="this.scrollAmount=0" onmouseout="this.scrollAmount=2">
                <asp:DataList ID="DataListsucess" runat="server" DataSourceID="SqlDataSource3" BorderColor="#003399" BorderStyle="Dashed" Width="200px">
                    <ItemTemplate>
                        <table class="style16">
                            <tr>
                                
                                <td align="center">
                                    <asp:Image ID="Image2" runat="server" Height="100px" 
                                        ImageUrl='<%# Eval("Photo") %>' Width="150px" />
                                </td>
                            </tr>
                            <tr>
                                
                                <td align="center">
                                    <asp:Label ID="lblbridename" runat="server" Text='<%# Eval("Bride_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                
                                <td class="style18" align="center">
                                    <asp:Label ID="lblgroomname" runat="server" Text='<%# Eval("Groom_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                
                                <td align="center">
                                    <asp:Label ID="lbldes" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" 
                    SelectCommand="SELECT [Photo], [Bride_name], [Groom_name], [Description] FROM [user_success]">
                </asp:SqlDataSource></marquee></td>
        </tr>
        </table>
</asp:Content>

