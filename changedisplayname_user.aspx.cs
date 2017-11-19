using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class changedisplayname_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand c = new SqlCommand("select * from user_detail where Email='" + Session["loginemail"] + "'", con);
        SqlDataReader reader1 = c.ExecuteReader();
        if (reader1.Read())
        {
            txtoldnameuser.Text = reader1[2].ToString();
        }
        con.Close();
    }
    protected void btnname_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update user_detail set First_name='" + txtnewnameuser.Text + "' where Email='" + Session["loginemail"] + "'", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            lblchangename.Text = "Your Name changed Sucessfully";
        }
        else
        {
            lblchangename.Text = "Your Name not changed Sucessfully";
        }

        con.Close();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_user.aspx");
    }
}