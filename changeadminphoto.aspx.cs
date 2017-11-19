using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class changeadminphoto : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        imgoldphoto.ImageUrl = Session["photo"].ToString();
    }
    protected void btnchangephoto_Click(object sender, EventArgs e)
    {
        con.Open();
        fuploadnewphoto.SaveAs(Server.MapPath("~/admin_images/" + fuploadnewphoto.FileName.ToString()));
        string img = "~/admin_images/" + fuploadnewphoto.FileName.ToString();

        SqlCommand cmd = new SqlCommand("update Admin_create_user set Photo='" + img + "' where EmailID='" + Session["loginemail"] + "'", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            lblchangephoto.Text = "Your Photo changed Sucessfully ";
        }
        else
        {
            lblchangephoto.Text = "Your Photo not changed Sucessfully ";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_admin.aspx");
    }
}