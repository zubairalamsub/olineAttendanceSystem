<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="Att.aspx.cs" Inherits="Staff_Att" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
    {
        width: 503px;
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
        .style9
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" style="background-color: #3366CC">
            SAVE ATTENDANCE</td>
    </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="La" runat="server" BackColor="#00FF99"></asp:Label>
                
            </td>
        </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <%--<tr>
                    <td class="style7">
                        Batch :
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
                <tr>
                    <td class="auto-style5" style="color: #3366CC">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Batch :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="DrB" runat="server" Height="16px" Width="139px" DataSourceID="SqlDataSource2" DataTextField="StdName" DataValueField="StdName" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttSystemConnectionString %>" SelectCommand="SELECT DISTINCT [StdName] FROM [StudentMSt]"></asp:SqlDataSource>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7" style="color: #3366CC">
                        Select Course :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpdiv" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName" EnableTheming="True">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Button ID="Button7" runat="server" CssClass="btn" onclick="Button7_Click" 
                            Text="Select" BackColor="#3366CC" />
                    </td>
                    <td>
            <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblatt" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table class="style9">
                        <tr>
                            <td valign="top" style="text-align: center">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="3" Width="354px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                    <Columns>
                                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:TemplateField HeaderText="Attendance Status">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>P</asp:ListItem>
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttSystemConnectionString %>" SelectCommand="SELECT DISTINCT [CourseName] FROM [StudentMSt] WHERE ([StdName] = @StdName)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DrB" Name="StdName" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                          
                                <asp:Button ID="btnaddatt" runat="server" CssClass="btn" Font-Bold="True" 
                                    Font-Size="Medium" Height="45px" onclick="btnaddatt_Click" 
                                    Text="ADD Attendance" Width="225px" BackColor="#3366CC" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            </td>
    </tr>
</table>
</asp:Content>

