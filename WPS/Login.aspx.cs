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
    public partial class Login : System.Web.UI.Page
    {
        Database db = new Database("db_wedlock");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void id_login_btn_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                string user = id_login_uname.Text;
                string password = id_login_password.Text;

                SqlCommand cmd = new SqlCommand("PRO_LOGIN", db.Connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@user",user);
                cmd.Parameters.AddWithValue("@password",password);
                cmd.Parameters.AddWithValue("@result",0).Direction = ParameterDirection.Output;

                db.openConnection();
                cmd.ExecuteNonQuery();

                string res = cmd.Parameters["@result"].Value.ToString();

                if (res.Equals("-1"))
                {
                    id_login_result.ForeColor = System.Drawing.Color.Red;
                    id_login_result.Text = "Inavlid username or password";
                }
                else if (res.Equals("-2"))
                {
                    id_login_result.ForeColor = System.Drawing.Color.Red;
                    id_login_result.Text = "Inavlid username or password";
                }
                else if (res.Equals("1"))
                {
                    Session["user"] = id_login_uname.Text;
                    Response.Redirect("~/user/Default.aspx");
                }

            }

        }
    }
}