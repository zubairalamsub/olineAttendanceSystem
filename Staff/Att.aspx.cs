using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Att : System.Web.UI.Page
{
    //DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    //DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
   

    //DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    //DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    //DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    //DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();

    //DS_ATTANDANCE.Attendancemst_SELECTDataTable AttDT = new DS_ATTANDANCE.Attendancemst_SELECTDataTable();
    //DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter AttAdapter = new DS_ATTANDANCETableAdapters.Attendancemst_SELECTTableAdapter();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        lblatt.Text = "";
        lblcnt.Text = "";
        DateTime Today = System.DateTime.Now;
        La.Text = Today.ToString();
        if (Page.IsPostBack == false)
        {
            //StaffDT = StaffAdapter.Select_UNAME(Session["uname"].ToString());
            ////StdDT = StdAdapter.SelectStd();
            ////drpstd.DataSource = StdDT;
            ////drpstd.DataTextField = "STDName";
            ////drpstd.DataValueField = "SID";
            ////drpstd.DataBind();           
            ////  drpstd.Items.Insert(0, "SELECT");
            //lblstd.Text = StaffDT.Rows[0]["StdName"].ToString();
            drpdiv.Items.Insert(0, "SELECT");
          

        }
    }
    public string sc = ConfigurationManager.ConnectionStrings["AttSystemConnectionString"].ConnectionString;
    protected void Button7_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(sc))
        {
            conn.Open();
            SqlCommand cmdd = new SqlCommand("select DISTINCT RollNo , Name from StudentMSt where StdName=@StdName and CourseName=@CourseName", conn);
            cmdd.Parameters.AddWithValue("@StdName", DrB.Text);
            cmdd.Parameters.AddWithValue("@CourseName", drpdiv.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(cmdd);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            GridView1.DataSource = dataSet;
            GridView1.DataBind();
            GridView1.Visible = true;
            conn.Close();
        }

        MultiView1.ActiveViewIndex = 0;  
    }
    protected void btnaddatt_Click(object sender, EventArgs e)
    {
        String Date = DateTime.Now.ToShortDateString();
        String StdName = DrB.SelectedItem.Text;
        String CourseName = drpdiv.SelectedItem.Text;
        
        for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                String RollNo = GridView1.Rows[i].Cells[0].Text;
                String Name = GridView1.Rows[i].Cells[1].Text;
                CheckBox Ch = (GridView1.Rows[i].Cells[2].FindControl("CheckBox1") as CheckBox);
                String Status;
                if (Ch.Checked)
                {
                    Status = "P";

                }
                else
                {
                    Status = "A";
                }

                
                saveattendance(RollNo, Name, Status, Date, CourseName, StdName);

                MultiView1.ActiveViewIndex = -1;
                drpdiv.SelectedIndex = 0;
                lblatt.Text = "Attendance Saved";

            }
      
    }
    private void saveattendance(String rollno, String studentname, String s,String date1, String course, String batch)
    {

        try
        {
            using (SqlConnection con = new SqlConnection(sc))
            {
                con.Open();
                String query = "insert into Attendancemst(RollNo, Name,Status, Date, CourseName,StdName) values('" + rollno + "','" + studentname + "','" + s + "','" + date1 + "','" + course + "','" + batch + "')";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        catch (SqlException ex)
        {
            Response.Write(ex.Message);
        }
    }
}