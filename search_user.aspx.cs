using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class search_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    string gender;
    DataSet ds1 = new DataSet();
   
    protected void btnsearch_Click1(object sender, EventArgs e)
    {
        con.Open();
        try
        {   
            if (droplookingfor.SelectedItem.ToString() == "Bride")
            {
                gender = "Female";
            }
            else if (droplookingfor.SelectedItem.ToString() == "Groom")
            {
                gender = "Male";
            }
            
            string str1 = "Select user_detail.Registration_no , Photo,First_name,Age,Country_living_in ,Residing_city from user_detail , user_personal,user_location , user_family where Gender='" + gender + " 'AND Age  Between'" + DropDownList1.SelectedItem.ToString() + "'AND'" + DropDownList2.SelectedItem.ToString();
            if (dropreligion.SelectedIndex != 0)
            {
                str1 = str1 + "'AND user_detail.Religion='" + dropreligion.SelectedItem.ToString();
            }
            if (dropmothertounge.SelectedIndex != 0)
            {
                str1 = str1 + "'AND  user_detail.Mother_tounge='" + dropmothertounge.SelectedItem.ToString();
            }

            if (dropcaste.SelectedIndex != 0)
            {
                str1 = str1 + "'AND user_detail.Caste= '" + dropcaste.SelectedItem.ToString();
            }

            if (dropcountry.SelectedIndex != 0)
            {
                str1 = str1 + "'AND user_detail.Country_living_in='" + dropcountry.SelectedItem.ToString();
            }
            if (txtcity.Text != "")
            {
                str1 = str1 + "'AND user_location.Residing_city ='" + txtcity.Text;
            }
            if (rdbcomplexion.Text == "")
            {
                str1 = str1 + "";
            }
            else
            {
                str1 = str1 + "'AND user_personal.Complexion= '" + rdbcomplexion.SelectedItem.ToString();
            }
            if (rdbfamilystatus.Text == "")
            {
                str1 = str1 + "";
            }
            else
            {
                str1 = str1 + "'AND user_family.Family_status= '" + rdbfamilystatus.SelectedItem.ToString();
            }

            str1=str1+"' AND user_detail.Registration_no=user_location.Registration_no AND user_detail.Registration_no=user_family.Registration_no AND user_detail.Registration_no=user_personal.Registration_no ";



            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
        catch(Exception ex)
        {
            lblsucess.Text = ex.Message;
        }
    }
    protected void gridsearch_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        e.Row.Cells[3].Visible = false;
    }

    

    protected void gridsearch_SelectedIndexChanged(object sender, EventArgs e)
    {


        con.Open();
        Session["rnosearch"] = gridsearch.SelectedRow.Cells[2].Text;
        lblsucess.Text = gridsearch.SelectedRow.Cells[2].Text;

        Response.Redirect("user_show_user_profile.aspx");
    }
}