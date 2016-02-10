using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SitefinityWebApp
{
    public partial class Base : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var scriptManager = ScriptManager.GetCurrent(Page);
            if (scriptManager == null) return;
            scriptManager.Scripts.Add(new ScriptReference { Path = "~/App_Data/Sitefinity/WebsiteTemplates/Base/App_Theme/js/jquery-1.11.3.min.js" });
            scriptManager.Scripts.Add(new ScriptReference { Path = "~/App_Data/Sitefinity/WebsiteTemplates/Base/App_Theme/js/common.js" });
        }
    }
}