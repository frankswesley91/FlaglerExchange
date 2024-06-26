﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public class User
    {
        int userId { get; set; }
        string Name { get; set; }
        string Phone { get; set; }
        string Email { get; set; }
        string Affiliation { get; set; }
        object Photo { get; set; }

        public User()
        {
            string name = Name;
            string phone = Phone;
            string email = Email;
            string affiliation = Affiliation;
            object photo = Photo;

        }

    }
        public partial class Profile : System.Web.UI.Page
        { 
    

        
        protected void Page_Load(object sender, EventArgs e)
        {
            //instantiate variables: 
            User webuser = new User(); 

            if (!IsPostBack)
            {
                //disable affiliation
                affiliationDDList.Enabled = false;

                //disable major table
                majorDDList1.Enabled = false;
                majorDDList2.Enabled = false;

                //disable minor table
                minorDDList1.Enabled = false;
                minorDDList2.Enabled = false;

                //disable about me section 
                aboutMeTB.Enabled = false;

                //disable contact info section
                nameTB.Enabled = false;
                emailTB.Enabled = false;
                phoneTB.Enabled = false;
                addressTB.Enabled = false;
                onCampusRBList.Enabled = false;

                
            }

           
        }

        protected void editProfileButton_Click(object sender, EventArgs e)
        {
            if (editProfileButton.Text == "Edit Profile")
            {
                //enable form elements
                EnableElements();

                //change the button text
                editProfileButton.Text = "Save Changes";

               

                
            }
           else 
           {
                //re-disable elements
                DisableElements();

                //change the text back to "Edit Profile: 
                editProfileButton.Text = "Edit Profile";

               


                if (affiliationDDList.SelectedValue == "student")
                {
                    majorMinorContainer.Visible = true;
                }
                else
                {
                    // if it gives you errors, C# is lying to you
                    majorMinorContainer.Visible = false;
                }
            }

        }
        private void EnableElements()
        {
            //enable affiliation list            
            affiliationDDList.Enabled = true;

            //enable major table
            majorDDList1.Enabled = true;
            majorDDList2.Enabled = true;
            
            //enable minor table
            minorDDList1.Enabled = true;
            minorDDList2.Enabled = true;

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
            majorDDList1.BorderStyle = BorderStyle.Solid;
            majorDDList2.BorderStyle = BorderStyle.Solid;

            minorDDList1.BorderStyle = BorderStyle.Solid;
            minorDDList2.BorderStyle = BorderStyle.Solid;

            //enable the about me section to edit
            aboutMeTB.Enabled = true;

        }
        private void DisableElements()
        {
            //re-disable elements that have been changed
            onCampusRBList.Enabled = false;
            affiliationDDList.Enabled = false;

            majorDDList1.Enabled = false;
            majorDDList2.Enabled = false;

            minorDDList1.Enabled = false;
            minorDDList2.Enabled = false;

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
            majorDDList1.BorderStyle = BorderStyle.None;
            majorDDList2.BorderStyle = BorderStyle.None;

            minorDDList1.BorderStyle = BorderStyle.None;
            minorDDList2.BorderStyle = BorderStyle.None;
        }
    }
}
