using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class editprofile_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin_create_user", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtname.Text = reader[1].ToString();
                txtmobileno.Text = reader[2].ToString();
                txtemail.Text = reader[3].ToString();
                txtaddress.Text=reader[4].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
    protected void btncreateuser_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update Admin_create_user set UserName='" + txtname.Text.ToString() + "',MobileNo='" + txtmobileno.Text + "',EmailID='" +  txtemail.Text + "',Address='" + txtaddress.Text + "' where EmailID='" + Session["loginemail"] + "'", con);
        if (cmd1.ExecuteNonQuery() > 0)
        {
            lblsucess.Text = "profile update sucessfully";
        }
        else
        {
            lblsucess.Text = "profile not update sucessfully";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_admin.aspx");
    }
}