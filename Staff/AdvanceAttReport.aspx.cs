using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Staff_AttReport : System.Web.UI.Page
{
    //DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    //DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
    //DS_DIV.DIVMST_SELECTDataTable DivDT = new DS_DIV.DIVMST_SELECTDataTable();
    //DS_DIVTableAdapters.DIVMST_SELECTTableAdapter DivAdapter = new DS_DIVTableAdapters.DIVMST_SELECTTableAdapter();
    //DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    //DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime Today = System.DateTime.Now;
        Label2.Text = Today.ToString();
        if (!IsPostBack)
        {
            
        }

    }
    public string sc = ConfigurationManager.ConnectionStrings["AttSystemConnectionString"].ConnectionString;


    protected void Button11_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection(sc))
            {
                con.Open();
                SqlCommand command = new SqlCommand("select * from Attendancemst where CourseName=@CourseName and Name=@Name", con);
                command.Parameters.AddWithValue("@CourseName", DrC.Text);
                command.Parameters.AddWithValue("@Name", DropDownList1.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                GridView1.DataSource = dataSet;
                GridView1.DataBind();
                GridView1.Visible = true;
                Label4.Text = GridView1.Rows.Count.ToString();
                con.Close();
            }
        }
        catch (SqlException ex)
        {
            Response.Write(ex.Message);
        }

    }

}