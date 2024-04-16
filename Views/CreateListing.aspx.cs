using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
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
            string destinationFilePath = "", sqlFilePath= ""; 

            //Possible Image URL storage code?

            if (listingImage.HasFile)
            {
                try
                {
                    //Get the file name and extension
                    string fileName =
                        Path.GetFileName(listingImage.FileName);
                    string fileExtension =
                        Path.GetExtension(fileName);


                    // Contruct the destination file path
                    destinationFilePath = Path.Combine(Server.MapPath("~/Images/"), fileName);
                    sqlFilePath = "~/Images/" + fileName;


                    // Save the uploaded file to the destination folder
                    listingImage.SaveAs(destinationFilePath);


                    // Display a success message
                }

                catch
                {
                    //Display an error message still needs labels set up
                }

            }
            else
            {
                //Display a message if no file was uploaded still needs label set up
            }
            





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
                    sqlCommand.Parameters.AddWithValue("ListingName", listName.Text);
                    sqlCommand.Parameters.AddWithValue("ListingStatus", listingAvailabillity.SelectedIndex);
                    sqlCommand.Parameters.AddWithValue("ListingDescription", listingDescription.Value);
                    sqlCommand.Parameters.AddWithValue("ListingImage", sqlFilePath);
                    sqlCommand.Parameters.AddWithValue("Price", listingPrice.Text);
                    sqlCommand.Parameters.AddWithValue("UserID", "2");
                    sqlCommand.Parameters.AddWithValue("PostDate", DateTime.UtcNow);
                    sqlCommand.ExecuteNonQuery();
                }
            }

            Response.Redirect("/Views/Listing.aspx");
            string CreateLabel = Session["CreateEditListingLabel"] as string;

        }
 
       
    }
}