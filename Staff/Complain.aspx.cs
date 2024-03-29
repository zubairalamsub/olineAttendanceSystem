﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Complain : System.Web.UI.Page
{
    DS_COMPLAIN.Complainmst_SELECTDataTable CompDT = new DS_COMPLAIN.Complainmst_SELECTDataTable();
    DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter CompAdapter = new DS_COMPLAINTableAdapters.Complainmst_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (Page.IsPostBack == false)
        {
            BindDownA();  
        }
    }
    public string sc = ConfigurationManager.ConnectionStrings["AttSystemConnectionString"].ConnectionString;

    public void BindDownA()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(sc))
            {
                con.Open();

                string rno = Session["std"].ToString().Substring(0, 1);
                SqlCommand command = new SqlCommand("SELECT* FROM Complainmst where Reply='Pending'", con);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);
                GridView1.DataSource = dataSet;
                GridView1.DataBind();
                GridView1.Visible = true;
                con.Close();

            }
        }
        catch (SqlException ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        CompDT = CompAdapter.Seelct_BY_ID(Convert.ToInt32(e.CommandArgument.ToString()));
        lblrno.Text = CompDT.Rows[0]["Rollno"].ToString();

        lblname.Text = CompDT.Rows[0]["name"].ToString();
        lblcomp.Text = CompDT.Rows[0]["message"].ToString();
        lblsub.Text = CompDT.Rows[0]["subject"].ToString();
        ViewState["cid"] = CompDT.Rows[0]["cid"].ToString();
    }
    protected void btnreplyy_Click(object sender, EventArgs e)
    {
        CompAdapter.Complainmst_UPDATE_Reply(Convert.ToInt32(ViewState["cid"].ToString()), txtans.Text);
       txtans.Text = "";

        string rno = Session["std"].ToString().Substring(0, 1);

        CompDT = CompAdapter.Select_For_Teacher(rno + "%");
        GridView1.DataSource = CompDT;
        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 0;

    }
}