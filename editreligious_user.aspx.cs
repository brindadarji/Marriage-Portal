using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class editreligious_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from user_religious", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtbirthplace.Text=reader[1].ToString();
                txtbirthtime.Text=reader[2].ToString();
                droprashi.Text=reader[3].ToString();
                rdbmanglik.Text=reader[4].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update user_religious set Birth_place='" + txtbirthplace.Text + "',Birth_time='" + txtbirthtime.Text + "',Rashi='" + droprashi.SelectedItem.ToString() + "',Manglik='" + rdbmanglik.SelectedItem.ToString() + "' where Registration_no='" + Session["rno"] + "'", con);
        if (cmd1.ExecuteNonQuery() > 0)
        {
            lbl.Text = "profile update sucessfully";
        }
        else
        {
            lbl.Text = "profile not update sucessfully";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_user.aspx");
    }
}