using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["registerConnectionString"].ConnectionString.ToString());
    string str1;
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    protected void dropsearch_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtsearch.Visible = true;
        if(dropsearch.SelectedItem.ToString()=="By Name")
        {
            rdbemployeein.Visible = false;
            rdbfamilystatus.Visible = false;
            lblfamilystatus.Visible = true;
            lblrashi.Visible = false;
            droprashi.Visible = false;
            txtsearch.Visible = true;
            lblsearch.Text = "Enter Name";
            lblsearch.Visible = true;
            lblrashi1.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Age")
        {
            lblsearch.Text ="Enter Age";
            rdbemployeein.Visible = false;
            rdbfamilystatus.Visible = false;
            lblfamilystatus.Visible = true;
            lblrashi.Visible = false;
            droprashi.Visible = false;
            
            lblsearch.Visible = true;
            lblrashi1.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else if(dropsearch.SelectedItem.ToString()=="By State")
        {
            lblsearch.Text ="Enter State";
            lblsearch.Visible = true;
            rdbemployeein.Visible = false;
            rdbfamilystatus.Visible = false;
            lblfamilystatus.Visible = true;
            lblrashi.Visible = false;
            droprashi.Visible = false;
            txtsearch.Visible = true;
            lblrashi1.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Cast")
        {
            lblsearch.Text = "Enter Cast";
            rdbemployeein.Visible = false;
            rdbfamilystatus.Visible = false;
            lblfamilystatus.Visible = true;
            lblrashi.Visible = false;
            droprashi.Visible = false;

            lblsearch.Visible = true;
            lblrashi1.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Salary")
        {
            lblsearch.Text = "Enter Salary";

        }
        else if(dropsearch.SelectedItem.ToString()=="By Education")
        {
            lblsearch.Text = "Enter Education";
            rdbemployeein.Visible = false;
            rdbfamilystatus.Visible = false;
            lblfamilystatus.Visible = true;
            lblrashi.Visible = false;
            droprashi.Visible = false;

            lblsearch.Visible = true;
            lblrashi1.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Rashi")
        {
            txtsearch.Visible = false;
            lblrashi1.Text = "Select Rashi";
            droprashi.Visible = true;
            lblsearch.Visible = false;
            lblrashi1.Visible = true;
            rdbemployeein.Visible = false;
            rdbemployeein.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Job")
        {
            txtsearch.Visible = false;
            rdbemployeein.Visible = true;
            lblrashi.Text = "Select Job";
            lblrashi.Visible = true;
            droprashi.Visible = false;
            lblrashi1.Visible = false;
            lblsearch.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Family Status")
        {
            rdbemployeein.Visible = false;
            txtsearch.Visible = false;
            lblfamilystatus.Text = "Select Family Status";
            lblfamilystatus.Visible = true;
            rdbfamilystatus.Visible = true;
            droprashi.Visible = false;
            lblrashi.Visible = false;
            lblsearch.Visible = false;
        }
        else if (dropsearch.SelectedItem.ToString() == "By Profession")
        {
            lblfamilystatus.Visible = false;
            rdbfamilystatus.Visible = false;
            lblsearch.Text = "Enter Profession";
            lblsearch.Visible = true;
            rdbemployeein.Visible = false;
            rdbfamilystatus.Visible = false;
            lblfamilystatus.Visible = true;
            droprashi.Visible = false;
            lblsearch.Visible = true;
            lblrashi1.Visible = false;
            lblfamilystatus.Visible = false;
        }
        else
        {
            lblsearch.Text = "Please choose an option";
            txtsearch.Visible = false;
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        
        if (dropsearch.SelectedItem.ToString() == "By Name")
        {
           con.Open();
            str1 ="select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_location.Residing_state from user_detail inner join user_location on user_detail.Registration_no=user_location.Registration_no where First_name='" + txtsearch.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1,con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
           con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By Age")
        {
            con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_location.Residing_state from user_detail inner join user_location on user_detail.Registration_no=user_location.Registration_no where Age='" + txtsearch.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By State")
        {
            con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_location.Residing_state from user_detail inner join user_location on user_detail.Registration_no=user_location.Registration_no where Residing_state='" + txtsearch.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By Cast")
        {
           con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_location.Residing_state,user_detail.Caste from user_detail inner join user_location on user_detail.Registration_no=user_location.Registration_no where Caste='" + txtsearch.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
           con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By Rashi")
        {
           con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_religious.Rashi from user_detail inner join user_religious on user_detail.Registration_no=user_religious.Registration_no where Rashi='" + droprashi.SelectedItem.ToString() + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By Job")
        {
           con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_education.Employee_in from user_detail inner join user_education on user_detail.Registration_no=user_education.Registration_no where Employee_in='" + rdbemployeein.SelectedItem.ToString() + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By Family Status")
        {
            con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_family.Family_status from user_detail inner join user_family on user_detail.Registration_no=user_family.Registration_no where Family_status='" + rdbfamilystatus.SelectedItem.ToString() + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
        else if (dropsearch.SelectedItem.ToString() == "By Profession")
        {
           con.Open();
            str1 = "select user_detail.Photo,user_detail.First_name,user_detail.Last_name,user_detail.Age,user_education.Profession from user_detail inner join user_education on user_detail.Registration_no=user_education.Registration_no where Profession='" + txtsearch.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(str1, con);
            ad.Fill(ds1);
            gridsearch.DataSource = ds1;
            gridsearch.DataBind();
            con.Close();
        }
     }

    protected void gridsearch_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
    }
}