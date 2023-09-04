using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\maliba clg\Asp\Practical3\App_Data\Library.mdf;Integrated Security=True";
    }


    protected void RegistrationBTN_Click(object sender, EventArgs e)
    {
        string sql = "INSERT INTO Registration(Name,Email,Contact,Address,Username,Password,Usertype) VALUES(@name, @email,@contact,@address,@username,@password,@usertype)";
        SqlCommand cmd = new SqlCommand(sql,cn);
       
        cmd.Parameters.AddWithValue("@name", NameLBL.Text);
        cmd.Parameters.AddWithValue("@email", EmailTEXT .Text);
        cmd.Parameters.AddWithValue("@contact", ContactTEXT.Text);
        cmd.Parameters.AddWithValue("@address", AddressTEXT.Text);
        cmd.Parameters.AddWithValue("@username", UsernameTEXT.Text);
        cmd.Parameters.AddWithValue("@password", PasswordTEXT.Text);
        // for seller
       // cmd.Parameters.AddWithValue("@usertype", "0"); 
        // for customer
        cmd.Parameters.AddWithValue("@usertype", "1"); 
        cn.Open();
        int chkCMD = cmd.ExecuteNonQuery();
        cn.Close();

        if (chkCMD == 1)
        {
            NameTEXT.Text = "";
            EmailTEXT.Text = "";
            ContactTEXT.Text = "";
            AddressTEXT.Text = "";
            UsernameTEXT.Text = "";
            PasswordTEXT.Text = "";
        }
        else
        {

        }
    }
}