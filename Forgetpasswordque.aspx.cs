using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Forgetpasswordque : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select user_detail.Email,user_otherinfo.Question1,user_otherinfo.Answer1,user_otherinfo.Question2,user_otherinfo.Answer2 from user_detail inner join user_otherinfo on user_detail.Registration_no=user_otherinfo.Registration_no where Email='" + Session["useremail"] + "'", con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            lblque1.Text=reader[1].ToString();
            lblque2.Text=reader[3].ToString();
        }
        con.Close();
    }
    protected void btnsubmitanswer_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select user_detail.Email,user_otherinfo.Question1,user_otherinfo.Answer1,user_otherinfo.Question2,user_otherinfo.Answer2 from user_detail inner join user_otherinfo on user_detail.Registration_no=user_otherinfo.Registration_no where Email='" + Session["useremail"] + "'", con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            if (txtanswer1.Text == reader[2].ToString() && txtanswer2.Text == reader[4].ToString())
            {
                Response.Redirect("forgetchangepassword.aspx");
            }
            else
            {
                lblerror.Text = "You Given wrong answer";
            }
        }
        con.Close();
    }
}