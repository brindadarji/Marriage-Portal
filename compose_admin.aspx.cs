using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class compose_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();

        int id;
        if (dropuser.SelectedItem.ToString() == "Admin")
        {
            SqlCommand cmd1 = new SqlCommand("select MAX(Id) from admin_message", con);
            if (cmd1.ExecuteScalar() == System.DBNull.Value)
            {

                id = 1;
            }
            else
            {
                id = Convert.ToInt32(cmd1.ExecuteScalar()) + 1;
            }

            SqlCommand cmd = new SqlCommand("insert into admin_message (ID,From_uname,To_uname,Message) values('" + id + "','" + Session["loginemail"] + "','" + txtto.Text + "','" + txtmessage.Text + "')", con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                lblsucess.Text = "Message sent";
            }
            else
            {
                lblsucess.Text = "Error while message sent";
            }
         }
        if (dropuser.SelectedItem.ToString() == "Registered User")
        {
            SqlCommand cmd1 = new SqlCommand("select MAX(ID) from user_message", con);
            if (cmd1.ExecuteScalar() == System.DBNull.Value)
            {

                id = 1;
            }
            else
            {
                id = Convert.ToInt32(cmd1.ExecuteScalar()) + 1;
            }

            string email = "@CustomerCare";
            SqlCommand cmd = new SqlCommand("insert into user_message (ID,From_username,To_username,Message) values('" + id + "','" + email + "','" + txtto.Text + "','" + txtmessage.Text + "')", con);
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_admin.aspx");
    }
}