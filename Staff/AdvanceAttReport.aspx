<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="AdvanceAttReport.aspx.cs" Inherits="Staff_AttReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
    {
        width: 644px;
    }
    .style7
    {
            text-align: right;
            color: Red;
            width: 128px;
        }
    .style6
    {
            width: 52px;
        }
    .style5
    {
            width: 56px;
        }
        .style8
        {
            width: 128px;
        }
        .auto-style1 {
        width: 667px;
        border: solid 1px Red;
    }
    .auto-style2 {
        height: 40px;
        color: #fff;
        text-align: left;
        font-size: 20px;
        font-weight: bold;
        background: Red;
        padding-left: 10px;
        width: 650px;
    }
    .auto-style3 {
        width: 659px;
    }
        .auto-style4 {
            width: 659px;
            height: 114px;
        }
        .auto-style5 {
            text-align: right;
            color: Red;
            width: 205px;
        }
        .auto-style6 {
            width: 205px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #3366CC">
                Individual Student Attendance View</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" BackColor="#00FF99"></asp:Label>
                
            </td>
        </tr>
         
        <tr>
            <td class="auto-style3">
            <table align="left" class="style4">
                <tr>
                    <td class="auto-style5" style="color: #3366CC">
                        Select Course Name :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="DrC" runat="server" Height="16px" Width="139px" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="color: #3366CC">
                        Select Student Name :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="139px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                
                <tr>
                   <td class="auto-style6">
                        &nbsp;</td>
                    <td class="style5" valign="bottom">
                        <asp:Button ID="Button11" runat="server" Text="Submit" BackColor="#0033CC" BorderColor="#3333FF" ForeColor="White" OnClick="Button11_Click" style="margin-left: 0px" Width="139px" />
                      
                        </td>
                    <td valign="bottom">
                        &nbsp;</td>
                </tr>
            </table>
            </td>
        </tr>

        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Total Days :"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="3" Width="659px" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="None">
                    <Columns>
                        <asp:BoundField DataField="rollno" HeaderText="Roll No" />
                        <asp:BoundField DataField="name" HeaderText="Student Name" />
                        <asp:BoundField DataField="status" HeaderText="Attendance Status" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttSystemConnectionString %>" SelectCommand="SELECT DISTINCT [CourseName] FROM [Attendancemst]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttSystemConnectionString %>" SelectCommand="SELECT DISTINCT [Name] FROM [Attendancemst] WHERE ([CourseName] = @CourseName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DrC" Name="CourseName" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
&nbsp; </td>
        </tr>
    </table>
</asp:Content>
