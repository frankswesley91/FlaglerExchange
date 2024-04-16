using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class Listing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["Shilliday705"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from Listing WHERE UserID LIKE 1", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();

            Session["CreateEditListingLabel"] = "Edit Listing";


        }

        protected void ButtonToEditListingPage_Click(object sender, EventArgs e)
        {
            // Navigate to the More Info page
            Response.Redirect("/Views/CreateListing.aspx");
            
        }
        protected void ButtonToItemPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Item.aspx");
        }


        //Same c# from the home page to look at more info??? trying to grab the index and query string retrieve it? more info button is currently broken
        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "MoreInfo"))
            {
                // Determine the index of the item that was clicked
                int index = Convert.ToInt32(e.CommandArgument);

                // Use the index to get data key value, e.g., the ID of the item
                string itemId = ListView1.DataKeys[index].Value.ToString();

                // Navigate to another page with the item ID as a query string
                Response.Redirect($"Item.aspx?itemID={itemId}");
            }
        }
    }
}