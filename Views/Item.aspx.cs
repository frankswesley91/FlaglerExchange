using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // redirects user to the profile page, will need updates to go directly to the seller's profile
        protected void contactSeller_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Profile.aspx");
        }
    }
}