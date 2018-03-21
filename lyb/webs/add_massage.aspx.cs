using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class webs_add_massage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName != "")
        {
            string s = DateTime.Now.Ticks.ToString();
            FileUpload1.SaveAs(Server.MapPath("../uploadimg/") + s + FileUpload1.FileName);
            Image1.ImageUrl = "../uploadimg/" + s + FileUpload1.FileName;
            Label1.ForeColor = System.Drawing.Color.Blue;
            Label1.Text = "上传成功！";
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
           Label1.Text="上传对象为空！";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);
            string s = "insert into msg(name,text,image,time) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Image1.ImageUrl.ToString() + "','" + DateTime.Now.ToString () + "')";
            SqlCommand com = new SqlCommand(s, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Label2.ForeColor = System.Drawing.Color.Blue;
            Label2.Text = "提交成功！";
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "提交内容为空！";
        }
    }
}
