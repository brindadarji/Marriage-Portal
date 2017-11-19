using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Admin_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void gridadminuser_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        con.Open();
        if (e.CommandName == "Delete")
        {
            SqlCommand cmd = new SqlCommand("Delete from Admin_create_user where ID='" + e.CommandArgument + "'", con);

            if (cmd.ExecuteNonQuery() > 0)
            {
                lblsucess.Text = "Selected user was deleted";
            }
            gridadminuser.DataBind();
        }
        con.Close();
    }
    protected void gridadminuser_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["idadmin"] = gridadminuser.SelectedRow.Cells[1].Text;
        lblsucess.Text = gridadminuser.SelectedRow.Cells[1].Text;
        Response.Redirect("admin_show_admin_profile.aspx");
    }
   
}