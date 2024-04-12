using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class CreateListing : System.Web.UI.Page
    {

        public class Listing
        {
            //Properties of each Listing???????
            public string ListingTitle { get; set; }
            public string ListingName { get; set; }
            public string ListingDescription { get; set; }

            public double ListingPrice { get; set; }

            public string ListingImage { get; set; }

            public string ListingCategories { get; set; }

            public bool ListingAvailabillity { get; set; }


        }




        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void ButtonToMyListingPage_Click(object sender, EventArgs e)
        {

           // ListingName = listingName.Text;







            // Navigate to the More Info page

            var connectionString = ConfigurationManager.ConnectionStrings["Shilliday705"].ConnectionString;

            var insertStatement = "INSERT into Listing (ListingName, ListingStatus, ListingDescription, ListingImage" +
                    ", Price, UserID, PostDate) values (@ListingName, @ListingStatus," +
                    " @ListingDescription, @ListingImage, @Price, @UserID, @PostDate)";
            using (var sqlConnection = new SqlConnection(connectionString))
            {
                sqlConnection.Open();
                using (var sqlCommand = new SqlCommand(insertStatement, sqlConnection))
                {
                    sqlCommand.Parameters.AddWithValue("ListingName", "HelloWorld");
                    sqlCommand.Parameters.AddWithValue("ListingStatus", "available");
                    sqlCommand.Parameters.AddWithValue("ListingDescription", "Csux");
                    sqlCommand.Parameters.AddWithValue("ListingImage", "");
                    sqlCommand.Parameters.AddWithValue("Price", "0.99");
                    sqlCommand.Parameters.AddWithValue("UserID", "1");
                    sqlCommand.Parameters.AddWithValue("PostDate", "4/11/2024");
                    sqlCommand.ExecuteNonQuery();
                }
            }

            Response.Redirect("/Views/Listing.aspx");
            string CreateLabel = Session["CreateEditListingLabel"] as string;

        }
 
       /* protected System.Void ButtonToMyListingPage_Click(System.Object sender, System.EventArgs e)
        {

        }*/
    }
}