<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title><link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}</style>
	<script type="text/javascript" src="engine1/jquery.js"></script>
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .style2
        {
            width: 4px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 75px;
        }
        .style5
        {
            font-family: "Arial Rounded MT Bold";
            font-size: x-small;
            color: #006666;
        }
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
    
        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/logopage.png" Height="114px" Width="994px" CssClass="auto-style1" />
    
    </div>
    <div id="menu">
        <table class="style1">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Home" 
                        PostBackUrl="~/Home.aspx" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Batch List" 
                        PostBackUrl="~/Branch.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Teacher List" 
                        PostBackUrl="~/Staff.aspx" />
                </td>
                 
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="Feedback" 
                        PostBackUrl="~/Feedback.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="btnmenu" Text="Admin Panel" 
                        PostBackUrl="~/Admin/Home.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" CssClass="btnmenu" Text="Contact Us" 
                        PostBackUrl="~/ContactUs.aspx" />
                </td>
            </tr>
        </table>
    </div>
     <div id="mainn">
     <div id="left">
     <div id="studentlogin">
         <table class="style3">
             <tr>
                 <td class="logintitle" colspan="2">
                     Student Login</td>
             </tr>
             <tr>
                 <td class="lbl">
                     User Name :</td>
                 <td>
                     <asp:TextBox ID="txtstuuname" runat="server" CssClass="txt"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="lbl">
                     Password :
                 </td>
                 <td>
                     <asp:TextBox ID="txtstupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="btnstudenlogin" runat="server" CssClass="btn" Text="Login" 
                         onclick="btnstudenlogin_Click" />
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#339966" 
                         Visible="False">Forgot Password</asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="lblstuerror" runat="server"></asp:Label>
                 </td>
             </tr>
             
         </table>
         </div>
     <div id="stafflogin">
         <table class="style3">
             <tr>
                 <td class="logintitle" colspan="2">
                     Teacher Login</td>
             </tr>
             <tr>
                 <td class="lbl">
                     User Name :</td>
                 <td>
                     <asp:TextBox ID="txtstaffuname" runat="server" CssClass="txt"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="lbl">
                     Password :
                 </td>
                 <td>
                     <asp:TextBox ID="txtstaffpass" runat="server" CssClass="txt" 
                         TextMode="Password"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="btnstafflogin" runat="server" CssClass="btn" Text="Login" 
                         onclick="btnstafflogin_Click" />
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#339966" 
                         Visible="False">Forgot Password</asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="lblstafferror" runat="server"></asp:Label>
                 </td>
             </tr>
             
         </table>
         </div>
     </div>
         <br />
         <br />
         <br />
     
     </div> <div id="footer">Developed by Sobuj ||Zubair ©2019 Online Attandance System.</div>
    </form>
</body>
</html>
