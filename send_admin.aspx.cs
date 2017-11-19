using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class send_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        if (dropuser.SelectedItem.ToString() == "Admin")
        {
            if (e.CommandName == "Delete")
            {
                SqlCommand cmd = new SqlCommand("Delete from admin_message where ID='" + e.CommandArgument + "'", con);

                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblsucess.Text = "Selected mail deleted";
                }
                GridView1.DataBind();
            }
        }
        if (dropuser.SelectedItem.ToString() == "Registered User")
        {
            if (e.CommandName == "Delete")
            {
                SqlCommand cmd = new SqlCommand("Delete from user_message where ID='" + e.CommandArgument + "'", con);

                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblsucess.Text = "Selected mail deleted";
                }
                GridView2.DataBind();
            }
        }

        con.Close();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (dropuser.SelectedItem.ToString() == "--Select User--")
        {
            GridView2.Visible = false;
            lblsucess.Text = "Please select User";
            GridView1.Visible = false;
        }
        if (dropuser.SelectedItem.ToString() == "Admin")
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
        }
        if (dropuser.SelectedItem.ToString() == "Registered User")
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
        }
    }
}