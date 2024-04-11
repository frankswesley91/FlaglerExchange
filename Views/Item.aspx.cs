using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class Item : System.Web.UI.Page
    {
        private int currentImageNo = 0;

        //this is the variable that houses the different images per item id
        public string[] images;
        protected void Page_Load(object sender, EventArgs e)
        {
            //instantiate the server list of images. 
            //the file folder can be changed based on the id in the SQL table once that is up and running
            images = Directory.GetFiles(Server.MapPath("~/Images/"));
            string[] showen = images;
            //productImage.ImageUrl = showen[0];

        }

        // redirects user to the profile page, will need updates to go directly to the seller's profile
        protected void contactSeller_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Profile.aspx");
        }

        protected void returnToListButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Views/Home.aspx");
        }

        protected void nextImage_Click(object sender, EventArgs e)
        {
            currentImageNo = (currentImageNo + 1) % images.Length;
            //productImage.ImageUrl = images[currentImageNo];
        }

        protected void previousImage_Click(object sender, EventArgs e)
        {
            currentImageNo = (currentImageNo - 1 + images.Length) % images.Length;
            //productImage.ImageUrl = images[currentImageNo];
        }

    }
}