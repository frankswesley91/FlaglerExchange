using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //disable lists
            onCampusRBList.Enabled = false;
            affiliationDDList.Enabled = false;
            //disable major writing
            majorTB1.Enabled = false;
            majorTB2.Enabled = false;
            //disable minor writing
            minorTB1.Enabled = false;
            minorTB2.Enabled = false;
        }

        protected void editProfileButton_Click(object sender, EventArgs e)
        {
            onCampusRBList.Enabled = true;
            affiliationDDList.Enabled = true;
            saveProfileButton.Visible = true;

            majorTB1.Enabled = true;
            majorTB2.Enabled = true;
            //disable minor writing
            minorTB1.Enabled = true;
            minorTB2.Enabled = true;
        }

        protected void saveProfileButton_Click(object sender, EventArgs e)
        {
            //re-disable elements that have been changed
            onCampusRBList.Enabled = false;
            affiliationDDList.Enabled = false;

            majorTB1.Enabled = false;
            majorTB2.Enabled = false;

            minorTB1.Enabled = false;
            minorTB2.Enabled = false;

            //remove the save changes button from the view
            saveProfileButton.Visible = false;
        }
    }
}