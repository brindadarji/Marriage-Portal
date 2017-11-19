using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class changepassword_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpassword_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select Password from user_detail where Email='" + Session["loginemail"] + "'", con);

        string pwd = Convert.ToString(cmd1.ExecuteScalar());
        if (pwd != txtoldpassword.Text)
        {
            lblchangepassword.Text = "Old Password is not match";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("update user_detail set Password='" + txtnewpassword.Text + "' where Email='" + Session["loginemail"] + "' and Password='" + txtoldpassword.Text + "'", con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                lblchangepassword.Text = "Your Password changed Sucessfully";
            }
            else
            {
                lblchangepassword.Text = "Your Password not changed Sucessfully";
            }
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_user.aspx");
    }
}