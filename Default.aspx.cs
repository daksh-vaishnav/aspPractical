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


    //////////////////////// what is meaning of below code //////////////////////////////////////
    //////////////////    insert ni undar select statement /////////////////////
    //string sql = "INSERT INTO EmpDetails(empname,empimg) VALUES(@enm, @eimg) SELECT @@IDENTITY";
    //            SqlCommand cmd = new SqlCommand(sql, connection);
    //            cmd.Parameters.AddWithValue("@enm", txtEName.Text.Trim());
    //            cmd.Parameters.AddWithValue("@eimg", imgByte);
    //            int id = Convert.ToInt32(cmd.ExecuteScalar());
    //            lblResult.Text = String.Format("Employee ID is {0}", id);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            String cnstr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\maliba clg\Asp\Practical3\App_Data\Library.mdf;Integrated Security=True";
            using (SqlConnection cn = new SqlConnection(cnstr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT BookImage FROM Book", cn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DataRow dr = (DataRow)dt.Rows[0];
                    string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["BookImage"]);
                    Image1.ImageUrl = imageUrl;
                }
            }
        }
    }
}

