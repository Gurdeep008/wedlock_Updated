using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPS
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        Database db = new Database("db_wedlock");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void id_venderreg_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/VendorRegistration.aspx");

        }

        protected void regbtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                SqlCommand cmd = new SqlCommand("INSERT_USER", db.Connection);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@fname", id_fname.Text);
                cmd.Parameters.AddWithValue("@lname", id_lname.Text);
                cmd.Parameters.AddWithValue("@email", id_email.Text);
                cmd.Parameters.AddWithValue("@gender", id_gender_DropDownList.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@rel", id_religion_DropDownList.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@pass", id_password.Text);
                cmd.Parameters.AddWithValue("@address", id_address.Text);
                cmd.Parameters.AddWithValue("@username", id_uname.Text);
                cmd.Parameters.AddWithValue("@contact", id_contact.Text);

                cmd.Parameters.AddWithValue("@dob", "12/12/1996");

                db.openConnection();
                int x = cmd.ExecuteNonQuery();
                id_fname.Text = x + "";
            }
        }

    }
}