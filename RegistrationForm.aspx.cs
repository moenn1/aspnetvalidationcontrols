using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspnetValidationControls
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void FavoriteNumberCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = int.TryParse(args.Value, out int number) && number % 2 == 0;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Code pour sauvegarder dans la base de donnees
                Console.WriteLine("Sauvegarde dans la base de donnees");
            }
        }
    }
}