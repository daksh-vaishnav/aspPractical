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
        SqlCommand cmd = new SqlCommand("SELECT ",cn);

    }
    protected void ChangePasswordBTN_Click(object sender, EventArgs e)
    {
        if (MultiView1.GetActiveView().ToString() == "1")
        {
            OldPasswordLBL.Visible = false;
            OldPasswordTEXT.Visible = false;
            MultiView1.ActiveViewIndex = 0;
        }
    }
}