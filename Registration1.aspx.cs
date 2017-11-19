using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Registration1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregistration1_Click(object sender, EventArgs e)
    {
       
        string state;
        if (dropstate.SelectedItem.ToString() == "Other")
        {
           
            state = txtstate.Text.ToString();
        }
        else
        {
            
            state = dropstate.SelectedItem.ToString();
        }
            SqlCommand cmdpersonal = new SqlCommand("insert into user_personal(Registration_no,About_me,About_Partner,Hobbies,Height,Physical_injury,Complexion) values('" + Session["regino"] + "','" + txtaboutme.Text + "','" + txtaboutpartner.Text + "','" + txthobbbies.Text + "','" + txtheight.Text + "','" + rdbphysical.SelectedItem.ToString() + "','" + rdbcomplexion.SelectedItem.ToString() + "')", con);

            SqlCommand cmdlocation = new SqlCommand("insert into user_location(Registration_no,Residing_state,Residing_city,Address) values('" + Session["regino"] + "','" + state + "','" + txtcity.Text + "','" + txtaddress.Text + "')", con);

            SqlCommand cmdreligious = new SqlCommand("insert into user_religious(Registration_no,Birth_place,Birth_time,Rashi,Manglik) values('" + Session["regino"] + "','" + txtbirthplace.Text + "','" + txtbirthtime.Text + "','" + droprashi.SelectedItem.ToString() + "','" + rdbmanglik.SelectedItem.ToString() + "')", con);

            SqlCommand cmdeducation = new SqlCommand("insert into user_education(Registration_no,Highest_education,Employee_in,Profession,Monthly_income) values('" + Session["regino"] + "','" + txthighesteducation.Text + "','" + rdbemployeein.SelectedItem.ToString() + "','" + txtprofession.Text + "','" + txtincome.Text + "')", con);

            SqlCommand cmdfamily = new SqlCommand("insert into user_family(Registration_no,Father_name,Mother_name,No_of_brothers,No_of_sisters,Father_contact_no,Family_status,Father_business,Mother_business)values('" + Session["regino"] + "','" + txtfather.Text + "','" + txtmother.Text + "','" + drpnoofbrothers.SelectedItem.ToString() + "','" + drpnoofsister.SelectedItem.ToString() + "','" + txtfathercontact.Text + "','" + rdbfamilystatus.SelectedItem.ToString() + "','" + txtfatherbusiness.Text + "','" + txtmotherbusiness.Text + "')", con);

            SqlCommand cmdother = new SqlCommand("insert into user_otherinfo(Registration_no,Question1,Answer1,Question2,Answer2) values('" + Session["regino"] + "','" + txtque1.Text + "','" + txtans1.Text + "','" + txtque2.Text + "','" + txtans2.Text + "')", con);
            con.Open();

            if (cmdpersonal.ExecuteNonQuery() > 0 && cmdlocation.ExecuteNonQuery() > 0 && cmdreligious.ExecuteNonQuery() > 0 && cmdeducation.ExecuteNonQuery() > 0 && cmdfamily.ExecuteNonQuery() > 0 && cmdother.ExecuteNonQuery() > 0)
            {
                lblinsert.Text = "Registered Successfully";
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblinsert.Text = "Registered Fail";
            }
     
        con.Close();
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand c = new SqlCommand("delete from user_personal", con);
        c.ExecuteNonQuery();
        SqlCommand c1 = new SqlCommand("delete from user_education", con);
        c1.ExecuteNonQuery();
        SqlCommand c2 = new SqlCommand("delete from user_family ", con);
        c2.ExecuteNonQuery();
        SqlCommand c3 = new SqlCommand("delete from user_location ", con);
        c3.ExecuteNonQuery();
        SqlCommand c4 = new SqlCommand("delete from user_religious ", con);
        c4.ExecuteNonQuery();
        SqlCommand c5 = new SqlCommand("delete from user_otherinfo", con);
        c5.ExecuteNonQuery();
        lblinsert.Text = "data deleted successfully";
        con.Close();
    }
    protected void dropstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dropstate.SelectedItem.ToString() == "Other")
        {
            txtstate.Visible = true;
            txtstate.Text = "Enter your State";
        }
        else
        {
            txtstate.Visible = false;
        }
    }
}