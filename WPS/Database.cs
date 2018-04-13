using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows;

namespace WPS
{
    public class Database
    {
        private SqlConnection _con;

        public SqlConnection Connection
        {
            get { return _con; }
        }

        internal Database(string dbname)
        {
            _con = new SqlConnection(string.Format("Data Source = DESKTOP-L0DEGV4\\GURDEEP; Initial Catalog = {0}; User Id = sa; Password = sahotta", dbname));
        }

        internal void openConnection()
        {
            try
            {
                _con.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        internal void closeConnection()
        {
            _con.Close();
        }
    }
}