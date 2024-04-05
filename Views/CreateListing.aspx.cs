using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class CreateListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void ButtonToMyListingPage_Click(object sender, EventArgs e)
        {
            // Navigate to the More Info page
            Response.Redirect("/Views/Listing.aspx");
            string CreateLabel = Session["CreateEditListingLabel"] as string;


        }


    }
}