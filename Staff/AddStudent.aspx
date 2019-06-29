<%@ Page Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Staff_AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 449px;
    }
    .style5
    {
        width: 387px;
    }
    .style7
    {
        text-align: right;
        color: Red;
        width: 242px;
    }
    .style6
    {
        width: 140px;
    }
    .style8
    {
        width: 242px;
    }
        .auto-style1 {
            width: 347px;
            height: 60px;
        }
        .auto-style3 {
            width: 486px;
        }
        .auto-style4 {
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" style="background-color: #3366CC">
            ADD NEW STUDENT DATA.</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                                
                <%--<tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;Select Batch : </td>
                    <td class="style5">
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>--%>
                </table>
            </td>
    </tr>
    <tr>
        <td>
            <table align="center" class="auto-style1">
               
                <tr>
                    <td colspan="3">
                        
                        <asp:Label ID="Label2" runat="server" Text="Upload Excel File :"></asp:Label>
                        
                    &nbsp;<asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                     
                        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" style="margin-left: 180px" Text="Save Student" Width="145px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
    </tr>
    </table>
</asp:Content>
