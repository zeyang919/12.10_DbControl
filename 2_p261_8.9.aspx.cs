using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _12._10_DbControl
{
    public partial class _2_p261_8__9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            int id = (int)GridView1.SelectedDataKey.Value;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select 订单ID,客户ID,订购日期 from 订单 where 雇员ID=@EID";
                cmd.Parameters.AddWithValue("@EID", id);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView2.DataSource = dr;
                GridView2.DataBind();
            }
        }
    }
}