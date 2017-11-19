using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Register_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        if (e.CommandName == "Delete")
        {
            SqlCommand cmd = new SqlCommand("Delete from user_education where Registration_no='" + e.CommandArgument + "'", con);
            SqlCommand cmd1 = new SqlCommand("delete from user_location where Registration_no='" + e.CommandArgument + "'", con);
            SqlCommand cmd2 = new SqlCommand("delete from user_religious where Registration_no='" + e.CommandArgument + "'", con);
            SqlCommand cmd3 = new SqlCommand("delete from user_family where Registration_no='" + e.CommandArgument + "'", con);
            SqlCommand cmd4 = new SqlCommand("delete from user_otherinfo where Registration_no='" + e.CommandArgument + "'", con);
            SqlCommand cmd5 = new SqlCommand("delete from user_personal where Registration_no='" + e.CommandArgument + "'", con);
            SqlCommand cmd6 = new SqlCommand("delete from user_detail where Registration_no='" + e.CommandArgument + "'", con);

            if (cmd.ExecuteNonQuery() > 0 && cmd1.ExecuteNonQuery()>0 && cmd2.ExecuteNonQuery()>0 && cmd3.ExecuteNonQuery()>0 && cmd4.ExecuteNonQuery()>0 && cmd5.ExecuteNonQuery()>0 && cmd6.ExecuteNonQuery()>0)
            {
                lblsucess.Text = "Selected user was deleted";
            }
            GridView1.DataBind();
        }
        con.Close();
    }

   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["r"] = GridView1.SelectedRow.Cells[1].Text;
        lblsucess.Text = GridView1.SelectedRow.Cells[1].Text;
        Response.Redirect("admin_show_user_profile.aspx");

    }
}