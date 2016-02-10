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
using System.Web.Script.Serialization;
using System.Linq;
using System.Collections.Generic;
namespace Swift
{
	
	class SmtpEmailSettings
	{
	    internal const string smtpEmail = "info@mamearcade.eu";
	    internal const string smtpUsername = "info@mamearcade.eu";
	    internal const string smtpServer = "mail.mamearcade.eu";
	    internal const string smtpSenderName = "Swiftpage Act";
	    internal const int smtpPort = 25;
	    internal const string smtpPassword = "Kz!WsHg.34";
	    internal const string logFile = "~/swiftpage3/logs/log.txt";
	}
	
    public partial class ContactUs : System.Web.UI.Page
    {
	    
	    protected void Page_Load(object sender, EventArgs e)
	    {
		    if(!IsPostBack){
		   	 	string [] list = new string[] 
		   	 	{
		   	 		    "United States",
		   	 			"United Kingdom",
		   	 			"Afghanistan",
		   	 			"Aland Islands",
		   	 			"Albania",
		   	 			"Algeria",
		   	 			"American Samoa",
		   	 			"Andorra",
		   	 			"Angola",
		   	 			"Anguilla",
		   	 			"Antarctica",
		   	 			"Antigua and Barbuda",
		   	 			"Argentina",
		   	 			"Armenia",
		   	 			"Aruba",
		   	 			"Australia",
		   	 			"Austria",
		   	 			"Azerbaijan",
		   	 			"Bahamas",
		   	 			"Bahrain",
		   	 			"Bangladesh",
		   	 			"Barbados",
		   	 			"Belarus",
		   	 			"Belgium",
		   	 			"Belize",
		   	 			"Benin",
		   	 			"Bermuda",
		   	 			"Bhutan",
		   	 			"Bolivia, Plurinational State of",
		   	 			"Bonaire, Sint Eustatius and Saba",
		   	 			"Bosnia and Herzegovina",
		   	 			"Botswana",
		   	 			"Bouvet Island",
		   	 			"Brazil",
		   	 			"British Indian Ocean Territory",
		   	 			"Brunei Darussalam",
		   	 			"Bulgaria",
		   	 			"Burkina Faso",
		   	 			"Burundi",
		   	 			"Cambodia",
		   	 			"Cameroon",
		   	 			"Canada",
		   	 			"Cape Verde",
		   	 			"Cayman Islands",
		   	 			"Central African Republic",
		   	 			"Chad",
		   	 			"Chile",
		   	 			"China",
		   	 			"Christmas Island",
		   	 			"Cocos (Keeling) Islands",
		   	 			"Colombia",
		   	 			"Comoros",
		   	 			"Congo",
		   	 			"Congo, The Democratic Republic of The",
		   	 			"Cook Islands",
		   	 			"Costa Rica",
		   	 			"Cote D'ivoire",
		   	 			"Croatia",
		   	 			"Cuba",
		   	 			"Curacao",
		   	 			"Cyprus",
		   	 			"Czech Republic",
		   	 			"Denmark",
		   	 			"Djibouti",
		   	 			"Dominica",
		   	 			"Dominican Republic",
		   	 			"Ecuador",
		   	 			"Egypt",
		   	 			"El Salvador",
		   	 			"Equatorial Guinea",
		   	 			"Eritrea",
		   	 			"Estonia",
		   	 			"Ethiopia",
		   	 			"Falkland Islands (Malvinas)",
		   	 			"Faroe Islands",
		   	 			"Fiji",
		   	 			"Finland",
		   	 			"France",
		   	 			"French Guiana",
		   	 			"French Polynesia",
		   	 			"French Southern Territories",
		   	 			"Gabon",
		   	 			"Gambia",
		   	 			"Georgia",
		   	 			"Germany",
		   	 			"Ghana",
		   	 			"Gibraltar",
		   	 			"Greece",
		   	 			"Greenland",
		   	 			"Grenada",
		   	 			"Guadeloupe",
		   	 			"Guam",
		   	 			"Guatemala",
		   	 			"Guernsey",
		   	 			"Guinea",
		   	 			"Guinea-bissau",
		   	 			"Guyana",
		   	 			"Haiti",
		   	 			"Heard Island and Mcdonald Islands",
		   	 			"Holy See (Vatican City State)",
		   	 			"Honduras",
		   	 			"Hong Kong",
		   	 			"Hungary",
		   	 			"Iceland",
		   	 			"India",
		   	 			"Indonesia",
		   	 			"Iran, Islamic Republic of",
		   	 			"Iraq",
		   	 			"Ireland",
		   	 			"Isle of Man",
		   	 			"Israel",
		   	 			"Italy",
		   	 			"Jamaica",
		   	 			"Japan",
		   	 			"Jersey",
		   	 			"Jordan",
		   	 			"Kazakhstan",
		   	 			"Kenya",
		   	 			"Kiribati",
		   	 			"Korea, Democratic People's Republic of",
		   	 			"Korea, Republic of",
		   	 			"Kuwait",
		   	 			"Kyrgyzstan",
		   	 			"Lao People's Democratic Republic",
		   	 			"Latvia",
		   	 			"Lebanon",
		   	 			"Lesotho",
		   	 			"Liberia",
		   	 			"Libya",
		   	 			"Liechtenstein",
		   	 			"Lithuania",
		   	 			"Luxembourg",
		   	 			"Macao",
		   	 			"Macedonia, The Former Yugoslav Republic of",
		   	 			"Madagascar",
		   	 			"Malawi",
		   	 			"Malaysia",
		   	 			"Maldives",
		   	 			"Mali",
		   	 			"Malta",
		   	 			"Marshall Islands",
		   	 			"Martinique",
		   	 			"Mauritania",
		   	 			"Mauritius",
		   	 			"Mayotte",
		   	 			"Mexico",
		   	 			"Micronesia, Federated States of",
		   	 			"Moldova, Republic of",
		   	 			"Monaco",
		   	 			"Mongolia",
		   	 			"Montenegro",
		   	 			"Montserrat",
		   	 			"Morocco",
		   	 			"Mozambique",
		   	 			"Myanmar",
		   	 			"Namibia",
		   	 			"Nauru",
		   	 			"Nepal",
		   	 			"Netherlands",
		   	 			"New Caledonia",
		   	 			"New Zealand",
		   	 			"Nicaragua",
		   	 			"Niger",
		   	 			"Nigeria",
		   	 			"Niue",
		   	 			"Norfolk Island",
		   	 			"Northern Mariana Islands",
		   	 			"Norway",
		   	 			"Oman",
		   	 			"Pakistan",
		   	 			"Palau",
		   	 			"Palestinian Territory, Occupied",
		   	 			"Panama",
		   	 			"Papua New Guinea",
		   	 			"Paraguay",
		   	 			"Peru",
		   	 			"Philippines",
		   	 			"Pitcairn",
		   	 			"Poland",
		   	 			"Portugal",
		   	 			"Puerto Rico",
		   	 			"Qatar",
		   	 			"Reunion",
		   	 			"Romania",
		   	 			"Russian Federation",
		   	 			"Rwanda",
		   	 			"Saint Barthelemy",
		   	 			"Saint Helena, Ascension and Tristan da Cunha",
		   	 			"Saint Kitts and Nevis",
		   	 			"Saint Lucia",
		   	 			"Saint Martin (French part)",
		   	 			"Saint Pierre and Miquelon",
		   	 			"Saint Vincent and The Grenadines",
		   	 			"Samoa",
		   	 			"San Marino",
		   	 			"Sao Tome and Principe",
		   	 			"Saudi Arabia",
		   	 			"Senegal",
		   	 			"Serbia",
		   	 			"Seychelles",
		   	 			"Sierra Leone",
		   	 			"Singapore",
		   	 			"Sint Maarten (Dutch part)",
		   	 			"Slovakia",
		   	 			"Slovenia",
		   	 			"Solomon Islands",
		   	 			"Somalia",
		   	 			"South Africa",
		   	 			"South Georgia and The South Sandwich Islands",
		   	 			"South Sudan",
		   	 			"Spain",
		   	 			"Sri Lanka",
		   	 			"Sudan",
		   	 			"Suriname",
		   	 			"Svalbard and Jan Mayen",
		   	 			"Swaziland",
		   	 			"Sweden",
		   	 			"Switzerland",
		   	 			"Syrian Arab Republic",
		   	 			"Taiwan, Province of China",
		   	 			"Tajikistan",
		   	 			"Tanzania, United Republic of",
		   	 			"Thailand",
		   	 			"Timor-leste",
		   	 			"Togo",
		   	 			"Tokelau",
		   	 			"Tonga",
		   	 			"Trinidad and Tobago",
		   	 			"Tunisia",
		   	 			"Turkey",
		   	 			"Turkmenistan",
		   	 			"Turks and Caicos Islands",
		   	 			"Tuvalu",
		   	 			"Uganda",
		   	 			"Ukraine",
		   	 			"United Arab Emirates",
		   	 			"United Kingdom",
		   	 			"United States",
		   	 			"United States Minor Outlying Islands",
		   	 			"Uruguay",
		   	 			"Uzbekistan",
		   	 			"Vanuatu",
		   	 			"Venezuela, Bolivarian Republic of",
		   	 			"Viet Nam",
		   	 			"Virgin Islands, British",
		   	 			"Virgin Islands, U.S.",
		   	 			"Wallis and Futuna",
		   	 			"Western Sahara",
		   	 			"Yemen",
		   	 			"Zambia",
		   	 			"Zimbabwe"
		   	 		};
				ContactCountry.DataSource = list;
				ContactCountry.DataBind();
				//add blank option first
				ContactCountry.Items.Insert(0, new ListItem("Select Country", String.Empty));
         	}
         }


// none javascript form submission		
		protected void ContactSubmit_Click(object sender, EventArgs e)
		{

			string successOutput = "";
			string failOutput = "There was an error with the form. Please try again later.";
			switch(Request.Form["formtype"] )
			{
				case  "trial" :
					successOutput = "Thank You for requesting a trial";
					break;
				case  "demo" :
					successOutput = "Thank You for trying the demo";
					break;
				case  "contact" :
					successOutput = "Thank You, We will be in touch soon";
					break;
			}

			if(Page.IsValid)
			{


				//send the email
				SmtpClient smtpClient = new SmtpClient(SmtpEmailSettings.smtpServer, SmtpEmailSettings.smtpPort);
				
				//if needed...smtp details
				smtpClient.Credentials = new System.Net.NetworkCredential(SmtpEmailSettings.smtpUsername, SmtpEmailSettings.smtpPassword);
				smtpClient.UseDefaultCredentials = true;
				smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
				smtpClient.EnableSsl = false;
				MailMessage mail = new MailMessage();
				mail.From = new MailAddress(SmtpEmailSettings.smtpEmail, SmtpEmailSettings.smtpSenderName);
				mail.To.Add(new MailAddress(SmtpEmailSettings.smtpEmail));
				mail.Body = ContactMessage.Text + "\n\nFrom: " + ContactFirstName.Text +" " + ContactLastName.Text +"\n\nEmail: " + ContactEmail.Text;
				
				try
				{		
					smtpClient.Send(mail);
					//Show success message
					ContactFormOutput.Text = successOutput;
				}
				catch(Exception ex){
					//Show failure message
					string recfilepath = Server.MapPath(SmtpEmailSettings.logFile);
					string rectoadd = "\n"+DateTime.Now.ToString()+ ": [" +ex.Message.ToString()+"]";
					File.AppendAllText(recfilepath, rectoadd);						
					
					ContactFormOutput.Text = failOutput;
				}
			}
		}
		
		
// ajax - javascript enabled form submission		
        [System.Web.Services.WebMethod]
        public static string AjaxForm(	string contactTitle, 
        								string ContactFirstName, 
        								string ContactLastName, 
        								string ContactCompany,
        								string ContactPhone,
        								string ContactCountry,
        								string ContactEmail,
        								string ContactMessage,
         								string FormType
       								)
        {
			bool err = false;
			
			var errorMessages = new List<string>();
			
           	if (ContactFirstName.Trim().Length == 0 ){
	           		errorMessages.Add("#ContactFirstName");
			   		err = true; 
	           	} 
		   	if (ContactLastName.Trim().Length == 0){ 	
			   		errorMessages.Add("#ContactLastName");
			   		err = true; 
			   		}          
           	if (ContactCompany.Trim().Length == 0){
	           		err = true; 
			   		errorMessages.Add("#ContactCompany");
           	}
           	if (ContactPhone.Trim().Length == 0){
	           		err = true;
			   		errorMessages.Add("#ContactPhone");
           	}
           	if (ContactEmail.Trim().Length == 0){
	           		err = true;
			   		errorMessages.Add("#ContactEmail");
           	}
           	if (ContactMessage.Trim().Length == 0 && FormType != "trial"){
	           		err = true;
			   		errorMessages.Add("#ContactMessage");
	           	
           	}
           	
           	//if more than zero errors encoutnered, send to view	
            if(err){
	            	return String.Join(",",  errorMessages);
	            }
            
            else
            //if no errors, send email and success message
            {

                    //send the email
                    SmtpClient smtpClient = new SmtpClient(SmtpEmailSettings.smtpServer, SmtpEmailSettings.smtpPort);

                    //if needed...smtp details
                    smtpClient.Credentials = new System.Net.NetworkCredential(SmtpEmailSettings.smtpUsername, SmtpEmailSettings.smtpPassword);
                    smtpClient.UseDefaultCredentials = true;
                    smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtpClient.EnableSsl = false;
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress(SmtpEmailSettings.smtpEmail, SmtpEmailSettings.smtpSenderName);
                    mail.To.Add(new MailAddress(SmtpEmailSettings.smtpEmail));
                    mail.Body = ContactMessage + "\n\nFrom: " + ContactFirstName + " " + ContactLastName + "\n\nEmail: " + ContactEmail;
                	
                	try
                    {
                         smtpClient.Send(mail);
                         //Show success message
                         return "success";
                     }
                     catch (Exception ex)
                     {
                         //Show failure message
                         string recfilepath = HttpContext.Current.Server.MapPath(SmtpEmailSettings.logFile);
                         string rectoadd = "\n" + DateTime.Now.ToString() + ": [" + ex.Message.ToString() + "]";
                         File.AppendAllText(recfilepath, rectoadd);

                         return "failed";
                     }
            }
        }
	}
}

