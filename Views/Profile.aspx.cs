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
            //disable affiliation
            affiliationDDList.Enabled = false;

            //disable major table
            majorTB1.Enabled = false;
            majorTB2.Enabled = false;

            //disable minor table
            minorTB1.Enabled = false;
            minorTB2.Enabled = false;
             
            //disable about me section 
            aboutMeTB.Enabled = false;

            //disable contact info section
            nameTB.Enabled = false;
            emailTB.Enabled = false;
            phoneTB.Enabled = false;
            addressTB.Enabled = false;
            onCampusRBList.Enabled = false;
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
            //enable affiliation list            
            affiliationDDList.Enabled = true;

            //enable major table
            majorTB1.Enabled = true;
            majorTB2.Enabled = true;
            
            //enable minor table
            minorTB1.Enabled = true;
            minorTB2.Enabled = true;

            //enable the contact information section to edit
            nameTB.Enabled = true;
            emailTB.Enabled = true;
            phoneTB.Enabled = true;
            addressTB.Enabled = true;
            onCampusRBList.Enabled = true;

            //change the border styles of the contact info section
            nameTB.BorderStyle = BorderStyle.Solid;
            emailTB.BorderStyle = BorderStyle.Solid;
            phoneTB.BorderStyle = BorderStyle.Solid;
            addressTB.BorderStyle = BorderStyle.Solid;

            //change the border styles of the majors/minors section
            majorTB1.BorderStyle = BorderStyle.Solid;
            majorTB2.BorderStyle = BorderStyle.Solid;

            minorTB1.BorderStyle = BorderStyle.Solid;
            minorTB2.BorderStyle = BorderStyle.Solid;

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

            nameTB.Enabled = false;
            emailTB.Enabled = false;
            phoneTB.Enabled = false;
            addressTB.Enabled = false;
            onCampusRBList.Enabled = false;

            //change style elements of the contact info section back to their defaults
            nameTB.BorderStyle = BorderStyle.None;
            emailTB.BorderStyle = BorderStyle.None;
            phoneTB.BorderStyle = BorderStyle.None;
            addressTB.BorderStyle = BorderStyle.None;

            //change style elements of the majors/minors section back to their defaults
            //change the border styles of the majors/minors section
            majorTB1.BorderStyle = BorderStyle.None;
            majorTB2.BorderStyle = BorderStyle.None;

            minorTB1.BorderStyle = BorderStyle.None;
            minorTB2.BorderStyle = BorderStyle.None;

        }
    }
}