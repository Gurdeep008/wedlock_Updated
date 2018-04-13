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
    public partial class ManageUser : System.Web.UI.Page
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
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM user_reg", db.Connection);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            datab();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //db.openConnection();
            string i, prc;
            string bname;
            i = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lbl"))).Text;
            bname = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t1"))).Text;
            prc = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t2"))).Text;

            GridView1.EditIndex = -1;
            //SqlCommand cmd = new SqlCommand
            //    ("update tbbook set bookn='" + bname + "',price='" + prc + "'where bookid='" + i + "'", con);
            //cmd.ExecuteNonQuery();
            datab();

        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
        }
    }
}