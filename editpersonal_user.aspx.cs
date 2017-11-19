using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class editpersonal_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from user_personal", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtaboutme.Text = reader[1].ToString();
                txtaboutpartner.Text = reader[2].ToString();
                txthobbbies.Text = reader[3].ToString();
                txtheight.Text = reader[4].ToString();
                rdbphysical.Text = reader[5].ToString();
                rdbcomplexion.Text = reader[6].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update user_personal set About_Me='" + txtaboutme.Text + "',About_partner='" + txtaboutpartner.Text + "',Hobbies='" + txthobbbies.Text + "',physical_injury='" + rdbphysical.SelectedItem.ToString() + "',Complexion='" + rdbcomplexion.SelectedItem.ToString() + "' where Registration_no='" + Session["rno"] + "'", con);
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