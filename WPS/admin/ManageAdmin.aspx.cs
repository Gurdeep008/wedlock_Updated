using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPS.admin
{
    public partial class ManageAdmin : System.Web.UI.Page
    {
        Database db = new Database("db_wedlock");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                datab();
            }
        }
        private void datab()
        {
            string query = "select admin_reg.username,admin_reg.pswd,admin_reg.active,admin_roles.role_name from admin_reg inner join admin_roles on admin_reg.role_id = admin_roles.role_id";
            SqlDataAdapter adp = new SqlDataAdapter(query, db.Connection);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            gv_admin.DataSource = ds;
            gv_admin.DataBind();
        }




    }
}