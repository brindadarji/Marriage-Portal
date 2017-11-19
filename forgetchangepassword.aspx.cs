using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class forgetchangepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd=new SqlCommand("select * from user_detail where Email='" + Session["useremail"] + "'" ,con);
        SqlDataReader r = cmd.ExecuteReader();
        if (r.Read())
        {
            if (txtold.Text == r[17].ToString())
            {
               
                SqlCommand c = new SqlCommand("update user_detail set Password='" + txtretypepassword.Text + "' where Email='" + Session["useremail"] + "'", con);
                r.Close();
                if (c.ExecuteNonQuery() > 0)
                {
                    lbl.Text = "Your Password change sucessfully";
                }
                else
                {
                    lbl.Text = "Not changed";
                }

            }
            else
            {
                lbl.Text = "Your old password is wrong";
            }
        }
       
        con.Close();
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from admin_create_user where EmailID='" + Session["useremail"] + "'", con);
        SqlDataReader r1 =cmd2.ExecuteReader();
        if (r1.Read())
        {
            if (txtold.Text == r1[5].ToString())
            {
               
                
                SqlCommand c1 = new SqlCommand("Update Admin_create_user set Password='" + txtretypepassword.Text + "' where EmailID='" + Session["useremail"] + "'", con);
                r1.Close();
                if (c1.ExecuteNonQuery() > 0)
                {
                    lbl.Text = "Password Change Sucessfully";
                }
                else
                {
                    lbl.Text = "Not Changed";
                }

            }
            else
            {
                lbl.Text = "Your old password is wrong";
            }

        }
       
       con.Close(); 
    }
}