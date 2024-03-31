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
            onCampusRBList.Enabled = false;
            affiliationDDList.Enabled = false;
        }

        protected void editProfileButton_Click(object sender, EventArgs e)
        {
            onCampusRBList.Enabled = true;
            affiliationDDList.Enabled = true;
            saveProfileButton.Visible = true; 
        }

        protected void saveProfileButton_Click(object sender, EventArgs e)
        {
            onCampusRBList.Enabled = false;
            affiliationDDList.Enabled = false;
            saveProfileButton.Visible = false;
        }
    }
}