using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class compose_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        int id;
        SqlCommand cmd1 = new SqlCommand("select MAX(Id) from user_message", con);
        if (cmd1.ExecuteScalar() == System.DBNull.Value)
        {

            id = 1;
        }
        else
        {
            id= Convert.ToInt32(cmd1.ExecuteScalar()) + 1;
        }
        if (lblto.Text == "")
        {
            lblsucess.Text = "Please click View Name to see the name of the person you want to message and then Send Message";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into user_message (ID,From_username,From_name,To_username,To_name,Message) values('" + id + "','" + Session["loginemail"] + "','" + Session["name"] + "','" + txtto.Text + "','" + lblto.Text + "','" + txtmessage.Text + "')", con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                lblsucess.Text = "Message sent";
            }
            else
            {
                lblsucess.Text = "Error while message sent";
            }
        }
        
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand c = new SqlCommand("select * from user_detail where Email='" + txtto.Text + "'", con);
        SqlDataReader reader = c.ExecuteReader();
        if (reader.Read())
        {
           lblto.Text= reader[2].ToString().ToUpper() + " " + reader[4].ToString().ToUpper();
        }
        lbldes.Text = "Name of Person is";
        con.Close();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_user.aspx");
    }
}