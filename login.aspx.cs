using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\maliba clg\Asp\Practical3\App_Data\Library.mdf;Integrated Security=True";

    }
    protected void LoginBTN_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT RegiId,Usertype from Registration WHERE Username='"+UsernameTEXT.Text+"' AND Password='"+PasswordTEXT.Text+"'",cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            // value  0  For Seller And 1 for Customer
            if (dr["Usertype"].ToString() == "0")
            {
                Session["RegId"] = dr["RegiId"];
                Response.Redirect("Book.aspx");
            }
            else
            {
                Session["RegId"] = dr["RegiId"];
                Response.Redirect("BookSearch.aspx");
            }
        }
        cn.Close();
        
    }
}