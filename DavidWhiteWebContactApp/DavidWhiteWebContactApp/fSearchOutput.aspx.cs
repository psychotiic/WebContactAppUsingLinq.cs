using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Http;



namespace DavidWhiteWebContactApp
{
    public partial class SearchOutput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var textbox = PreviousPage.FindControl("searchTextBox") as TextBox;
            if (textbox != null)
            {
                TextBox1.Text = textbox.Text;
            }
            else
            {
                 Response.Write(@"<script language='javascript'>alert('Nothing Has been entered');</script>");
                 HttpWebRequest myRequest = (HttpWebRequest)WebRequest.Create("~/Default.aspx");
            }
            string searchText = TextBox1.Text;
            DataSet ds = new DataSet();
            SqlConnection  sqlConnect = new SqlConnection("ConnectionString");
            sqlConnect.Open();
            SqlCommand cmd = new SqlCommand();
                cmd = sqlConnect.CreateCommand();
                cmd.CommandText = string.Format("SELECT* FROM CONTACTS WHERE [FIRST NAME] LIKE '{0}'", searchText);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(ds);

            ListView1.DataSource = ds.Tables.ToString();
            ListView1.DataBind();

//            Dim SearchText As String = YourTextBox.Text
//Dim ds As New DataSet

//Using cnn As New SqlConnection("YourConnectionString")
//    cnn.Open()
//    Using cmd As SqlCommand = cnn.CreateCommand
//        cmd.CommandType = "text"
//        cmd.CommandText = String.Format("SELECT* FROM BOOKS WHERE Title LIKE '{0}'", SearchText)
//        Using da As New SqlDataAdapter
//            da.SelectCommand = cmd
//            da.Fill(ds)
//        End Using
//    End Using
//End Using

//SomeGridControl.DataSource = ds.Tables(0)
//SomeGridControl.Databind()
        }
       

    }
}