using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class editfamily_user : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from user_family", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtfather.Text=reader[1].ToString();
                txtmother.Text=reader[2].ToString();
                drpnoofbrothers.Text=reader[3].ToString();
                drpnoofsister.Text=reader[4].ToString();
                txtfathercontact.Text=reader[5].ToString();
                rdbfamilystatus.Text=reader[6].ToString();
                txtfatherbusiness.Text=reader[7].ToString();
                txtmotherbusiness.Text=reader[8].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update user_family set Father_name='" + txtfather.Text + "',Mother_name='" + txtmother.Text + "',No_of_brothers='" + drpnoofbrothers.SelectedItem.ToString() + "',No_of_sisters='" + drpnoofsister.SelectedItem.ToString() + "',Father_contact_no='" + txtfathercontact.Text + "',Family_status='" +  rdbfamilystatus.SelectedItem.ToString() + "',Father_business='" + txtfatherbusiness.Text + "',Mother_business='" + txtmotherbusiness.Text + "' where Registration_no='" + Session["rno"] + "'", con);
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