using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class changephoto_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        imgoldphoto.ImageUrl = Session["photo"].ToString();
    }
    protected void btnchangephoto_Click(object sender, EventArgs e)
    {
        con.Open();
        fuploadnewphoto.SaveAs(Server.MapPath("~/Registration_image/" + fuploadnewphoto.FileName.ToString()));
        string img = "~/Registration_image/" + fuploadnewphoto.FileName.ToString();
        
        SqlCommand cmd = new SqlCommand("update user_detail set Photo='" + img + "' where Email='" + Session["loginemail"] + "'", con);
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
        Response.Redirect("home_user.aspx");
    }
}