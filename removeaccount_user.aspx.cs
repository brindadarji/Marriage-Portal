using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class removeaccount_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_user.aspx");
    }
    protected void btnremove_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd=new SqlCommand("delete from user_personal where Registration_no='" + Session["rno"] + "'",con);
        cmd.ExecuteNonQuery();
        SqlCommand cmd1 = new SqlCommand("delete from user_education where Registration_no='" + Session["rno"] + "'", con);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand("delete from user_location where Registration_no='" + Session["rno"] + "'", con);
        cmd3.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("delete from user_family where Registration_no='" + Session["rno"] + "'", con);
        cmd4.ExecuteNonQuery();
        SqlCommand cmd5 = new SqlCommand("delete from user_religious where Registration_no='" + Session["rno"] + "'", con);
        cmd5.ExecuteNonQuery();
        SqlCommand cmd6 = new SqlCommand("delete from user_otherinfo where Registration_no='" + Session["rno"] + "'", con);
        cmd6.ExecuteNonQuery();
        SqlCommand cmd7 = new SqlCommand("delete from user_detail where Registration_no='" + Session["rno"] + "'", con);
        cmd7.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login.aspx");

    }
}