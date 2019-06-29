<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Student_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 295px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" style="background-color: #3366CC">
            Change Password Form</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style4">
                <tr>
                    <td class="lbl" style="color: #3366CC">
                        Current Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtcurrent" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl" style="#3366CC; color: #3366CC;">
                        New Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl" style="#3366CC; color: #3366CC;">
                        Confirm-Pass :
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnchangepass" runat="server" CssClass="btn" 
                            onclick="btnchangepass_Click" Text="Change Password" Width="140px" BackColor="#3366CC" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

