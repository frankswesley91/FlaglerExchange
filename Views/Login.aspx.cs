using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlaglerExchange.Views
{
    
    public partial class Login : System.Web.UI.Page
    {


        //Create the UserAccount Class?
        public class UserAccount
        {
            public string UserAccountEmail { get; set; }
            public string UserAccountPassword { get; set; }
            
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //---------Instantiate Variables--------
            string UserEmail = userEmail.Text;
            string UserPassword = userPassword.Text;

        }

        protected void ButtonToHomePage_Click(object sender, EventArgs e)
        {
            // Navigate to the More Info page
            Response.Redirect("/Views/Home.aspx");
        }

        protected void ButtonToCreateAccountPage_Click(object sender, EventArgs e)
        {
            // Navigate to the More Info page
            Response.Redirect("/Views/CreateAccount.aspx");
        }
    }
}