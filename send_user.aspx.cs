using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class send_user : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Delete from user_message where ID='" + e.CommandArgument + "'", con);

            if (cmd.ExecuteNonQuery() > 0)
            {
                lblsucess.Text = "Selected mail deleted";
            }
            GridView1.DataBind();
        }
        con.Close();
    }
}