using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class home_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string email = "@CustomerCare";
        SqlCommand cmd = new SqlCommand("select MAX(Registration_no) from user_detail", con);
        cmd.ExecuteScalar();
        totalregistereduser.Text = cmd.ExecuteScalar().ToString();
        SqlCommand cmd1 = new SqlCommand("Select MAX(ID) from Admin_create_user", con);
        cmd1.ExecuteScalar();
        totaladminuser.Text = cmd1.ExecuteScalar().ToString();
        SqlCommand cmd2 = new SqlCommand("select count(ID) from admin_message where To_uname='" + Session["loginemail"] + "'", con);
        cmd2.ExecuteScalar();
        totalmessage.Text = cmd2.ExecuteScalar().ToString();
        SqlCommand cmd3 = new SqlCommand("Select count(ID) from admin_message where From_uname='" + Session["loginemail"] +"'", con);
        int c=Convert.ToInt32(cmd3.ExecuteScalar().ToString());
        SqlCommand cmd4 = new SqlCommand("Select count(ID) from user_message where From_username='" + email + "'", con);
        int c2 = Convert.ToInt32(cmd4.ExecuteScalar().ToString());
        int total=c+c2;
        totalsent.Text =total.ToString() ;
        con.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        string str1;
        DataSet ds1 = new DataSet();
        str1 = "select user_detail.Registration_no,user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_location.Residing_state from user_detail inner join user_location on user_detail.Registration_no=user_location.Registration_no where First_name = '" + txtsearch.Text + "'";
        SqlDataAdapter ad = new SqlDataAdapter(str1, con);
        ad.Fill(ds1);
        gridsearch.DataSource = ds1;
        gridsearch.DataBind();
        con.Close();
    }
    
    protected void gridsearch_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[3].Visible = false;
    }
    protected void gridsearch_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["r"] = gridsearch.SelectedRow.Cells[2].Text;
        Response.Redirect("admin_show_user_profile.aspx");
    }
}