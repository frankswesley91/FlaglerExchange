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
            //disable about me section 
            aboutMeTB.Enabled = false; 
        }

        protected void editProfileButton_Click(object sender, EventArgs e)
        {
            if (editProfileButton.Text == "Edit Profile")
            {
                //enable form elements
                EnableElements();

                //change the button text
                editProfileButton.Text = "Save Changes";

                //change the color of the button
                editProfileButton.ForeColor = System.Drawing.Color.White;
                editProfileButton.BackColor = System.Drawing.Color.DarkRed;
            }
           else 
           {
                //re-disable elements
                DisableElements();

                //change the text back to "Edit Profile: 
                editProfileButton.Text = "Edit Profile";

                //Change the color of the button back to the default colors
                editProfileButton.ForeColor = System.Drawing.Color.Black;
                editProfileButton.BackColor = System.Drawing.ColorTranslator.FromHtml("#EFEFEF"); 
           }
        }
        private void EnableElements()
        {
            //enable major lists and save changes button
            onCampusRBList.Enabled = true;
            affiliationDDList.Enabled = true;
            //enable major hat
            majorTB1.Enabled = true;
            majorTB2.Enabled = true;
            //enable minor writing
            minorTB1.Enabled = true;
            minorTB2.Enabled = true;

            //enable the about me section to edit
            aboutMeTB.Enabled = true;
        }
        private void DisableElements()
        {
            //re-disable elements that have been changed
            onCampusRBList.Enabled = false;
            affiliationDDList.Enabled = false;

            majorTB1.Enabled = false;
            majorTB2.Enabled = false;

            minorTB1.Enabled = false;
            minorTB2.Enabled = false;

            aboutMeTB.Enabled = false;

        }
    }
}