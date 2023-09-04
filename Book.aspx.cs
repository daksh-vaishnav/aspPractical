using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cn.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\maliba clg\Asp\Practical3\App_Data\Library.mdf;Integrated Security=True";
        }
    }

    protected void AddBookBTN_Click(object sender, EventArgs e)
    {
        byte[] bytes;
        using (BinaryReader br = new BinaryReader(BookImageFileUpload.PostedFile.InputStream))
        {
            bytes = br.ReadBytes(BookImageFileUpload.PostedFile.ContentLength);
        }
        string sql = "INSERT INTO Book(Title,Author,Stock,Category,BookImage,Price) VALUES(@title, @author,@stock,@category,@bookimage,@price)";
        using (SqlCommand cmd = new SqlCommand(sql, cn))
        {
            cmd.Parameters.AddWithValue("@title", TitleTEXT.Text);
            cmd.Parameters.AddWithValue("@author", AuthorTEXT.Text);
            cmd.Parameters.AddWithValue("@stock", StockTEXT.Text);
            cmd.Parameters.AddWithValue("@category", CategoryDD.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@bookimage", bytes);
            cmd.Parameters.AddWithValue("@price", PriceTEXT.Text);
            cn.Open();
            int chkCMD = cmd.ExecuteNonQuery();
            cn.Close();

            if (chkCMD == 1)
            {
                MsgSuccessLBL.Text = "Record Insert Successfully...!!!";
                MsgSuccessLBL.Visible = true;
                TitleTEXT.Text = "";
                AuthorTEXT.Text = "";
                StockTEXT.Text = "";
                PriceTEXT.Text = "";
            }
            else
            {
                MsgSuccessLBL.Text = "Can't be Insert Record";
                MsgSuccessLBL.Visible = true;
            }
        }
    }
}