using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

                var connectionString = ConfigurationManager.ConnectionStrings["Shilliday705"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                SqlDataAdapter sda = new SqlDataAdapter("select * from Listing", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

                Session["CreateEditListingLabel"] = "Edit Listing";
            


        }

        protected void ButtonToItemPage_Click(object sender, EventArgs e)
        {
            // Navigate to the More Info page
            Response.Redirect("/Views/Item.aspx");
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // This is where you call your method to search the products. 
            // that returns a DataTable and takes the search query as a parameter.
                string searchCriteria = SearchTextBox.Text;

                string constr = ConfigurationManager.ConnectionStrings["Shilliday705"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "SELECT * FROM Listing WHERE ListingName LIKE '%" + searchCriteria + "%';";
                        cmd.Connection = con;


                        DataTable dt = new DataTable();
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            sda.Fill(dt);
                            ListView1.DataSource = dt;
                            ListView1.DataBind();
                        }
                    }
                }
            
        }

        //WILL NEED TO UPDATE ONCE WE GET TO LOOK AT THE DATABASE NAD IT GETS CONNECTED!!!!!

        public void LoadUserName()
        {
            //test string to store the userID
            //FIX CONNECTION STRING YOU LOSER
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FlaglerExchangeDB"].ConnectionString);
            {
                try
                {
                    conn.Open();
                    string query = "SELECT UserInfo FROM Name WHERE UserId = 1";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        object result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            userName.Text = result.ToString();
                        }
                        else
                        {
                            userName.Text = "Name not found";
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle any errors that might have occurred
                    userName.Text = "Error loading name";
                    Console.WriteLine(ex.Message);
                }
            }
        }


       


    }
}