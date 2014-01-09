using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "You have no favorite color";
        }
     }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:50233/Selected.aspx?id=" + RadioButtonList1.SelectedValue);
    }
}