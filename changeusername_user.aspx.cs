using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class changeusername_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        txtolduname.Text = Session["loginemail"].ToString();
    }
    protected void btnuname_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand check1 = new SqlCommand("select * from user_detail", con);
        SqlDataReader reader = check1.ExecuteReader();
        if (reader.Read())
        {
            if(txtnewuname.Text==reader[16].ToString())
            {
                lbluname.Text = "Email is already exist please enter another email";
            }
            else
            {
                reader.Close();
                SqlCommand cmd = new SqlCommand("update user_detail set Email='" + txtnewuname.Text + "' where Email='" + Session["loginemail"] + "'", con);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    lbluname.Text = "Your Username changed sucessfully";
                }
                else
                {
                    lbluname.Text = "Your Username not changed sucessfully";

                }
            }
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_user.aspx");
    }
}