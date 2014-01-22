using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DavidWhiteWebContactApp
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void firstNameSearchButton_Click(object sender, EventArgs e)
        {
          //  SearchOutput newSearch = new SearchOutput(searchTextBox.Text);
           //  Response.Redirect("~/fSearchOutput.aspx");
            Response.Redirect("fSearchOutput.aspx?Data=" + Server.UrlEncode(searchTextBox.Text));
        }

        protected void lastNameSearchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchOutput.aspx");    // Response.Write(@"<script language='javascript'>alert('Last Name Search Getting to event');</script>"); 
        }
    }
}