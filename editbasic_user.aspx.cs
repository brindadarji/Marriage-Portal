using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class editbasic_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString()); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from user_detail", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                dropreligion.Text = reader[9].ToString();
                dropcaste.Text = reader[11].ToString();
                dropmothertounge.Text = reader[10].ToString();
                dropchildren.Text = reader[13].ToString();
                rdbmarriagestatus.Text = reader[12].ToString();
                dropcountry.Text = reader[14].ToString();
                txtmname.Text = reader[3].ToString();
                txtlname.Text = reader[4].ToString();
                txtmobile.Text = reader[15].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
    protected void btnupdatebasic_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update user_detail set Middle_name='" + txtmname.Text + "',Last_name='" + txtlname.Text + "',Religion='" + dropreligion.SelectedItem.ToString() + "',Mother_tounge='" + dropmothertounge.SelectedItem.ToString() + "',Caste='" + dropcaste.SelectedItem.ToString() + "',Maritial_status='" + rdbmarriagestatus.SelectedItem.ToString() + "',Have_a_children='" + dropchildren.SelectedItem.ToString() + "',Country_living_in='" + dropcountry.SelectedItem.ToString() + "',Mobile_no='" + txtmobile.Text + "' where Email='" + Session["loginemail"] +"'", con);
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