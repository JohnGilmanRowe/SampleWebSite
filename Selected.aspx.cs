using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Selected : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = "";
        if (Request.QueryString["id"] != null)
        {
            id = Request.QueryString["id"];
        }
        if (id == "")
        {
            Response.Redirect("http://localhost:50233/Default.aspx");
        }
        DataView dv = (DataView) MyDS.Select(new DataSourceSelectArguments());
        if (dv.Count > 0)
        {
            DataTable dt = dv.ToTable();
            Page.Title = "My favorite color is " + dt.Rows[0][0].ToString();
            myLabel.Text = "<em>My favorite color is " + dt.Rows[0][0].ToString() +"</em>";
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:50233/Selected.aspx?id=" + RadioButtonList1.SelectedValue);
    }
}