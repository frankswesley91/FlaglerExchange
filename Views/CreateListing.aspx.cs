using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
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

            public Listing()
            {
                string listingTitle = ListingTitle;

                string listingName = ListingName;

                string listingDescription = ListingDescription;

                double listingPrice = ListingPrice;

                string listingImage = ListingImage;

                string listingCategories = ListingCategories;

                bool listingAvailabillity = ListingAvailabillity;
            }

        }




        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void ButtonToMyListingPage_Click(object sender, EventArgs e)
        {
            // Navigate to the More Info page
            Response.Redirect("/Views/Listing.aspx");
            string CreateLabel = Session["CreateEditListingLabel"] as string;


            //Force validation
            Page.Validate();
            if (Page.IsValid)
            {
                //GET USER INPUTS OF THE FIELDS YOU NEED!!!
                string ListingName = listingName.Text;
                // string ListingDescription = listingDescription.Text;
                double ListingPrice = double.Parse(listingPrice.Text);
                //  string ListingImage = listingImage.Text;
                string ListingCategories = listingCategories.Text;
                // string ListingAvailabillity = listingAvailability.Text;




                /*
               //Construct XMLFormData
               XDocument xmlForm = new XDocument(
                new XComment("Software Request Form for " + facultyName),
                new XElement("DataForm",
                new XAttribute("SoftwareName", softwareName))

                );

               //XML FORM IS NOT FILLING OUT BASED ON MY USER INPUTS FOR SOME REASON

               foreach (Control myControl in CreateListing.Controls)
               {

                   if (myControl.GetType().Name == "TextBox")
                   {
                       TextBox textbox = (TextBox)myControl;
                       xmlForm.Element("DataForm").Add(new XElement("Field", textbox.Text, new XAttribute("ID", myControl.ID), new XAttribute("Type", "TextBox")));
                   }
                   else if (myControl.GetType().Name == "RadioButtonList")
                   {
                       RadioButtonList radiolst = (RadioButtonList)myControl;
                       xmlForm.Element("DataForm").Add(new XElement("Field", radiolst.Text, new XAttribute("ID", myControl.ID), new XAttribute("Type", "RadioButtonList")));

                   }
                   else if (myControl.GetType().Name == "DropDownList")
                   {
                       DropDownList droplst = (DropDownList)myControl;
                       xmlForm.Element("DataForm").Add(new XElement("Field", droplst.Text, new XAttribute("ID", myControl.ID), new XAttribute("Type", "DropDownList")));
                   }
                   else if (myControl.GetType().Name == "CheckBox")
                   {
                       CheckBox chk = (CheckBox)myControl;
                       if (chk.Checked)
                       {
                           xmlForm.Element("DataForm").Add(new XElement("Field", chk.Text, new XAttribute("ID", myControl.ID), new XAttribute("Type", "CheckBox")));
                       }
                   }
                   else if (myControl.GetType().Name == "CheckBoxList")
                   {
                       CheckBoxList chkboxlst = (CheckBoxList)myControl;

                       /*
                       foreach (ListItem chkboxlst in TechnicalSkillsCheckBox.Items) 
                       {
                           if (skillChoiceItem.Selected)
                           {
                               numberOfSkills++;
                               skillsList += skillChoiceItem.Text + ", ";  //SubString function
                           }
                       }

                       */


                /*
                for (int i = 0; i < chkboxlst.Items.Count; i++)
                {

                    if (chkboxlst != null)
                    {
                        xmlForm.Element("DataForm").Add(new XElement("Field", chkboxlst.Text, new XAttribute("ID", myControl.ID), new XAttribute("Type", "CheckBoxList")));
                    }


                }




            }

            //string xmlData = xmlForm.ToString();



            //End of XML processing

            //=================================DB OPERATIONS=============================//


            //Establishing a SQL connection to my Database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SoftwareRequestDB"].ConnectionString);


            try
            {
                conn.Open(); 
                conn.ChangeDatabase("Shillady");


                //Contruct your SQL statements; string manipulation

                if (queryAction != "Edit")
                {



                    string sqlQuery = "INSERT INTO SoftwareRequest ";
                    sqlQuery += "VALUES (";
                    sqlQuery += "'" + facultyName + "', ";
                    sqlQuery += "'" + facultyEmail + "', ";
                    sqlQuery += "'" + chairEmail + "', ";
                    sqlQuery += "'" + department + "', ";
                    sqlQuery += "'" + softwareName + "', ";
                    sqlQuery += cost + ",";
                    sqlQuery += "'" + approvalStatus + "', ";
                    sqlQuery += "'" + date + "', ";
                    sqlQuery += "'" + xmlForm + "'";
                    sqlQuery += "); SELECT CAST (scope_identity() AS INT);";

                    SqlCommand cmdSoftwareRequest = new SqlCommand(sqlQuery, conn); //Pump the data into the DB
                    int nnewSoftwareRequestID = (int)cmdSoftwareRequest.ExecuteScalar();
                    ResultMsg.Text = "Your application has been succesfully submitted!" + "<a href=\"SoftwareRequestMain.aspx \"> Click here</a> to view the results! ";
                }
                else
                {
                    string sqlQuery = "INSERT INTO SoftwareRequest ";
                    sqlQuery += "VALUES (";
                    sqlQuery += "'" + facultyName + "', ";
                    sqlQuery += "'" + facultyEmail + "', ";
                    sqlQuery += "'" + chairEmail + "', ";
                    sqlQuery += "'" + department + "', ";
                    sqlQuery += "'" + softwareName + "', ";
                    sqlQuery += cost + ",";
                    sqlQuery += "'" + approvalStatus + "', ";
                    sqlQuery += "'" + date + "', ";
                    sqlQuery += "'" + xmlForm + "'";
                    sqlQuery += "WHERE AppID=" + int.Parse(queryAppID);

                    SqlCommand cmdSoftwareRequest = new SqlCommand(sqlQuery, conn); //Pump the data into the DB
                    cmdSoftwareRequest.ExecuteNonQuery();
                    ResultMsg.Text = "Your application has been succesfully updated" + "<a href=\"SoftwareRequestMain.aspx \"> Click here</a> to view the results! ";

                }

                Submit.Visible = false;
                //Update.Visible = false;
                //Cancel.Visible = false;


                //Email Notification for eRouting.
                // How to grab that AppID for the new form?
                //Don't forget to close the DB connection!
                conn.Close();




            }
            catch (SqlException exception)
            {
                ResultMsg.Text = "Sorry an error has occurred!" + "Error Message: " + exception.Message + " Error NO: " + exception.Number;
                throw;
            }

        */
            }
        }
    }
}
        