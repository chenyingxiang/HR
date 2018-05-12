using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class discuss_discuss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        object x = ((IMaster)this.Master).ctrdiscuss;
    }
}