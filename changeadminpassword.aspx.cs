using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_changeadminpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_admin.aspx");
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("select Password from Admin_create_user where EmailID='" + Session["loginemail"] + "'", con);
        
        string pwd = Convert.ToString(cmd.ExecuteScalar());
        if (pwd != txtpass.Text)
        {
            lblchangepass.Text = "Old Password is not match";
        }
        else
        {
            cmd = new SqlCommand("update Admin_create_user set password='" + txtnewpass.Text + "'", con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                lblchangepass.Text = "Change Successfully";
            }
            else
            {
                lblchangepass.Text = "Error While update ";
            }
        }
        con.Close();
    }
       
 }