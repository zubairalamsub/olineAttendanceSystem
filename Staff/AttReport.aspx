<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="AttReport.aspx.cs" Inherits="Staff_AttReport" %>

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
        width: 709px;
    }
    .auto-style3 {
            width: 709px;
        }
        .auto-style4 {
            width: 709px;
            height: 177px;
        }
        .auto-style5 {
        text-align: right;
        color: Red;
        width: 128px;
        height: 17px;
    }
    .auto-style6 {
        width: 52px;
        height: 17px;
    }
    .auto-style7 {
        width: 56px;
        height: 17px;
    }
    .auto-style8 {
        height: 17px;
    }
        </style>
    <script language="javascript" type="text/javascript">

        function PrintPage() {

            var printContent = document.getElementById('<%= pnlGridView.ClientID %>');

            var printWindow = window.open("All Records", "Print Panel", 'left=50000,top=50000,width=0,height=0');

            printWindow.document.write(printContent.innerHTML);

            printWindow.document.close();

            printWindow.focus();

            printWindow.print();

        }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" id="pnlGridView" runat="server" align="center">
        <tr>
            <td class="auto-style2" style="background-color: #3366CC">
                Attendance View</td>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Batch :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="DrBp" runat="server" Height="16px" Width="139px" DataSourceID="SqlDataSource2" DataTextField="StdName" DataValueField="StdName" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttSystemConnectionString %>" SelectCommand="SELECT DISTINCT [StdName] FROM [Attendancemst]"></asp:SqlDataSource>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr> 
                <tr>
                    <td class="auto-style5" style="color: #3366CC">
                        Select Course :
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="139px" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttSystemConnectionString %>" SelectCommand="SELECT DISTINCT [CourseName] FROM [Attendancemst] WHERE ([StdName] = @StdName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DrBp" Name="StdName" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style7">
                        </td>
                    <td class="auto-style8">
                        </td>
                </tr>
                
                <tr>
                   <td>
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
                <asp:Label ID="Label3" runat="server" Text="Total Number Of Student :"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                 &nbsp; &nbsp; &nbsp; &nbsp;
                  <asp:linkbutton id="lnkPrint" runat="server" tooltip="Click to Print All Records" text="Print" OnClientClick="PrintPage();"></asp:linkbutton>

                <br />
                <asp:GridView ID="GridView1" runat="server" 
                    CellPadding="3" Width="659px" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="None">
                    <Columns>
                      
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
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

