using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddDiv : System.Web.UI.Page
{
    DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {
            StdDT = StdAdapter.SelectStd();
            drpstd.DataSource = StdDT;
            drpstd.DataTextField = "STDName";
            drpstd.DataValueField = "SID";
            drpstd.DataBind();
           
            drpstd.Items.Insert(0, "SELECT");
        }
    }
    public string sc = ConfigurationManager.ConnectionStrings["AttSystemConnectionString"].ConnectionString;

    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(sc))
            {
                conn.Open();
                String query = "insert into Course values(" + cid.Text + ",'" + txtcourse.Text + "','" + drpstd.SelectedItem.Text + "')";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                lbl.Text = "Record Added Successfully";
                conn.Close();
                Response.Redirect("AddDiv.aspx");
            }
        }
        catch (SqlException ex)
        {
            Response.Write(ex.Message);
        }
    }
}