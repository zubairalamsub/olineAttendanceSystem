<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Student_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 561px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" style="color: #FFFFFF; background-color: #3366CC">
                My Profile</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #3366CC; font-weight: bold; font-size: large">
                Name :
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color: #3366CC; font-weight: bold; font-size: large">
                Roll No :&nbsp;
                <asp:Label ID="lblroll" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

