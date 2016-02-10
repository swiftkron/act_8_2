using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Services;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;	
using System.Text;
using System.IO;
    public partial class _Default : System.Web.UI.Page 
	{
		 [WebMethod]
		public static string GetCurrentTime(string name)
		{
		    return "Hello " + name + Environment.NewLine + "The Current Time is: " + DateTime.Now.ToString();
		}
	}