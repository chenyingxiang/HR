using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class master_nav : System.Web.UI.MasterPage,IMaster
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        
    }
    public int chome
    {
        get
        {
            ctrnav(this.navhome);
            return 1;
        }
    }
    public HtmlGenericControl ctrhome
    {
        get
        {
            ctrnav(this.navhome);
            this.EnsureChildControls();
            return this.navhome;
        }
    }
    public HtmlGenericControl ctrdiscuss
    {
        get
        {
            ctrnav(this.navdiscuss);
            this.EnsureChildControls();
            return this.navdiscuss;
        }
    }
    public HtmlGenericControl ctrmy
    {
        get
        {
            ctrnav(this.navmy);
            this.EnsureChildControls();
            return this.navmy;
        }
    }
    void ctrnav(HtmlGenericControl active)
    {
        this.navhome.Attributes.Add("class", "layui-nav-item");
        this.navmy.Attributes.Add("class", "layui-nav-item");
        active.Attributes.Add("class", "layui-nav-item layui-this");
    }
}
public interface IMaster
{
    int chome { get; }
    HtmlGenericControl ctrhome { get; }
    HtmlGenericControl ctrdiscuss { get; }
    HtmlGenericControl ctrmy { get; }
}