<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massage.aspx.cs" Inherits="webs_massage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel=Stylesheet href="../css/msg.css" type="text/css">
    <title>无标题页</title>
    <style type="text/css">
    .l
    {
    	width:50px;
    	height:40px;
    	padding:0px 10px  0px 10px;
   
    	color :Blue;
    	vertical-align:middle;
    	border-width:1px;
    	border-style:dotted;
    	border-color:Red;
    	}
    	.b
    {
    	width:30px;
    	height:22px;
    	padding:0px 10px  0px 10px;
 
    	
    	vertical-align:middle;
    	border-width:1px;
    	border-style:dotted;
  
    	}
    </style>
</head>
<body align=center>
    <form id="form1" runat="server">
    <div >
    <center>
        <asp:ListView ID="ListView1" runat="server"  DataKeyNames="id" 
            DataSourceID="SqlDataSource1" >
            <ItemTemplate>
                <div class ="mm1">
                <div class ="mm2">
                    <img alt="" src='<%# Eval("image") %>' Width=76px Height=76px/>
                </div>
                <div class="mm3">
                <div class ="mm31">
              
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' ForeColor="#FF6699" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>' ForeColor="#6699FF" />&nbsp;楼
                </div>
                <div class ="mm32">
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("text") %>' />
                </div>
                <div class ="mm33">
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("time") %>' /> <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text=" 编 辑 " CssClass="bb" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text=" 删 除 " OnClientClick="return confirm('确定删除');"  CssClass="bb" />
                </div>
                </div>
                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                
                <div class ="mm1">
                <div class ="mm2">
                    <img alt="" src='<%# Eval("image") %>' Width=76px Height=76px />
                </div>
                <div class="mm3">
                <div class ="mm31">
              
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' ForeColor="#FF6699" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>' ForeColor="#6699FF" />&nbsp;楼
                </div>
                <div class ="mm32">
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("text") %>' />
                </div>
                <div class ="mm33">
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("time") %>' /> <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text=" 编 辑 " CssClass="bb" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text=" 删 除 "  OnClientClick="return confirm('确定删除');" CssClass="bb" />
                </div>
                </div>
                </div>
            
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                text:
                <asp:TextBox ID="textTextBox" runat="server" Text='<%# Bind("text") %>' />
                <br />
                image:
                <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
                <br />
                time:
                <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server"
                CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
          <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" style="">
                    <span ID="itemPlaceholder" runat="server" />
                </div>
                
                </div>
                <div style=" margin-top:10px;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize=6>
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField ButtonCount=6 ButtonType=Button CurrentPageLabelCssClass="l" NumericButtonCssClass="b"  />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <EditItemTemplate>
              
              
                 <div class ="mm1">
                <div class ="mm2">
                    <asp:Image ID="Image1" ImageUrl='<%# Bind("image") %>' runat="server"  Width=76px Height=76px/>
                </div>
                <div class="mm3">
                <div class ="mm31">
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>' ForeColor="#FF6699" Width=80px />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("id") %>' ForeColor="#6699FF" />&nbsp;楼
                </div>
                <div class ="mm32">
                    <asp:TextBox ID="TextBox2" runat="server" Width=500px Height=80px Text='<%# Bind("text") %>' TextMode="MultiLine" />
                </div>
                <div class ="mm33">
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("time") %>' /> <asp:Button ID="EditButton" runat="server" CommandName="Update" Text=" 保 存 " CssClass="bb" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Cancel" 
                    Text=" 取 消 " CssClass="bb" />
                </div>
                </div>
                </div>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <span style="">id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                text:
                <asp:Label ID="textLabel" runat="server" Text='<%# Eval("text") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                time:
                <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [msg] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [msg] ([name], [text], [image], [time]) VALUES (@name, @text, @image, @time)" 
            SelectCommand="SELECT * FROM [msg] ORDER BY [id] DESC" 
            UpdateCommand="UPDATE [msg] SET [name] = @name, [text] = @text, [image] = @image, [time] = @time WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="text" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="text" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="time" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource></center>
    </div>
    </form>
</body>
</html>
