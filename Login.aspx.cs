using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
         Session["loginemail"] = txtuname.Text;
        if (dropdownloginuser.SelectedItem.ToString() == "Registered User")
        {
            SqlCommand c1 = new SqlCommand("select * from user_detail where Email='" + txtuname.Text + "' and Password='" + txtpass.Text + "'", con);
            SqlDataReader reader = c1.ExecuteReader();
            if (reader.Read())
            {
                Session["rno"] = reader[0].ToString();
                Session["photo"]=reader[8].ToString();
                Session["name"] = reader[2].ToString().ToUpper() + " " + reader[4].ToString().ToUpper();
                Response.Redirect("home_user.aspx");
            }
            else
            {
                lblsign.Text = "Username or password incorrect";
            }
        }
        else if (dropdownloginuser.SelectedItem.ToString() == "Admin")
        {
            SqlCommand c1 = new SqlCommand("select * from Admin_create_user where EmailID='" + txtuname.Text + "' and Password='" + txtpass.Text + "'",con);
            SqlDataReader reader = c1.ExecuteReader();
            if (reader.Read())
            {
                Session["name"] = reader[1].ToString().ToUpper();
                Session["photo"]=reader[6].ToString();
                Response.Redirect("home_admin.aspx");
            }
            else
            {
                lblsign.Text = "Username or password incorrect";
            }
        }
        else
        {
            lblsign.Text = "please select user";
        }
        
    
        con.Close();
    }
}