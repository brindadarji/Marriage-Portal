using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System;
using System.Collections;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Forgetpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["useremail"] = txtforgetpass.Text;
    }
    protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
    {
        MailMessage mm = new MailMessage();
        mm.From = e.Message.From;

        mm.Subject = e.Message.Subject.ToString();

        mm.To.Add(e.Message.To[0]);

        mm.Body = e.Message.Body;
        SmtpClient smtp = new SmtpClient();
        smtp.EnableSsl = true;

        smtp.Send(mm);
        e.Cancel = true;
    
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        
        SqlCommand cmd1 = new SqlCommand("select * from user_detail",con );
        SqlDataReader reader = cmd1.ExecuteReader();
        while (reader.Read())
        {
            
                if (txtforgetpass.Text == reader[16].ToString())
                {

                    Response.Redirect("Forgetpasswordque.aspx");
                }
                else
                {
                    lbl.Text = "Email Id is not Valid";
                }
               
        }
        reader.Close();
        SqlCommand cmd2 = new SqlCommand("select * from admin_create_user", con);
        SqlDataReader reader1 = cmd2.ExecuteReader();
                while (reader1.Read())
                {
                    if (txtforgetpass.Text == reader1[3].ToString())
                    {
                        Response.Redirect("forgetchangepassword.aspx");

                    }
                    else
                    {
                        lbl.Text = "Email Id is not Valid";
                    }
                }
        reader1.Close();
                
        con.Close();
    }
}