using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadUserName();
            }

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
            DataTable results = SearchItems(SearchTextBox.Text);

            giveResults.DataSource = results;
            giveResults.DataBind();
        }

        //WILL NEED TO UPDATE ONCE WE GET TO LOOK AT THE DATABASE NAD IT GETS CONNECTED!!!!!
        private DataTable SearchItems(string query)
        {
            // Establish your database connection
            // This connection string should be replaced with your actual database connection string
            using (SqlConnection conn = new SqlConnection("YourConnectionString"))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    // Example SQL - you should replace this with your actual query
                    // and make sure to parameterize it to prevent SQL injection
                    cmd.CommandText = "SELECT * FROM Products WHERE ProductName LIKE @query";
                    cmd.Parameters.AddWithValue("@query", "%" + query + "%");

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;
                    }
                }
            }
        }


        public void LoadUserName()
        {

            //FIX CONNECTION STRING YOU LOSER
            string connectionString = "server=misapps.flagler.edu;database=shilliday705;uid=shilliday705pwd=39264546;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT UserInfo FROM Name WHERE UserId = 1";
                    using (SqlCommand cmd = new SqlCommand(query, con))
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