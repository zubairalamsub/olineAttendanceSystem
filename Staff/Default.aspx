﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Staff_Default" %>

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
            <td class="tblhead" style="background-color: #3366CC">
                My Profile</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #8506A9; font-weight: bold; font-size: large">
                Name :
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
        </tr>
        <%--<tr>
            <td class="style5" style="color: #8506A9; font-weight: bold; font-size: large">
                Batch :&nbsp;<asp:Label ID="lblstd" runat="server"></asp:Label>
            </td>
        </tr>--%>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <table class="style6">
                    <tr>
                        <td class="lbl" style="color: #3366CC">
                            Email :</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="160px" />
                            <asp:Button ID="btnchange" runat="server" CssClass="btn" Text="ADD" 
                                onclick="btnchange_Click" Width="50px" BackColor="#3366CC" />
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #3366CC">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td rowspan="4">
                            <asp:Image ID="Imgprofile" runat="server" Height="125px" Width="112px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #3366CC">
                            Address :
                        </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #3366CC">
                            City :
                        </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl" style="color: #3366CC">
                            Pincode :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn" Text="Update" 
                                onclick="btnupdate_Click" BackColor="#3366CC" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

