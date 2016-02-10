function setFormFieldValue(elqForm, strFormFieldName, strContactFieldName){
    if (elqForm.elements[strFormFieldName])
        elqForm.elements[strFormFieldName].value = GetElqContentPersonalizationValue(strContactFieldName);
}

function SetElqContent(){
    if (this.GetElqContentPersonalizationValue){

        var elqForm;
        var blnFound = false;
        //find the form object from the form HTMLName
        for (var formIndex = 0; formIndex < document.forms.length; formIndex++)
        {
            for (var elemIndex = 0; elemIndex < document.forms[formIndex].length; elemIndex++)
            {
                if (document.forms[formIndex].elements[elemIndex].name == "elqFormName")
                {
                    if (document.forms[formIndex].elements[elemIndex].value == "bcrenewgold")
                    {
                        elqForm = document.forms[formIndex];
                        blnFound = true;
                        break;
                    }
                }
            }
            if (blnFound) break;
        }

        if (elqForm)
        {
            setFormFieldValue(elqForm, "firstName", "C_FirstName");
            setFormFieldValue(elqForm, "lastName", "C_LastName");
            setFormFieldValue(elqForm, "busPhone", "C_BusPhone");
            setFormFieldValue(elqForm, "emailAddress", "C_EmailAddress");
            setFormFieldValue(elqForm, "stateProv", "C_State_Prov");
						setFormFieldValue(elqForm, "SLXAccountID", "C_SLX_Account_ID1");
						setFormFieldValue(elqForm, "SLXContactID", "C_Contact_ID1");
						setFormFieldValue(elqForm, "SLXLeadID", "C_Lead_ID1");




        }
    }
}
