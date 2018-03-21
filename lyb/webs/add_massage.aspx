<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_massage.aspx.cs" Inherits="webs_add_massage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
<link  rel="Stylesheet" href="../css/msg.css" type="text/css" />
    <title>无标题页</title>
    <style type="text/css">
        html,body{ 
margin:0px; 
height:100%; 
} 

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="m1">
    <div class="m11">
        您的姓名：<asp:TextBox ID="TextBox1" runat="server" Font-Size="Small" Height="18px" 
            Width="138px"></asp:TextBox>
&nbsp; *</div>
    <div class="m12">
        头像：<br />
        <br />
        <div class="im">
        <asp:Image ID="Image1" runat="server" Height="74px" Width="74px"  ImageUrl="../image/tx.png" /></div>
        <br />
    
&nbsp;&nbsp; 上传头像：<asp:FileUpload ID="FileUpload1" runat="server" Height="21px" 
            BackColor="White" />
&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="Small" Height="21px" 
            Text=" 上 传 " onclick="Button1_Click" />
    &nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    <div class="m13">
        <br />
        留言内容：<br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="94px" TextMode="MultiLine" 
            Width="682px" CssClass="tb1"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp; *最多200字 
       <asp:Button ID="Button2" runat="server" Font-Size="Small" Height="20px" 
            Text=" 提 交 " CssClass="b2" onclick="Button2_Click" />
            &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [msg]"></asp:SqlDataSource>
            </div>
    </div>
    </form>
</body>
</html>
