using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_createUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());     
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncreateuser_Click(object sender, EventArgs e)
    {
        
                con.Open();
                int aid;
                SqlCommand cmd1 = new SqlCommand("select MAX(ID) from Admin_create_user", con);
                if (cmd1.ExecuteScalar() == System.DBNull.Value)
                {
                    aid = 1;
                }
                else
                {
                    aid = Convert.ToInt32(cmd1.ExecuteScalar()) + 1;

                }

                fuploadadmin.SaveAs(Server.MapPath("~/admin_images/" + fuploadadmin.FileName.ToString()));
                string img = "~/admin_images/" + fuploadadmin.FileName.ToString();
                SqlCommand cmd =new SqlCommand( "insert into Admin_create_user(ID,UserName,MobileNo,EmailID,Address,Password,Photo) values('" + aid + "','" + txtname.Text + "','" + txtmobileno.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + txtpass.Text + "','" + img + "')",con);

                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblsucess.Text = "Data Inserted";
                    Response.Redirect("Admin_user.aspx");
                }
        }

    
protected void  btnclear_Click(object sender, EventArgs e)
{
    txtname.Text="";
    txtmobileno.Text="";
    txtemail.Text= "";
    txtpass.Text = "";
    txtconfirm.Text="";
    txtaddress.Text = "";
}
protected void Button1_Click(object sender, EventArgs e)
{
    con.Open();
    SqlCommand cmd = new SqlCommand("delete from Admin_create_user");
    cmd.ExecuteNonQuery();
    con.Close();
}
}

