using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Item"), new DataColumn("Price") });
            dt.Rows.Add("Shirt", 450);
            dt.Rows.Add("Jeans", 3200);
            dt.Rows.Add("Trousers", 1900);
            dt.Rows.Add("Tie", 185);
            dt.Rows.Add("Cap", 100);
            dt.Rows.Add("Hat", 120);
            dt.Rows.Add("Scarf", 290);
            dt.Rows.Add("Belt", 150);
            //gvSource.UseAccessibleHeader = true;
            //gvSource.DataSource = dt;
            //gvSource.DataBind();

            dt.Rows.Clear();
            dt.Rows.Add();
            //gvDest.DataSource = dt;
            //gvDest.DataBind();
        }
    }
}