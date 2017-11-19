using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }
    protected void btnstep2_Click(object sender, EventArgs e)
    {
       
            con.Open();
            int register_no;
            SqlCommand cmd1 = new SqlCommand("select MAX(Registration_no) from user_detail", con);
            if (cmd1.ExecuteScalar() == System.DBNull.Value)
            {

                register_no = 1;
            }
            else
            {
                register_no = Convert.ToInt32(cmd1.ExecuteScalar()) + 1;
            }

            Session["regino"] = register_no;
            string dob = dropmonth.SelectedItem.ToString() + "/" + txtdate.Text + "/" + dropyear.SelectedItem.ToString();
            string img = "~/Registration_image/" + Session["pic"].ToString();

            SqlCommand cmd = new SqlCommand("insert into user_detail(Registration_no,Profile_created_by,First_name,Middle_name,Last_name,Gender,Date_of_birth,Age,Photo,Religion,Mother_tounge,Caste,Maritial_status,Have_a_children,Country_living_in,Mobile_no,Email,Password) values('" + register_no + "','" + rdblistprofilecreated.SelectedItem.ToString() + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + rdbgender.SelectedItem.ToString() + "','" + dob + "','" + lblage.Text + "','" + img + "','" + dropreligion.SelectedItem.ToString() + "','" + dropmothertounge.SelectedItem.ToString() + "','" + dropcaste.SelectedItem.ToString() + "','" + rdbmarriagestatus.SelectedItem.ToString() + "','" + dropchildren.SelectedItem.ToString() + "','" + dropcountry.SelectedItem.ToString() + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtconpass.Text + "')", con);

            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Redirect("Registration1.aspx");
            }
            else
            {
                lblinsert.Text = "Error while Registration";

            }
            con.Close();
       
      }
           
           
      
   
    protected void dropyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        string birthyear = dropyear.SelectedItem.ToString();
        int curyear = DateTime.Now.Year;
        int year = Convert.ToInt32(birthyear);
        int age = curyear - year;
        lblage.Text = age.ToString();
        lblagedesc.Text = "Your age is:";
    }
    //protected void btnupload_Click(object sender, EventArgs e)
    //{
    //    if (fuploadregistration.HasFile)
    //    {
    //        string[] stdext = { ".jpg", ".jpeg", ".bmp", ".png", ".gif" };
    //        string fileExt = "";
    //        fileExt = System.IO.Path.GetExtension(fuploadregistration.FileName.ToLower());
    //        Boolean fileOK = false;
    //        int i;
    //        for (i = 0; i < stdext.Length; i++)
    //        {
    //            if (fileExt == stdext[i])
    //            {
    //                fileOK = true;
    //            }
    //        }
    //        if (fileOK == true)
    //        {

    //            fuploadregistration.SaveAs(Server.MapPath("~/UploadedData/" + fuploadregistration.FileName.ToString()));
    //            lblimage.Text = "File Upload Successfully ! ";
    //            Image2.Visible = true;
    //            Image2.ImageUrl = "~/UploadedData/" + fuploadregistration.FileName.ToString();
    //        }
    //        else
    //        {
    //            lblimage.Text = "Image file format is not valid ! ";
    //        }

    //    }
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("delete from user_detail", con);
        c1.ExecuteNonQuery();
        lblinsert.Text = "DAta deleted successfully";
        con.Close();
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        Session["pic"] = fuploadregistration.FileName.ToString();
        if (fuploadregistration.HasFile)
        {
            string[] stdext = { ".jpg", ".jpeg", ".bmp", ".png", ".gif" };
            string fileExt = "";
            fileExt = System.IO.Path.GetExtension(fuploadregistration.FileName.ToLower());
            Boolean fileOK = false;
            int i;
            for (i = 0; i < stdext.Length; i++)
            {
                if (fileExt == stdext[i])
                {
                    fileOK = true;
                }
            }
            if (fileOK == true)
            {

                fuploadregistration.SaveAs(Server.MapPath("~/Registration_image/" + fuploadregistration.FileName.ToString()));
                lblimage.Text = "File Upload Successfully ! ";
            }
            else
            {
                lblimage.Text = "Image file format is not valid ! ";
            }
        }
    }
}