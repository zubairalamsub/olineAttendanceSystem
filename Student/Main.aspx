﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Student_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 15px;
        }
        .style5
        {
            width: 569px;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            height: 50px;
            background: #ff6600;
            border: solid 1px #ff6600;
            color: #fff;
            font-weight: bold;
            padding-left: 10px;
            font-size: 24px;
            width: 245px;
        }
        .style8
        {
            width: 245px;
            text-align: center;
        }
        .auto-style3 {
            height: 50px;
            background: #ff6600;
            border: solid 1px #ff6600;
            color: #fff;
            font-weight: bold;
            padding-left: 10px;
            font-size: 24px;
            width: 580px;
        }
        .auto-style4 {
        width: 580px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" style="background-color: #3366CC">
            Welcome to Attendance System.</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="hometbl">
                <tr>
                    <td class="hometblhead" style="background-color: #3366CC">
                        Results :</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <table class="style5">
                            <tr>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Total</td>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Present</td>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Absent</td>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Leave</td>
                                
                            </tr>
                            <tr>
                                <td class="style6">
                        <asp:Label ID="lbltotalatt" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
                                </td>
                                <td class="style6">
                        <asp:Label ID="lblpresent" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
                                </td>
                                <td class="style6">
                        <asp:Label ID="lblabsent" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
                                </td>
                                <td class="style6">
                        <asp:Label ID="lbltotalleave" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
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
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    
 
    </table>
</asp:Content>

