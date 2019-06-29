using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_MyProfile : System.Web.UI.Page
{
    DS_STUDENT.StudentMst_SELECTDataTable StuDT = new DS_STUDENT.StudentMst_SELECTDataTable();
    DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_STUDENTTableAdapters.StudentMst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            StuDT = StuAdapter.Select_UNAME(Session["sname"].ToString());

            lblname.Text = StuDT.Rows[0]["Name"].ToString();
            lblroll.Text = StuDT.Rows[0]["rollno"].ToString();
            
            ViewState["sid"] = StuDT.Rows[0]["SID"].ToString();

        }

    }
  
}