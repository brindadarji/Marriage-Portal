using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class editlocation_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from user_location", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                dropstate.Text=reader[1].ToString();
                txtcity.Text=reader[2].ToString();
                txtaddress.Text=reader[3].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update user_location set Residing_state='" + dropstate.SelectedItem.ToString() + "',Residing_city='" + txtcity.Text + "',Address='" + txtaddress.Text + "' where Registration_no='" + Session["rno"] + "'", con);
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