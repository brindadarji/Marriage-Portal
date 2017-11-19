﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
        .style5
        {
            height: 22px;
        }
        .style16
        {
            width: 2%;
        }
        .style17
        {
            height: 29px;
            width: 2%;
        }
        .style19
        {
            width: 18%;
        }
        .style20
        {
            height: 29px;
            width: 18%;
        }
        .style22
        {
            height: 18px;
            width: 18%;
        }
        .style23
        {
            height: 18px;
            width: 2%;
        }
        .style24
        {
            height: 18px;
        }
        .style25
        {
            height: 26px;
        }
        .style26
        {
            height: 26px;
            width: 18%;
        }
        .style27
        {
            height: 26px;
            width: 2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style19">
                    <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" 
                        ImageUrl="~/img/r4.jpg" />
            &nbsp;
            </td>
            <td class="style16">
                &nbsp;</td>
            <td width="20%" 
                style="font-size: large; font-weight: bold; text-decoration: blink; color: #FF0000">
                    REGISTRATION FORM<br />
                    <br />
                    <asp:Label ID="lblinsert" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                    Profile created by</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:RadioButtonList ID="rdblistprofilecreated" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Self</asp:ListItem>
                        <asp:ListItem>Parents</asp:ListItem>
                        <asp:ListItem>Sibling</asp:ListItem>
                        <asp:ListItem>Relative</asp:ListItem>
                        <asp:ListItem>Friend</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="rdblistprofilecreated" 
                        ErrorMessage="Please Choose an option by whom profile created" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style20">
                    First
                    Name</td>
            <td class="style17">
                :</td>
            <td class="style5">
                    <asp:TextBox ID="txtfname" runat="server" Width="301px"></asp:TextBox>
                </td>
            <td class="style5">
                    <asp:RequiredFieldValidator ID="reqfname" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="First name  is Required" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                        runat="server" ControlToValidate="txtfname" Display="Dynamic" 
                        ErrorMessage="First name in not valid" ForeColor="Red" 
                        ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Middle Name</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:TextBox ID="txtmname" runat="server" Width="301px"></asp:TextBox>
                </td>
            <td>
                    <asp:RequiredFieldValidator ID="reqmname" runat="server" 
                        ControlToValidate="txtmname" ErrorMessage="Middle name  is Required" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="txtmname" Display="Dynamic" 
                        ErrorMessage="Middle name in not valid" ForeColor="Red" 
                        ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="style19">
                Last Name</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:TextBox ID="txtlname" runat="server" Width="301px"></asp:TextBox>
                </td>
            <td>
                    <asp:RequiredFieldValidator ID="reqlname" runat="server" 
                        ControlToValidate="txtlname" ErrorMessage="Last Name is Required" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                        runat="server" ControlToValidate="txtlname" Display="Dynamic" 
                        ErrorMessage="Last name in not valid" ForeColor="Red" 
                        ValidationExpression="^[A-Za-z]*[^0-9]*"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="style19">
                Gender</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:RadioButtonList ID="rdbgender" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="rdbgender" ErrorMessage="Please Choose Gender" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Date Of birth</td>
            <td class="style16">
                :</td>
            <td>
                <asp:DropDownList ID="dropmonth" runat="server">
                        <asp:ListItem>--MM--</asp:ListItem>
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    &nbsp;
                    <asp:TextBox ID="txtdate" runat="server" Width="64px">DD</asp:TextBox>
&nbsp;&nbsp;
  
                    <asp:DropDownList ID="dropyear" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dropyear_SelectedIndexChanged">
                        <asp:ListItem>--YYYY--</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem>1954</asp:ListItem>
                        <asp:ListItem>1955</asp:ListItem>
                        <asp:ListItem>1956</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                        <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                    </asp:DropDownList>
  
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="dropmonth" Display="Dynamic" 
                    ErrorMessage="please select month" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtdate" Display="Dynamic" 
                    ErrorMessage="Please Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="dropyear" Display="Dynamic" 
                    ErrorMessage="please Select  year" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22">
                    <asp:Label ID="lblagedesc" runat="server"></asp:Label>
                </td>
            <td class="style23">
                </td>
            <td class="style24">
                    <asp:Label ID="lblage" runat="server"></asp:Label>
                </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style19">
                Photo</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:FileUpload ID="fuploadregistration" runat="server" Width="189px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnupload" runat="server" 
                        CausesValidation="False" onclick="btnupload_Click" Text="Upload" />
                    &nbsp;&nbsp;&nbsp;
            </td>
            <td>
                    <asp:Label ID="lblimage" runat="server" ForeColor="#00CC00"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style20">
                Religion</td>
            <td class="style17">
                :</td>
            <td class="style5">
                    <asp:DropDownList ID="dropreligion" runat="server" Height="16px" Width="292px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Muslim - Shia</asp:ListItem>
                        <asp:ListItem>Muslim - Sunni</asp:ListItem>
                        <asp:ListItem>Muslim - Others</asp:ListItem>
                        <asp:ListItem>Christian - Catholic</asp:ListItem>
                        <asp:ListItem>Christian - Orthodox</asp:ListItem>
                        <asp:ListItem>Christian - Protestant</asp:ListItem>
                        <asp:ListItem>Christian - Others</asp:ListItem>
                        <asp:ListItem>Sikh</asp:ListItem>
                        <asp:ListItem>Jain - Digambar</asp:ListItem>
                        <asp:ListItem>Jain - Shwetambar</asp:ListItem>
                        <asp:ListItem>Jain - Others</asp:ListItem>
                        <asp:ListItem>Parsi</asp:ListItem>
                        <asp:ListItem>Buddhist</asp:ListItem>
                        <asp:ListItem>Inter-Religion</asp:ListItem>
                        <asp:ListItem>No Religious Belief</asp:ListItem>
           </asp:DropDownList>

                </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="dropreligion" ErrorMessage="Please choose a Religion" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic" 
                    Enabled="False"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style19">
                    Mother tounge</td>
            <td class="style16">
                :</td>
            <td>
                   <asp:DropDownList ID="dropmothertounge" runat="server" Height="18px" 
                       Width="293px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Arunachali</asp:ListItem>
                        <asp:ListItem>Assamese</asp:ListItem>
                        <asp:ListItem>Awadhi</asp:ListItem>
                        <asp:ListItem>Bengali</asp:ListItem>
                        <asp:ListItem>Bhojpuri</asp:ListItem>
                        <asp:ListItem>Brij</asp:ListItem>
                        <asp:ListItem>Bihari</asp:ListItem>
                        <asp:ListItem>Badaga</asp:ListItem>
                        <asp:ListItem>Chatisgarhi</asp:ListItem>
                        <asp:ListItem>Dogri</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>French</asp:ListItem>
                        <asp:ListItem>Garo</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>Haryanvi</asp:ListItem>
                        <asp:ListItem>Himachali/Pahari</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Kanauji</asp:ListItem>
                        <asp:ListItem>Kannada</asp:ListItem>
                        <asp:ListItem>Kashmiri</asp:ListItem>
                        <asp:ListItem>Khandesi</asp:ListItem>
                        <asp:ListItem>Khasi</asp:ListItem>
                        <asp:ListItem>Konkani</asp:ListItem>
                        <asp:ListItem>Koshali</asp:ListItem>
                        <asp:ListItem>Kumoani</asp:ListItem>
                        <asp:ListItem>Kutchi</asp:ListItem>
                        <asp:ListItem>Lepcha</asp:ListItem>
                        <asp:ListItem>Ladacki</asp:ListItem>
                        <asp:ListItem>Magahi</asp:ListItem>
                        <asp:ListItem>Malayalam</asp:ListItem>
                        <asp:ListItem>Manipuri</asp:ListItem>
                        <asp:ListItem>Marathi</asp:ListItem>
                        <asp:ListItem>Marwari</asp:ListItem>
                        <asp:ListItem>Miji</asp:ListItem>
                        <asp:ListItem>Monpa</asp:ListItem>
                        <asp:ListItem>Nicobarese</asp:ListItem>
                        <asp:ListItem>Nepali</asp:ListItem>
                        <asp:ListItem>Oriya</asp:ListItem>
                        <asp:ListItem>Punjabi</asp:ListItem>
                        <asp:ListItem>Rajasthani</asp:ListItem>
                        <asp:ListItem>Sanskrit</asp:ListItem>
                        <asp:ListItem>Santhali</asp:ListItem>
                        <asp:ListItem>Sindhi</asp:ListItem>
                        <asp:ListItem>Sourashtra</asp:ListItem>
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>Telugu</asp:ListItem>
                        <asp:ListItem>Tripuri</asp:ListItem>
                        <asp:ListItem>Tulu</asp:ListItem>
                        <asp:ListItem>Urdu</asp:ListItem>

                    </asp:DropDownList>
                </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="dropmothertounge" ErrorMessage="Please choose Mothertounge" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style26">
                Caste</td>
            <td class="style27">
                :</td>
            <td class="style25">
                    <asp:DropDownList ID="dropcaste" runat="server" Height="16px" Width="292px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            
                            <asp:ListItem>Ad Dharmi</asp:ListItem>
                            <asp:ListItem>Adi Andhra</asp:ListItem>
                            <asp:ListItem>Adi Dravida</asp:ListItem>
                            <asp:ListItem>Adi Karnataka</asp:ListItem>
                            <asp:ListItem>Agarwal</asp:ListItem>
                            <asp:ListItem>Agnikula Kshatriya</asp:ListItem>
                            <asp:ListItem>Agri</asp:ListItem>
                            <asp:ListItem>Ahom</asp:ListItem>
                            <asp:ListItem>Ambalavasi</asp:ListItem>
                            <asp:ListItem>Amil Sindhi</asp:ListItem>
                            <asp:ListItem>Anavil Brahmin</asp:ListItem>
                            <asp:ListItem>Arekatica</asp:ListItem>
                            <asp:ListItem>Arora</asp:ListItem>
                            <asp:ListItem>Arunthathiyar</asp:ListItem>
                            <asp:ListItem>Arya Vysya</asp:ListItem>
                            <asp:ListItem>Audichya Brahmin</asp:ListItem>
                            <asp:ListItem>Ayyaraka</asp:ListItem>
                            <asp:ListItem>Badaga</asp:ListItem>
                            <asp:ListItem>Bagdi</asp:ListItem>
                            <asp:ListItem>Baibhand Sindhi</asp:ListItem>
                            <asp:ListItem>Baidya</asp:ListItem>
                            <asp:ListItem>Baishnab</asp:ListItem>
                            <asp:ListItem>Baishya</asp:ListItem>
                            <asp:ListItem>Bajantri</asp:ListItem>
                            <asp:ListItem>Balija</asp:ListItem>
                            <asp:ListItem>Banayat Oriya</asp:ListItem>
                            <asp:ListItem>Banik</asp:ListItem>
                            <asp:ListItem>Baniya</asp:ListItem>
                            <asp:ListItem>Baniya - Bania</asp:ListItem>
                            <asp:ListItem>Baniya - Kumuti</asp:ListItem>
                            <asp:ListItem>Banjara</asp:ListItem>
                            <asp:ListItem>Barai</asp:ListItem>
                            <asp:ListItem>Barendra Brahmin</asp:ListItem>
                            <asp:ListItem>Bari</asp:ListItem>
                            <asp:ListItem>Baria</asp:ListItem>
                            <asp:ListItem>Barujibi</asp:ListItem>
                            <asp:ListItem>Besta</asp:ListItem>
                            <asp:ListItem>Bhandari</asp:ListItem>
                            <asp:ListItem>Bhanusali Sindhi</asp:ListItem>
                            <asp:ListItem>Bhatia</asp:ListItem>
                            <asp:ListItem>Bhatia Sindhi</asp:ListItem>
                            <asp:ListItem>Bhatraju</asp:ListItem>
                            <asp:ListItem>Bhatt Brahmin</asp:ListItem>
                            <asp:ListItem>Bhavasar Kshatriya</asp:ListItem>
                            <asp:ListItem>Bhoi</asp:ListItem>
                            <asp:ListItem>Bhovi</asp:ListItem>
                            <asp:ListItem>Bhumihar Brahmin</asp:ListItem>
                            <asp:ListItem>Billava</asp:ListItem>
                            <asp:ListItem>Bishnoi/Vishnoi</asp:ListItem>
                            <asp:ListItem>Bondili</asp:ListItem>
                            <asp:ListItem>Boyar</asp:ListItem>
                            <asp:ListItem>Brahmbatt</asp:ListItem>
                            <asp:ListItem>Brahmin - Anavil</asp:ListItem>
                            <asp:ListItem>Brahmin - Audichya</asp:ListItem>
                            <asp:ListItem>Brahmin - Barendra</asp:ListItem>
                            <asp:ListItem>Brahmin - Bhatt</asp:ListItem>
                            <asp:ListItem>Brahmin - Bhumihar</asp:ListItem>
                            <asp:ListItem>Brahmin - Daivadnya</asp:ListItem>
                            <asp:ListItem>Brahmin - Danua</asp:ListItem>
                            <asp:ListItem>Brahmin - Deshastha</asp:ListItem>
                            <asp:ListItem>Brahmin - Dhiman</asp:ListItem>
                            <asp:ListItem>Brahmin - Dravida</asp:ListItem>
                            <asp:ListItem>Brahmin - Garhwali</asp:ListItem>
                            <asp:ListItem>Brahmin - Gaur</asp:ListItem>
                            <asp:ListItem>Brahmin - Goswami/Gosavi</asp:ListItem>
                            <asp:ListItem>Brahmin - Gujar Gaur</asp:ListItem>
                            <asp:ListItem>Brahmin - Gurukkal</asp:ListItem>
                            <asp:ListItem>Brahmin - Halua</asp:ListItem>
                            <asp:ListItem>Brahmin - Havyaka</asp:ListItem>
                            <asp:ListItem>Brahmin - Hoysala</asp:ListItem>
                            <asp:ListItem>Brahmin - Iyengar</asp:ListItem>
                            <asp:ListItem>Brahmin - Iyer</asp:ListItem>
                            <asp:ListItem>Brahmin - Jangid</asp:ListItem>
                            <asp:ListItem>Brahmin - Jhadua</asp:ListItem>
                            <asp:ListItem>Brahmin - Jyotish</asp:ListItem>
                            <asp:ListItem>Brahmin - Kanyakubj</asp:ListItem>
                            <asp:ListItem>Brahmin - Karhade</asp:ListItem>
                            <asp:ListItem>Brahmin - Khandelwal</asp:ListItem>
                            <asp:ListItem>Brahmin - Kokanastha</asp:ListItem>
                            <asp:ListItem>Brahmin - Kota</asp:ListItem>
                            <asp:ListItem>Brahmin - Kulin</asp:ListItem>
                            <asp:ListItem>Brahmin - Kumaoni</asp:ListItem>
                            <asp:ListItem>Brahmin - Madhwa</asp:ListItem>
                            <asp:ListItem>Brahmin - Maithil</asp:ListItem>
                            <asp:ListItem>Brahmin - Modh</asp:ListItem>
                            <asp:ListItem>Brahmin - Mohyal</asp:ListItem>
                            <asp:ListItem>Brahmin - Nagar</asp:ListItem>
                            <asp:ListItem>Brahmin - Namboodiri</asp:ListItem>
                            <asp:ListItem>Brahmin - Narmadiya</asp:ListItem>
                            <asp:ListItem>Brahmin - Niyogi</asp:ListItem>
                            <asp:ListItem>Brahmin - Paliwal</asp:ListItem>
                            <asp:ListItem>Brahmin - Panda</asp:ListItem>
                            <asp:ListItem>Brahmin - Pandit</asp:ListItem>
                            <asp:ListItem>Brahmin - Pareek</asp:ListItem>
                            <asp:ListItem>Brahmin - Pushkarna</asp:ListItem>
                            <asp:ListItem>Brahmin - Rarhi</asp:ListItem>
                            <asp:ListItem>Brahmin - Rigvedi</asp:ListItem>
                            <asp:ListItem>Brahmin - Rudraj</asp:ListItem>
                            <asp:ListItem>Brahmin - Sakaldwipi</asp:ListItem>
                            <asp:ListItem>Brahmin - Sanadya</asp:ListItem>
                            <asp:ListItem>Brahmin - Sanketi</asp:ListItem>
                            <asp:ListItem>Brahmin - Saraswat</asp:ListItem>
                            <asp:ListItem>Brahmin - Saryuparin</asp:ListItem>
                            <asp:ListItem>Brahmin - Shivhalli</asp:ListItem>
                            <asp:ListItem>Brahmin - Shrimali</asp:ListItem>
                            <asp:ListItem>Brahmin - Sikhwal</asp:ListItem>
                            <asp:ListItem>Brahmin - Smartha</asp:ListItem>
                            <asp:ListItem>Brahmin - Sri Vaishnava</asp:ListItem>
                            <asp:ListItem>Brahmin - Stanika</asp:ListItem>
                            <asp:ListItem>Brahmin - Tyagi</asp:ListItem>
                            <asp:ListItem>Brahmin - Vaidiki</asp:ListItem>
                            <asp:ListItem>Brahmin - Vaikhanasa</asp:ListItem>
                            <asp:ListItem>Brahmin - Velanadu</asp:ListItem>
                            <asp:ListItem>Brahmin - Vyas</asp:ListItem>
                            <asp:ListItem>Brahmin - Others</asp:ListItem>
                            <asp:ListItem>Brajastha Maithil</asp:ListItem>
                            <asp:ListItem>Brajastha Maithil</asp:ListItem>
                            <asp:ListItem>Bunt (Shetty)</asp:ListItem>
                            <asp:ListItem>CKP</asp:ListItem>
                            <asp:ListItem>Chambhar</asp:ListItem>
                            <asp:ListItem>Chandravanshi Kahar</asp:ListItem>
                            <asp:ListItem>Chasa</asp:ListItem>
                            <asp:ListItem>Chattada Sri Vaishnava</asp:ListItem>
                            <asp:ListItem>haudary</asp:ListItem>
                            <asp:ListItem>Chaurasia</asp:ListItem>
                            <asp:ListItem>Chennadasar</asp:ListItem>
                            <asp:ListItem>Chettiar</asp:ListItem>
                            <asp:ListItem>Chhapru Sindhi</asp:ListItem>
                            <asp:ListItem>Chhetri</asp:ListItem>
                            <asp:ListItem>Chippolu (Mera)</asp:ListItem>
                            <asp:ListItem>Christian - Born Again</asp:ListItem>
                            <asp:ListItem>Christian - Bretheren</asp:ListItem>
                            <asp:ListItem>Christian - Church of South India</asp:ListItem>
                            <asp:ListItem>Christian - Evangelist</asp:ListItem>
                            <asp:ListItem>Christian - Jacobite</asp:ListItem>
                            <asp:ListItem>Christian - Knanaya</asp:ListItem>
                            <asp:ListItem>Christian - Knanaya Catholic</asp:ListItem>
                            <asp:ListItem>Christian - Knanaya Jacobite</asp:ListItem>
                            <asp:ListItem>Christian - Latin Catholic</asp:ListItem>
                            <asp:ListItem>Christian - Malankara</asp:ListItem>
                            <asp:ListItem>Christian - Marthoma</asp:ListItem>
                            <asp:ListItem>Christian - Others</asp:ListItem>
                            <asp:ListItem>Christian - Pentacost</asp:ListItem>
                            <asp:ListItem>Christian - Roman Catholic</asp:ListItem>
                            <asp:ListItem>Christian - Seventh-day Adventist</asp:ListItem>
                            <asp:ListItem>Christian - Syrian Catholic</asp:ListItem>
                            <asp:ListItem>Christian - Syrian Jacobite</asp:ListItem>
                            <asp:ListItem>Christian - Syrian Orthodox</asp:ListItem>
                            <asp:ListItem>Christian - Syro Malabar</asp:ListItem>
                            <asp:ListItem>Christian - unspecified</asp:ListItem>
                            <asp:ListItem>Coorgi</asp:ListItem>
                            <asp:ListItem>Dadu Sindhi</asp:ListItem>
                            <asp:ListItem>Daivadnya Brahmin</asp:ListItem>
                            <asp:ListItem>Danua Brahmin</asp:ListItem>
                            <asp:ListItem>Darji</asp:ListItem>
                            <asp:ListItem>Deshastha Brahmin</asp:ListItem>
                            <asp:ListItem>Devadiga</asp:ListItem>
                            <asp:ListItem>Devandra Kula Vellalar</asp:ListItem>
                            <asp:ListItem>Devang Koshthi</asp:ListItem>
                            <asp:ListItem>Devanga</asp:ListItem>
                            <asp:ListItem>Devar/Thevar/Mukkulathor</asp:ListItem>
                            <asp:ListItem>Dhangar</asp:ListItem>
                            <asp:ListItem>Dheevara</asp:ListItem>
                            <asp:ListItem>Dhiman</asp:ListItem>
                            <asp:ListItem>Dhiman Brahmin</asp:ListItem>
                            <asp:ListItem>Dhoba</asp:ListItem>
                            <asp:ListItem>Dhobi</asp:ListItem>
                            <asp:ListItem>Dhor / Kakkayya</asp:ListItem>
                            <asp:ListItem>Dommala</asp:ListItem>
                            <asp:ListItem>Dravida Brahmin</asp:ListItem>
                            <asp:ListItem>Dumal</asp:ListItem>
                            <asp:ListItem>Dusadh (Paswan)</asp:ListItem>
                            <asp:ListItem>Ediga</asp:ListItem>
                            <asp:ListItem>Ezhava</asp:ListItem>
                            <asp:ListItem>Ezhuthachan</asp:ListItem>
                            <asp:ListItem>Gabit</asp:ListItem>
                            <asp:ListItem>Ganda</asp:ListItem>
                            <asp:ListItem>Gandla</asp:ListItem>
                            <asp:ListItem>Ganiga</asp:ListItem>
                            <asp:ListItem>Garhwali</asp:ListItem>
                            <asp:ListItem>Garhwali Brahmin</asp:ListItem>
                            <asp:ListItem>Gatti</asp:ListItem>
                            <asp:ListItem>Gaur Brahmin</asp:ListItem>
                            <asp:ListItem>Gavara</asp:ListItem>
                            <asp:ListItem>Gawali</asp:ListItem>
                            <asp:ListItem>Ghisadi</asp:ListItem>
                            <asp:ListItem>Ghumar</asp:ListItem>
                            <asp:ListItem>Goala</asp:ListItem>
                            <asp:ListItem>Goan</asp:ListItem>
                            <asp:ListItem>Gomantak</asp:ListItem>
                            <asp:ListItem>Gondhali</asp:ListItem>
                            <asp:ListItem>Goswami/Gosavi Brahmin</asp:ListItem>
                            <asp:ListItem>Goud</asp:ListItem>
                            <asp:ListItem>Gounder</asp:ListItem>
                            <asp:ListItem>Gowda</asp:ListItem>
                            <asp:ListItem>Gramani</asp:ListItem>
                            <asp:ListItem>Gudia</asp:ListItem>
                            <asp:ListItem>Gujar Gaur</asp:ListItem>
                            <asp:ListItem>Gujjar</asp:ListItem>
                            <asp:ListItem>Gupta</asp:ListItem>
                            <asp:ListItem>Guptan</asp:ListItem>
                            <asp:ListItem>Gurav</asp:ListItem>
                            <asp:ListItem>Gurjar</asp:ListItem>
                            <asp:ListItem>Gurukkal Brahmin</asp:ListItem>
                            <asp:ListItem>Halba Koshti</asp:ListItem>
                            <asp:ListItem>Halua Brahmin</asp:ListItem>
                            <asp:ListItem>Havyaka Brahmin</asp:ListItem>
                            <asp:ListItem>Helava</asp:ListItem>
                            <asp:ListItem>Hoysala Brahmin</asp:ListItem>
                            <asp:ListItem>Hugar (Jeer)</asp:ListItem>
                            <asp:ListItem>Hyderabadi Sindhiv</asp:ListItem>
                            <asp:ListItem>Intercaste</asp:ListItem>
                            <asp:ListItem>Irani</asp:ListItem>
                            <asp:ListItem>Iyengar Brahmin</asp:ListItem>
                            <asp:ListItem>Iyer Brahmin</asp:ListItem>
                            <asp:ListItem>Jaalari</asp:ListItem>
                            <asp:ListItem>Jain - Agarwal</asp:ListItem>
                            <asp:ListItem>Jain - Bania</asp:ListItem>
                            <asp:ListItem>Jain - Intercaste</asp:ListItem>
                            <asp:ListItem>Jain - Jaiswal</asp:ListItem>
                            <asp:ListItem>Jain - KVO</asp:ListItem>
                            <asp:ListItem>Jain - Khandelwal</asp:ListItem>
                            <asp:ListItem>Jain - Kutchi</asp:ListItem>
                            <asp:ListItem>Jain - Oswal</asp:ListItem>
                            <asp:ListItem>Jain - Others</asp:ListItem>
                            <asp:ListItem>Jain - Porwal</asp:ListItem>
                            <asp:ListItem>Jain - Unspecified</asp:ListItem>
                            <asp:ListItem>Jain - Vaishya</asp:ListItem>
                            <asp:ListItem>Jaiswal</asp:ListItem>
                            <asp:ListItem>Jandra</asp:ListItem>
                            <asp:ListItem>Jangam</asp:ListItem>
                            <asp:ListItem>Jangid Brahmin</asp:ListItem>
                            <asp:ListItem>Jangra - Brahmin</asp:ListItem>
                            <asp:ListItem>Jat</asp:ListItem>
                            <asp:ListItem>Jatav</asp:ListItem>
                            <asp:ListItem>Jeer</asp:ListItem>
                            <asp:ListItem>Jetty/Malla</asp:ListItem>
                            <asp:ListItem>Jhadua Brahmin</asp:ListItem>
                            <asp:ListItem>Jijhotia Brahmin</asp:ListItem>
                            <asp:ListItem>Jogi (Nath)</asp:ListItem>
                            <asp:ListItem>Kachara</asp:ListItem>
                            <asp:ListItem>Kadava Patel</asp:ListItem>
                            <asp:ListItem>Kahar</asp:ListItem>
                            <asp:ListItem>Kaibarta</asp:ListItem>
                            <asp:ListItem>Kalal</asp:ListItem>
                            <asp:ListItem>Kalar</asp:ListItem>
                            <asp:ListItem>Kalinga</asp:ListItem>
                            <asp:ListItem>Kalinga Vysya</asp:ListItem>
                            <asp:ListItem>Kalita</asp:ListItem>
                            <asp:ListItem>Kalwar</asp:ListItem>
                            <asp:ListItem>Kamboj</asp:ListItem>
                            <asp:ListItem>Kamma</asp:ListItem>
                            <asp:ListItem>Kansari</asp:ListItem>
                            <asp:ListItem>Kanyakubj Brahmin</asp:ListItem>
                            <asp:ListItem>Kapu</asp:ListItem>
                            <asp:ListItem>Karana</asp:ListItem>
                            <asp:ListItem>Karhade Brahmin</asp:ListItem>
                            <asp:ListItem>Karmakar</asp:ListItem>
                            <asp:ListItem>Karuneegar</asp:ListItem>
                            <asp:ListItem>Kasar</asp:ListItem>
                            <asp:ListItem>Kashyap</asp:ListItem>
                            <asp:ListItem>Katiya</asp:ListItem>
                            <asp:ListItem>Kavuthiyya/Ezhavathy</asp:ListItem>
                            <asp:ListItem>Kayastha</asp:ListItem>
                            <asp:ListItem>Khandayat</asp:ListItem>
                            <asp:ListItem>Khandelwal</asp:ListItem>
                            <asp:ListItem>Kharwa</asp:ListItem>
                            <asp:ListItem>Kharwar</asp:ListItem>
                            <asp:ListItem>Khatri</asp:ListItem>
                            <asp:ListItem>Kirar</asp:ListItem>
                            <asp:ListItem>Koiri</asp:ListItem>
                            <asp:ListItem>Kokanastha Brahmin</asp:ListItem>
                            <asp:ListItem>Kokanastha Maratha</asp:ListItem>
                            <asp:ListItem>Koli</asp:ListItem>
                            <asp:ListItem>Koli Mahadev</asp:ListItem>
                            <asp:ListItem>Koli Patel</asp:ListItem>
                            <asp:ListItem>Kongu Vellala Gounder</asp:ListItem>
                            <asp:ListItem>Konkani</asp:ListItem>
                            <asp:ListItem>Korama</asp:ListItem>
                            <asp:ListItem>Kori</asp:ListItem>
                            <asp:ListItem>Kosthi</asp:ListItem>
                            <asp:ListItem>Kota Brahmin</asp:ListItem>
                            <asp:ListItem>Krishnavaka</asp:ListItem>
                            <asp:ListItem>Kshatriya</asp:ListItem>
                            <asp:ListItem>Kudumbi</asp:ListItem>
                            <asp:ListItem>Kulal</asp:ListItem>
                            <asp:ListItem>Kulalar</asp:ListItem>
                            <asp:ListItem>Kulin Brahmin</asp:ListItem>
                            <asp:ListItem>Kulita</asp:ListItem>
                            <asp:ListItem>Kumaoni Brahmin</asp:ListItem>
                            <asp:ListItem>Kumawat</asp:ListItem>
                            <asp:ListItem>Kumbhakar</asp:ListItem>
                            <asp:ListItem>Kumbhar</asp:ListItem>
                            <asp:ListItem>Kumhar</asp:ListItem>
                            <asp:ListItem>Kummari</asp:ListItem>
                            <asp:ListItem>Kunbi</asp:ListItem>
                            <asp:ListItem>Kuravan</asp:ListItem>
                            <asp:ListItem>Kurmi/Kurmi Kshatriya</asp:ListItem>
                            <asp:ListItem>Kuruba</asp:ListItem>
                            <asp:ListItem>Kuruhina Shetty</asp:ListItem>
                            <asp:ListItem>Kurumbar</asp:ListItem>
                            <asp:ListItem>Kushwaha (Koiri)</asp:ListItem>
                            <asp:ListItem>Kutchi</asp:ListItem>
                            <asp:ListItem>Lambadi</asp:ListItem>
                            <asp:ListItem>Larai Sindhi</asp:ListItem>
                            <asp:ListItem>Larkana Sindhi</asp:ListItem>
                            <asp:ListItem>Leva patel</asp:ListItem>
                            <asp:ListItem>Leva patil</asp:ListItem>
                            <asp:ListItem>Lingayath</asp:ListItem>
                            <asp:ListItem>Lodhi Rajput</asp:ListItem>
                            <asp:ListItem>Lohana</asp:ListItem>
                            <asp:ListItem>Lohana Sindhi</asp:ListItem>
                            <asp:ListItem>Lohar</asp:ListItem>
                            <asp:ListItem>Loniya</asp:ListItem>
                            <asp:ListItem>Lubana</asp:ListItem>
                            <asp:ListItem>Madhwa Brahmin</asp:ListItem>
                            <asp:ListItem>Madiga</asp:ListItem>
                            <asp:ListItem>Mahajan</asp:ListItem>
                            <asp:ListItem>Mahar</asp:ListItem>
                            <asp:ListItem>Mahendra</asp:ListItem>
                            <asp:ListItem>Maheshwari</asp:ListItem>
                            <asp:ListItem>Mahishyav</asp:ListItem>
                            <asp:ListItem>Maithil Brahmin</asp:ListItem>
                            <asp:ListItem>Majabi</asp:ListItem>
                            <asp:ListItem>Mala</asp:ListItem>
                            <asp:ListItem>Mali</asp:ListItem>
                            <asp:ListItem>Mallah</asp:ListItem>
                            <asp:ListItem>Mangalorean</asp:ListItem>
                            <asp:ListItem>Manipuri</asp:ListItem>
                            <asp:ListItem>Mapila</asp:ListItem>
                            <asp:ListItem>Maratha</asp:ListItem>
                            <asp:ListItem>Maruthuvar</asp:ListItem>
                            <asp:ListItem>Matang</asp:ListItem>
                            <asp:ListItem>Mathur</asp:ListItem>
                            <asp:ListItem>Meena</asp:ListItem>
                            <asp:ListItem>Meenavar</asp:ListItem>
                            <asp:ListItem>Mehra</asp:ListItem>
                            <asp:ListItem>Mera</asp:ListItem>
                            <asp:ListItem>Meru Darji</asp:ListItem>
                            <asp:ListItem>Mochi</asp:ListItem>
                            <asp:ListItem>Modak</asp:ListItem>
                            <asp:ListItem>Mogaveera</asp:ListItem>
                            <asp:ListItem>Mohyal Brahmin</asp:ListItem>
                            <asp:ListItem>Mudaliyar</asp:ListItem>
                            <asp:ListItem>Mudiraj</asp:ListItem>
                            <asp:ListItem>Mukkulathor</asp:ListItem>
                            <asp:ListItem>Munnuru Kapu</asp:ListItem>
                            <asp:ListItem>Muslim - Ansari</asp:ListItem>
                            <asp:ListItem>Muslim - Arain</asp:ListItem>
                            <asp:ListItem>Muslim - Awan</asp:ListItem>
                            <asp:ListItem>Muslim - Bohra</asp:ListItem>
                            <asp:ListItem>Muslim - Dekkani</asp:ListItem>
                            <asp:ListItem>Muslim - Dudekula</asp:ListItem>
                            <asp:ListItem>Muslim - Hanafi</asp:ListItem>
                            <asp:ListItem>Muslim - Jat</asp:ListItem>
                            <asp:ListItem>Muslim - Khoja</asp:ListItem>
                            <asp:ListItem>Muslim - Lebbai</asp:ListItem>
                            <asp:ListItem>Muslim - Malik</asp:ListItem>
                            <asp:ListItem>Muslim - Mapila</asp:ListItem>
                            <asp:ListItem>Muslim - Maraicar</asp:ListItem>
                            <asp:ListItem>Muslim - Memon</asp:ListItem>
                            <asp:ListItem>Muslim - Mughal</asp:ListItem>
                            <asp:ListItem>Muslim - Others</asp:ListItem>
                            <asp:ListItem>Muslim - Pathan</asp:ListItem>
                            <asp:ListItem>Muslim - Qureshi</asp:ListItem>
                            <asp:ListItem>Muslim - Rajput</asp:ListItem>
                            <asp:ListItem>Muslim - Rowther</asp:ListItem>
                            <asp:ListItem>Muslim - Shafi</asp:ListItem>
                            <asp:ListItem>Muslim - Sheikh</asp:ListItem>
                            <asp:ListItem>Muslim - Siddiqui</asp:ListItem>
                            <asp:ListItem>Muslim - Syed</asp:ListItem>
                            <asp:ListItem>Muslim - UnSpecified</asp:ListItem>
                            <asp:ListItem>Muthuraja</asp:ListItem>
                            <asp:ListItem>Naagavamsam</asp:ListItem>
                            <asp:ListItem>Nadar</asp:ListItem>
                            <asp:ListItem>Nagar Brahmin</asp:ListItem>
                            <asp:ListItem>Nagaralu</asp:ListItem>
                            <asp:ListItem>Nai</asp:ListItem>
                            <asp:ListItem>Naicker</asp:ListItem>
                            <asp:ListItem>Naidu</asp:ListItem>
                            <asp:ListItem>Naik</asp:ListItem>
                            <asp:ListItem>Naika</asp:ListItem>
                            <asp:ListItem>Nair</asp:ListItem>
                            <asp:ListItem>Nambiar</asp:ListItem>
                            <asp:ListItem>Namboodiri Brahmin</asp:ListItem>
                            <asp:ListItem>Nagar Brahmin</asp:ListItem>
                            <asp:ListItem>Nagaralu</asp:ListItem>
                            <asp:ListItem>Nai</asp:ListItem>
                            <asp:ListItem>Naicker</asp:ListItem>
                            <asp:ListItem>Naidu</asp:ListItem>
                            <asp:ListItem>Naik</asp:ListItem>
                            <asp:ListItem>Naika</asp:ListItem>
                            <asp:ListItem>Nair</asp:ListItem>
                            <asp:ListItem>Nambiar</asp:ListItem>
                            <asp:ListItem>Namboodiri Brahmin</asp:ListItem>
                            <asp:ListItem>Namosudra</asp:ListItem>
                            <asp:ListItem>Napit</asp:ListItem>
                            <asp:ListItem>Narmadiya Brahmin</asp:ListItem>
                            <asp:ListItem>Nath</asp:ListItem>
                            <asp:ListItem>Nayaka</asp:ListItem>
                            <asp:ListItem>Neeli</asp:ListItem>
                            <asp:ListItem>Nepali</asp:ListItem>
                            <asp:ListItem>Nhavi</asp:ListItem>
                            <asp:ListItem>Niyogi Brahmin</asp:ListItem>
                            <asp:ListItem>Oswal</asp:ListItem>
                            <asp:ListItem>Otari</asp:ListItem>
                            <asp:ListItem>Padmasali</asp:ListItem>
                            <asp:ListItem>Pal</asp:ListItem>
                            <asp:ListItem>Panchal</asp:ListItem>
                            <asp:ListItem>Panda Brahmin</asp:ListItem>
                            <asp:ListItem>Panicker</asp:ListItem>
                            <asp:ListItem>Parkava Kulam</asp:ListItem>
                            <asp:ListItem>Parsi</asp:ListItem>
                            <asp:ListItem>Partraj</asp:ListItem>
                            <asp:ListItem>Pasi</asp:ListItem>
                            <asp:ListItem>Paswan</asp:ListItem>
                            <asp:ListItem>Patel</asp:ListItem>
                            <asp:ListItem>Pathare Prabhu</asp:ListItem>
                            <asp:ListItem>Patnaick/Sistakaranam</asp:ListItem>
                            <asp:ListItem>Patra</asp:ListItem>
                            <asp:ListItem>Perika</asp:ListItem>
                            <asp:ListItem>Pillai</asp:ListItem>
                            <asp:ListItem>Poosala</asp:ListItem>
                            <asp:ListItem>Porwal</asp:ListItem>
                            <asp:ListItem>Prajapati</asp:ListItem>
                            <asp:ListItem>Pushkarna Brahmin</asp:ListItem>
                            <asp:ListItem>Raigar</asp:ListItem>
                            <asp:ListItem>Rajaka</asp:ListItem>
                            <asp:ListItem>Rajastani</asp:ListItem>
                            <asp:ListItem>Rajbhar</asp:ListItem>
                            <asp:ListItem>Rajbonshi</asp:ListItem>
                            <asp:ListItem>Rajpurohit</asp:ListItem>
                            <asp:ListItem>Rajput</asp:ListItem>
                            <asp:ListItem>Ramanandi</asp:ListItem>
                            <asp:ListItem>Ramdasia</asp:ListItem>
                            <asp:ListItem>Ramgariah</asp:ListItem>
                            <asp:ListItem>Ramoshi</asp:ListItem>
                            <asp:ListItem>Rarhi Brahmin</asp:ListItem>
                            <asp:ListItem>Ravidasia</asp:ListItem>
                            <asp:ListItem>Rawat</asp:ListItem>
                            <asp:ListItem>Reddy</asp:ListItem>
                            <asp:ListItem>Relli</asp:ListItem>
                            <asp:ListItem>Rigvedi Brahmin</asp:ListItem>
                            <asp:ListItem>Rohiri Sindhi</asp:ListItem>
                            <asp:ListItem>Ror</asp:ListItem>
                            <asp:ListItem>Rudraj Brahmin</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>SKP</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                            <asp:ListItem>Sadgope</asp:ListItem>
                            <asp:ListItem>Sagara (Uppara)</asp:ListItem>
                            <asp:ListItem>Saha</asp:ListItem>
                            <asp:ListItem>Sahiti Sindhi</asp:ListItem>
                            <asp:ListItem>Sahu</asp:ListItem>
                            <asp:ListItem>Saini</asp:ListItem>
                            <asp:ListItem>Sakaldwipi Brahmin</asp:ListItem>
                            <asp:ListItem>Sakkhar Sindhi</asp:ListItem>
                            <asp:ListItem>Saliya</asp:ListItem>
                            <asp:ListItem>Sanadya Brahmin</asp:ListItem>
                            <asp:ListItem>Sanketi Brahmin</asp:ListItem>
                            <asp:ListItem>Saraswat Brahmin</asp:ListItem>
                            <asp:ListItem>Saryuparin Brahmin</asp:ListItem>
                            <asp:ListItem>Savji</asp:ListItem>
                            <asp:ListItem>Sehwani Sindhi</asp:ListItem>
                            <asp:ListItem>Senai Thalaivar</asp:ListItem>
                            <asp:ListItem>Senguntha Mudaliyar</asp:ListItem>
                            <asp:ListItem>Settibalija</asp:ListItem>
                            <asp:ListItem>Shetty</asp:ListItem>
                            <asp:ListItem>Shikarpuri Sindhi</asp:ListItem>
                            <asp:ListItem>Shimpi/Namdev</asp:ListItem>
                            <asp:ListItem>Shivhalli Brahmin</asp:ListItem>
                            <asp:ListItem>Shrimali Brahmin</asp:ListItem>
                            <asp:ListItem>Sikh - Ahluwalia</asp:ListItem>
                            <asp:ListItem>Sikh - Arora</asp:ListItem>
                            <asp:ListItem>Sikh - Bhatia</asp:ListItem>
                            <asp:ListItem>Sikh - Bhatra</asp:ListItem>
                            <asp:ListItem>Sikh - Ghumar</asp:ListItem>
                            <asp:ListItem>Sikh - Intercaste</asp:ListItem>
                            <asp:ListItem>Sikh - Jat</asp:ListItem>
                            <asp:ListItem>Sikh - Kamboj</asp:ListItem>
                            <asp:ListItem>Sikh - Khatri</asp:ListItem>
                            <asp:ListItem>Sikh - Kshatriya</asp:ListItem>
                            <asp:ListItem>Sikh - Lubana</asp:ListItem>
                            <asp:ListItem>Sikh - Majabi</asp:ListItem>
                            <asp:ListItem>Sikh - Nai</asp:ListItem>
                            <asp:ListItem>Sikh - Others</asp:ListItem>
                            <asp:ListItem>Sikh - Rajput</asp:ListItem>
                            <asp:ListItem>Sikh - Ramdasia</asp:ListItem>
                            <asp:ListItem>Sikh - Ramgharia</asp:ListItem>
                            <asp:ListItem>Sikh - Ravidasia</asp:ListItem>
                            <asp:ListItem>Sikh - Saini</asp:ListItem>
                            <asp:ListItem>Sikh - Tonk Kshatriya</asp:ListItem>
                            <asp:ListItem>Sikh - Unspecified</asp:ListItem>
                            <asp:ListItem>Sikhwal Brahmin</asp:ListItem>
                            <asp:ListItem>Sindhi</asp:ListItem>
                            <asp:ListItem>Sindhi-Amil</asp:ListItem>
                            <asp:ListItem>Sindhi-Baibhand</asp:ListItem>
                            <asp:ListItem>Sindhi-Bhanusali</asp:ListItem>
                            <asp:ListItem>Sindhi-Bhatia</asp:ListItem>
                            <asp:ListItem>Sindhi-Chhapru</asp:ListItem>
                            <asp:ListItem>Sindhi-Dadu</asp:ListItem>
                            <asp:ListItem>Sindhi-Hyderabadi</asp:ListItem>
                            <asp:ListItem>Sindhi-Larai</asp:ListItem>
                            <asp:ListItem>Sindhi-Larkana</asp:ListItem>
                            <asp:ListItem>Sindhi-Lohana</asp:ListItem>
                            <asp:ListItem>Sindhi-Rohiri</asp:ListItem>
                            <asp:ListItem>Sindhi-Sahiti</asp:ListItem>
                            <asp:ListItem>Sindhi-Sakkhar</asp:ListItem>
                            <asp:ListItem>Sindhi-Sehwani</asp:ListItem>
                            <asp:ListItem>Sindhi-Shikarpuri</asp:ListItem>
                            <asp:ListItem>Sindhi-Thatai</asp:ListItem>
                            <asp:ListItem>Smartha Brahmin</asp:ListItem>
                            <asp:ListItem>Sonar</asp:ListItem>
                            <asp:ListItem>Soni</asp:ListItem>
                            <asp:ListItem>Sourashtra</asp:ListItem>
                            <asp:ListItem>Sozhiya Vellalar</asp:ListItem>
                            <asp:ListItem>Sri Vaishnava</asp:ListItem>
                            <asp:ListItem>Srisayana</asp:ListItem>
                            <asp:ListItem>Stanika Brahmin</asp:ListItem>
                            <asp:ListItem>Sugali (Naika)</asp:ListItem>
                           <asp:ListItem>Sunari</asp:ListItem>
                            <asp:ListItem>Sundhi</asp:ListItem>
                            <asp:ListItem>Surya Balija</asp:ListItem>
                            <asp:ListItem>Suthar</asp:ListItem>
                            <asp:ListItem>Swakula Sali</asp:ListItem>
                            <asp:ListItem>Tamboli</asp:ListItem>
                            <asp:ListItem>Tanti</asp:ListItem>
                            <asp:ListItem>Tantubai</asp:ListItem>
                            <asp:ListItem>Telaga</asp:ListItem>
                            <asp:ListItem>Teli</asp:ListItem>
                            <asp:ListItem>Thakkar</asp:ListItem>
                            <asp:ListItem>Thakore</asp:ListItem>
                            <asp:ListItem>Thakur</asp:ListItem>
                            <asp:ListItem>Thatai Sindhi</asp:ListItem>
                            <asp:ListItem>Thigala</asp:ListItem>
                            <asp:ListItem>Thiyya</asp:ListItem>
                            <asp:ListItem>Tili</asp:ListItem>
                            <asp:ListItem>Togata</asp:ListItem>
                            <asp:ListItem>Tonk Kshatriya</asp:ListItem>
                            <asp:ListItem>Urali Gounder</asp:ListItem>
                            <asp:ListItem>Urs</asp:ListItem>
                            <asp:ListItem>Turupu Kapu</asp:ListItem>                            
                            <asp:ListItem>Tyagi Brahmin</asp:ListItem>
                            <asp:ListItem>Vada Balija</asp:ListItem>
                            <asp:ListItem>Vaddera</asp:ListItem>
                            <asp:ListItem>Vaidiki Brahmin</asp:ListItem>
                            <asp:ListItem>Vaikhanasa Brahmin</asp:ListItem>
                            <asp:ListItem>Vaish</asp:ListItem>
                            <asp:ListItem>Vaishnav</asp:ListItem>
                            <asp:ListItem>Turupu Kapu</asp:ListItem>                            
                            <asp:ListItem>Tyagi Brahmin</asp:ListItem>
                            <asp:ListItem>Vaishnava</asp:ListItem>
                            <asp:ListItem>Vaishya</asp:ListItem>
                            <asp:ListItem>Vaishya Vani</asp:ListItem>
                            <asp:ListItem>Valluvan</asp:ListItem>
                            <asp:ListItem>Valmiki</asp:ListItem>
                            <asp:ListItem>Vania</asp:ListItem>
                            <asp:ListItem>Vanika Vyshya</asp:ListItem>
                            <asp:ListItem>Vaniya</asp:ListItem>
                            <asp:ListItem>Vanjara</asp:ListItem>
                            <asp:ListItem>Vanjari</asp:ListItem>
                            <asp:ListItem>Vankar</asp:ListItem>
                            <asp:ListItem>Vannar</asp:ListItem>
                            <asp:ListItem>Vannia Kula Kshatriyar</asp:ListItem>
                            <asp:ListItem>Variar</asp:ListItem>
                            <asp:ListItem>Varshney</asp:ListItem>
                            <asp:ListItem>Veera Saivam</asp:ListItem>
                            <asp:ListItem>Velaan</asp:ListItem>
                            <asp:ListItem>Velama</asp:ListItem>
                            <asp:ListItem>Velanadu Brahmin</asp:ListItem>
                            <asp:ListItem>Vellalar</asp:ListItem>
                            <asp:ListItem>Veluthedathu Nair</asp:ListItem>
                            <asp:ListItem>Vettuva Gounder</asp:ListItem>
                            <asp:ListItem>Vilakkithala Nair</asp:ListItem>
                            <asp:ListItem>Vishwakarma</asp:ListItem>
                            <asp:ListItem>Viswabrahmin</asp:ListItem>
                            <asp:ListItem>Vokkaliga</asp:ListItem>
                            <asp:ListItem>Vyas Brahmin</asp:ListItem>
                            <asp:ListItem>Vysya</asp:ListItem>
                            <asp:ListItem>Yadav</asp:ListItem>
                            <asp:ListItem>Yellapu</asp:ListItem>
                            <asp:ListItem>Don&#39;t wish to specify</asp:ListItem>
                    </asp:DropDownList>
                   
                    
                </td>
            <td class="style25">
                   
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="dropcaste" ErrorMessage="Please choose Caste" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                   
                    
                </td>
        </tr>
        <tr>
            <td class="style19">
                Maritial Status</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:RadioButtonList ID="rdbmarriagestatus" runat="server" 
                        RepeatDirection="Horizontal" Height="18px" Width="318px">
                        <asp:ListItem>Unmarriad</asp:ListItem>
                        <asp:ListItem>Widow/Widower</asp:ListItem>
                        <asp:ListItem>Separate</asp:ListItem>
                        <asp:ListItem>Divorce</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="rdbmarriagestatus" 
                        ErrorMessage="Please choose Maritial Status" ForeColor="Red" 
                        SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Have a Children</td>
            <td class="style17">
                :</td>
            <td class="style5">
                                        
                    <asp:DropDownList ID="dropchildren" runat="server" Height="16px" Width="303px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>No Children</asp:ListItem>
                        <asp:ListItem>Living with me</asp:ListItem>
                        <asp:ListItem>Not living with me</asp:ListItem>
                        <asp:ListItem>Meet me some times</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="dropchildren" ErrorMessage="Please choose Children" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style19">
                Country Living in</td>
            <td class="style16">
                :</td>
            <td>
                                        
                    <asp:DropDownList ID="dropcountry" runat="server" Height="16px" Width="302px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Afghanistan</asp:ListItem>
                        <asp:ListItem>Albania</asp:ListItem>
                        <asp:ListItem>Algeria</asp:ListItem>
                        <asp:ListItem>American Samoa</asp:ListItem>
                        <asp:ListItem>Andorra</asp:ListItem>
                        <asp:ListItem>Angola</asp:ListItem>
                        <asp:ListItem>Anguilla</asp:ListItem>
                        <asp:ListItem>Antarctica</asp:ListItem>
                        <asp:ListItem>Antigua and Barbuda</asp:ListItem>
                        <asp:ListItem>Argentina</asp:ListItem>
                        <asp:ListItem>Armenia</asp:ListItem>
                        <asp:ListItem>Aruba</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Austria</asp:ListItem>
                        <asp:ListItem>Azerbaijan</asp:ListItem>
                        <asp:ListItem>Bahamas</asp:ListItem>
                        <asp:ListItem>Bahrain</asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>Barbados</asp:ListItem>
                        <asp:ListItem>Belarus</asp:ListItem>
                        <asp:ListItem>Belgium</asp:ListItem>
                        <asp:ListItem>Belize</asp:ListItem>
                        <asp:ListItem>Benin</asp:ListItem>
                        <asp:ListItem>Bermuda</asp:ListItem>
                        <asp:ListItem>Bhutan</asp:ListItem>
                        <asp:ListItem>Bolivia</asp:ListItem>
                        <asp:ListItem>Bosnia and Herzegovina</asp:ListItem>
                        <asp:ListItem>Botswana</asp:ListItem>
                        <asp:ListItem>Bouvet Island</asp:ListItem>
                        <asp:ListItem>Brazil</asp:ListItem>
                        <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
                        <asp:ListItem>British Virgin Islands</asp:ListItem>
                        <asp:ListItem>Brunei</asp:ListItem>
                        <asp:ListItem>Bulgaria</asp:ListItem>
                        <asp:ListItem>Burkina Faso</asp:ListItem>
                        <asp:ListItem>Burundi</asp:ListItem>
                        <asp:ListItem>Cambodia</asp:ListItem>
                        <asp:ListItem>Cameroon</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>Cape Verde</asp:ListItem>
                        <asp:ListItem>Cayman Islands</asp:ListItem>
                        <asp:ListItem>Central African Republic</asp:ListItem>
                        <asp:ListItem>Chad</asp:ListItem>
                        <asp:ListItem>Chile</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Christmas Island</asp:ListItem>
                        <asp:ListItem>Cocos Islands</asp:ListItem>
                        <asp:ListItem>Colombia</asp:ListItem>
                        <asp:ListItem>Comoros</asp:ListItem>                                                                                              
                        <asp:ListItem>Congo</asp:ListItem>                                                                                              
                        <asp:ListItem>Cook Islands</asp:ListItem>                                                                                              
                        <asp:ListItem>Costa Rica</asp:ListItem>                                                                                              
                        <asp:ListItem>Croatia</asp:ListItem>                                                                                              
                        <asp:ListItem>Cuba</asp:ListItem>                                                                                              
                        <asp:ListItem>Cyprus</asp:ListItem>                                                                                              
                        <asp:ListItem>Czech Republic</asp:ListItem>                                                                                              
                        <asp:ListItem>Denmark</asp:ListItem>
                        <asp:ListItem>Djibouti</asp:ListItem>                                                                                              
                        <asp:ListItem>Dominica</asp:ListItem>                                                                                              
                        <asp:ListItem>Dominican Republic</asp:ListItem>                                                                                              
                        <asp:ListItem>East Timor</asp:ListItem>                                                                                              
                        <asp:ListItem>Ecuador</asp:ListItem>                                                                                              
                        <asp:ListItem>Egypt</asp:ListItem>                                                                                              
                        <asp:ListItem>El Salvador</asp:ListItem>                                                                                              
                        <asp:ListItem>Equatorial Guinea</asp:ListItem>                                                                                              
                        <asp:ListItem>Eritrea</asp:ListItem>                                                                                              
                        <asp:ListItem>Estonia</asp:ListItem>                                                                                              
                        <asp:ListItem>Ethiopia</asp:ListItem>                                                                                              
                        <asp:ListItem>Falkland Islands</asp:ListItem>                                                                                              
                        <asp:ListItem>Faroe Islands</asp:ListItem>                                                                                             
                        <asp:ListItem>Fiji</asp:ListItem>                                                                                             
                        <asp:ListItem>Finland</asp:ListItem>                                                                                             
                        <asp:ListItem>France</asp:ListItem>                                                                                             
                        <asp:ListItem>French Guiana</asp:ListItem>                                                                                             
                        <asp:ListItem>French Polynesia</asp:ListItem>                                                                                             
                        <asp:ListItem>French Southern Territories</asp:ListItem>                                                                                             
                        <asp:ListItem>Gabon</asp:ListItem>                                                                                             
                        <asp:ListItem>Georgia</asp:ListItem>                                                                                             
                        <asp:ListItem>Germany</asp:ListItem>                                                                                             
                        <asp:ListItem>Ghana</asp:ListItem>
                        <asp:ListItem>Gibraltar</asp:ListItem>                                                                                             
                        <asp:ListItem>Greece</asp:ListItem>                                                                                             
                        <asp:ListItem>Greenland</asp:ListItem>                                                                                             
                        <asp:ListItem>Grenada</asp:ListItem>                                                                                             
                        <asp:ListItem>Guadeloupe</asp:ListItem>                                                                                             
                        <asp:ListItem>Guam</asp:ListItem>                                                                                             
                        <asp:ListItem>Guatemala</asp:ListItem>                                                                                             
                        <asp:ListItem>Guinea</asp:ListItem>                                                                                             
                        <asp:ListItem>Guinea-Bissau</asp:ListItem>                                                                                             
                        <asp:ListItem>Guyana</asp:ListItem>                                                                                             
                        <asp:ListItem>Haiti</asp:ListItem>                                                                                             
                        <asp:ListItem>Heard and McDonald Islands</asp:ListItem>                                                                                             
                        <asp:ListItem>Honduras</asp:ListItem>                                                                                             
                        <asp:ListItem>Hongkong</asp:ListItem>                                                                                             
                        <asp:ListItem>Hungary</asp:ListItem>
                        <asp:ListItem>Iceland</asp:ListItem>                                                                                             
                        <asp:ListItem>India</asp:ListItem>                                                                                             
                        <asp:ListItem>Indonesia</asp:ListItem>                                                                                             
                        <asp:ListItem>Iran</asp:ListItem>                                                                                             
                        <asp:ListItem>Iraq</asp:ListItem>                                                                                             
                        <asp:ListItem>Ireland</asp:ListItem>                                                                                             
                        <asp:ListItem>Israel</asp:ListItem>                                                                                             
                        <asp:ListItem>Italy</asp:ListItem>                                                                                             
                        <asp:ListItem>Ivory Coast</asp:ListItem>                                                                                             
                        <asp:ListItem>Jamaica</asp:ListItem>                                                                                             
                        <asp:ListItem>Japan</asp:ListItem>                                                                                             
                        <asp:ListItem>Jordan</asp:ListItem>
                        <asp:ListItem>Kazakhstan</asp:ListItem>
                        <asp:ListItem>Kenya</asp:ListItem>
                        <asp:ListItem>Kiribati</asp:ListItem>
                        <asp:ListItem>Korea, North</asp:ListItem>
                        <asp:ListItem>Korea, South</asp:ListItem>
                        <asp:ListItem>Kuwait</asp:ListItem>
                        <asp:ListItem>Kyrgyzstan</asp:ListItem>
                        <asp:ListItem>Laos</asp:ListItem>
                        <asp:ListItem>Latvia</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                        <asp:ListItem>Lesotho</asp:ListItem>
                        <asp:ListItem>Liberia</asp:ListItem>
                        <asp:ListItem>Libya</asp:ListItem>
                        <asp:ListItem>Liechtenstein</asp:ListItem>
                        <asp:ListItem>Lithuania</asp:ListItem>
                        <asp:ListItem>Luxembourg</asp:ListItem>
                        <asp:ListItem>Macau</asp:ListItem>
                        <asp:ListItem>Macedonia</asp:ListItem>
                        <asp:ListItem>Madagascar</asp:ListItem>
                        <asp:ListItem>Malawi</asp:ListItem>
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>Maldives</asp:ListItem>
                        <asp:ListItem>Mali</asp:ListItem>
                        <asp:ListItem>Malta</asp:ListItem>
                        <asp:ListItem>Marshall Islands</asp:ListItem>
                        <asp:ListItem>Martinique</asp:ListItem>
                        <asp:ListItem>Mauritania</asp:ListItem>
                        <asp:ListItem>Mauritius</asp:ListItem>
                        <asp:ListItem>Mayotte</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                        <asp:ListItem>Micronesia, Federated States of</asp:ListItem>
                        <asp:ListItem>Moldova</asp:ListItem>
                        <asp:ListItem>Monaco</asp:ListItem>
                        <asp:ListItem>Mongolia</asp:ListItem>
                        <asp:ListItem>Montserrat</asp:ListItem>
                        <asp:ListItem>Morocco</asp:ListItem>
                        <asp:ListItem>Mozambique</asp:ListItem>
                        <asp:ListItem>Myanmar</asp:ListItem>
                        <asp:ListItem>Namibia</asp:ListItem>
                        <asp:ListItem>Nauru</asp:ListItem>
                        <asp:ListItem>Nepal</asp:ListItem>
                        <asp:ListItem>Netherlands</asp:ListItem>
                        <asp:ListItem>Netherlands Antilles</asp:ListItem>
                        <asp:ListItem>New Caledonia</asp:ListItem>
                        <asp:ListItem>New Zealand</asp:ListItem>
                        <asp:ListItem>Nicaragua</asp:ListItem>
                        <asp:ListItem>Niger</asp:ListItem>
                        <asp:ListItem>Nigeria</asp:ListItem>
                        <asp:ListItem>Niue</asp:ListItem>
                        <asp:ListItem>Norfolk Island</asp:ListItem>
                        <asp:ListItem>Northern Mariana Islands</asp:ListItem>
                        <asp:ListItem>Norway</asp:ListItem>
                        <asp:ListItem>Oman</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>Palau</asp:ListItem>
                        <asp:ListItem>Panama</asp:ListItem>
                        <asp:ListItem>Papua New Guinea</asp:ListItem>
                        <asp:ListItem>Paraguay</asp:ListItem>
                        <asp:ListItem>Peru</asp:ListItem>
                        <asp:ListItem>Philippines</asp:ListItem>
                        <asp:ListItem>Pitcairn Island</asp:ListItem>
                        <asp:ListItem>Poland</asp:ListItem>
                        <asp:ListItem>Portugal</asp:ListItem>
                        <asp:ListItem>Puerto Rico</asp:ListItem>
                        <asp:ListItem>Qatar</asp:ListItem>
                        <asp:ListItem>Reunion</asp:ListItem>
                        <asp:ListItem>Romania</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Rwanda</asp:ListItem>
                        <asp:ListItem>S. Georgia and S. Sandwich Isls.</asp:ListItem>
                        <asp:ListItem>Saint Lucia</asp:ListItem>
                        <asp:ListItem>Saint Vincent and The Grenadines</asp:ListItem>
                        <asp:ListItem>Samoa</asp:ListItem>
                        <asp:ListItem>San Marino</asp:ListItem>
                        <asp:ListItem>Sao Tome and Principe</asp:ListItem>
                        <asp:ListItem>Saudi Arabia</asp:ListItem>
                        <asp:ListItem>Senegal</asp:ListItem>
                        <asp:ListItem>Seychelles</asp:ListItem>
                        <asp:ListItem>Sierra Leone</asp:ListItem>
                        <asp:ListItem>Singapore</asp:ListItem>
                        <asp:ListItem>Slovakia</asp:ListItem>
                        <asp:ListItem>Slovenia</asp:ListItem>
                        <asp:ListItem>Somalia</asp:ListItem>
                        <asp:ListItem>South Africa</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                        <asp:ListItem>Sri Lanka</asp:ListItem>
                        <asp:ListItem>St. Helena</asp:ListItem>
                        <asp:ListItem>St. Pierre and Miquelon</asp:ListItem>
                        <asp:ListItem>Sudan</asp:ListItem>
                        <asp:ListItem>Suriname</asp:ListItem>
                        <asp:ListItem>Svalbard and Jan Mayen Islands</asp:ListItem>
                        <asp:ListItem>Swaziland</asp:ListItem>
                        <asp:ListItem>Sweden</asp:ListItem>
                        <asp:ListItem>Switzerland</asp:ListItem>
                        <asp:ListItem>Syria</asp:ListItem>
                        <asp:ListItem>Taiwan</asp:ListItem>            
                        <asp:ListItem>Tajikistan</asp:ListItem>            
                        <asp:ListItem>Tanzania</asp:ListItem>            
                        <asp:ListItem>Thailand</asp:ListItem>            
                        <asp:ListItem>Togo</asp:ListItem>            
                        <asp:ListItem>Tokelau</asp:ListItem>            
                        <asp:ListItem>Tonga</asp:ListItem>            
                        <asp:ListItem>Trinidad and Tobago</asp:ListItem>            
                        <asp:ListItem>Tunisia</asp:ListItem>            
                        <asp:ListItem>Turkey</asp:ListItem>            
                        <asp:ListItem>Turkmenistan</asp:ListItem>            
                        <asp:ListItem>Turks and Caicos Islands</asp:ListItem>            
                        <asp:ListItem>Tuvalu</asp:ListItem>            
                        <asp:ListItem>Uganda</asp:ListItem>
                        <asp:ListItem>Ukraine</asp:ListItem>
                        <asp:ListItem>United Arab Emirates</asp:ListItem>
                        <asp:ListItem>United Kingdom</asp:ListItem>
                        <asp:ListItem>United States of America</asp:ListItem>
                        <asp:ListItem>Uruguay</asp:ListItem>
                        <asp:ListItem>Uzbekistan</asp:ListItem>
                        <asp:ListItem>Vanuatu</asp:ListItem>
                        <asp:ListItem>Vatican City</asp:ListItem>
                        <asp:ListItem>Venezuela</asp:ListItem>
                        <asp:ListItem>Vietnam</asp:ListItem>
                        <asp:ListItem>Virgin Islands</asp:ListItem>
                        <asp:ListItem>Wallis and Futuna Islands</asp:ListItem>
                        <asp:ListItem>Western Sahara</asp:ListItem>
                        <asp:ListItem>Yemen</asp:ListItem>
                        <asp:ListItem>Yugoslavia (Former)</asp:ListItem>
                        <asp:ListItem>Zaire</asp:ListItem>
                        <asp:ListItem>Zambia</asp:ListItem>
                        <asp:ListItem>Zimbabwe</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="dropcountry" ErrorMessage="Please Select Country" 
                        ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style19">
                Mobile No</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:TextBox ID="txtmobile" runat="server" Width="301px"></asp:TextBox>
                    </td>
            <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtmobile" Display="Dynamic" 
                        ErrorMessage="Mobile number is not valid" ForeColor="Red" 
                        ValidationExpression="^[0-9]{10,12}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="reqmobileno" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="MobileNo is required" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                Email</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="301px"></asp:TextBox>
                </td>
            <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Please enter proper Email id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtemail" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    Display="Dynamic" ErrorMessage=" Please Enter Email" ForeColor="Red" 
                        ControlToValidate="txtemail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Password</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="301px"></asp:TextBox>
                </td>
            <td>
                    <asp:RequiredFieldValidator ID="reqpass" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Please Enter The Password" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
        </tr>
        <tr>
            <td class="style19">
                Confirm Password</td>
            <td class="style16">
                :</td>
            <td>
                    <asp:TextBox ID="txtconpass" runat="server" TextMode="Password" Width="301px"></asp:TextBox>
                </td>
            <td>
                    <asp:RequiredFieldValidator ID="reqconfirm" runat="server" 
                        ControlToValidate="txtconpass" ErrorMessage="Please enter the Confirm Password" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpassword" ControlToValidate="txtconpass" Display="Dynamic" 
                        ErrorMessage="password and confirm password not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                    <asp:Button ID="btnstep2" runat="server" onclick="btnstep2_Click"  
                        Text="Procced Step 2" BackColor="Black" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="36px" 
                        Width="145px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        onclick="Button1_Click" Text="Delete" Visible="False" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
