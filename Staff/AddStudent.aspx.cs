using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data.OleDb;

public partial class Staff_AddStudent : System.Web.UI.Page
{
    //DS_STD.STDMST_SELECTDataTable StdDT = new DS_STD.STDMST_SELECTDataTable();
    //DS_STDTableAdapters.STDMST_SELECTTableAdapter StdAdapter = new DS_STDTableAdapters.STDMST_SELECTTableAdapter();
    

    //DS_STAFF.StaffMST_SELECTDataTable StaffDT = new DS_STAFF.StaffMST_SELECTDataTable();
    //DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.StaffMST_SELECTTableAdapter();

    //DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    //DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
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
            
        }
    }
  

    protected void Button11_Click(object sender, EventArgs e)
    {
        int SID;
        String RollNo;
        String Name;
        String StdName;
        String CourseName;
        String pass;
        string path = Path.GetFileName(FileUpload2.FileName);
        path = path.Replace(" ", "");
        FileUpload2.SaveAs(Server.MapPath("~/ExcelFile/") + path);
        String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
        mycon.Open();
        DataTable dtSheet = mycon.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
        string sheetname;
        sheetname = "";
        foreach (DataRow drSheet in dtSheet.Rows)
        {
            if (drSheet["TABLE_NAME"].ToString().Contains("$"))
            {
                sheetname = drSheet["TABLE_NAME"].ToString();
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM [" + sheetname + "]", mycon);
                OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    // Response.Write("<br/>"+dr[0].ToString());
                    SID = Convert.ToInt32(dr[0].ToString());
                    RollNo = dr[1].ToString();
                    Name = dr[2].ToString();
                    StdName = dr[3].ToString();
                    CourseName = dr[4].ToString();
                    pass = dr[5].ToString();

                    savedata(SID, RollNo, Name, StdName, CourseName, pass);
                }
            }
        }
        Label3.Text = "Data Has Been Saved Successfully";
    }
    private void savedata(int s, String rollno1, String sname1, String stdname1, String divname1, String pass)
    {
        String query = "insert into dbo.StudentMst(SID,RollNo,Name,StdName,CourseName,pass) values('" + s + "','" + rollno1 + "','" + sname1 + "','" + stdname1 + "','" + divname1 + "','" + pass + "')";
        String connectionString = "Data Source=desktop-09oknl8\\sqlexpress;Initial Catalog=AttSystem;Integrated Security=True";
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }


}