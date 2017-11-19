using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class sucessinsert_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        int ssid;
        SqlCommand cmd1 = new SqlCommand("select MAX(SSID) from user_success", con);
        if (cmd1.ExecuteScalar() == System.DBNull.Value)
        {

            ssid = 1;
        }
        else
        {
            ssid = Convert.ToInt32(cmd1.ExecuteScalar()) + 1;
        }
        fuploadsucess.SaveAs(Server.MapPath("~/UploadedData/" + fuploadsucess.FileName.ToString()));

        string img = "~/UploadedData/" + fuploadsucess.FileName.ToString();

        SqlCommand cmdinsert = new SqlCommand("insert into user_success(SSID,Photo,Bride_name,Groom_name,Description) values(" + ssid + ",'" + img + "','" + txtbride.Text + "','" + txtgroom.Text + "','" + txtdescription.Text + "')", con);
        cmdinsert.ExecuteNonQuery();
        Response.Redirect("sucessstoriesuser_admin.aspx");
        con.Close();
    }
}