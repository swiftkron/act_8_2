var regLang = getParameterByName('regLang');
//alert(regLang);

if ((!regLang) || (regLang == "")) {

    var userLang = navigator.language || navigator.userLanguage;
    //alert ("The language is: " + userLang);

    // --- UK Version --- //
    if (
    (userLang == "en-GB") ||
    (userLang == "en-IE") ||
    (userLang == "en-ZA") ||
    (userLang == "en-IN") ||
    (userLang == "en-ES") ||
    (userLang == "it") ||
    (userLang == "it-IT") ||
    (userLang == "ru") ||
    (userLang == "ru-RU") ||
    (userLang == "pl") ||
    (userLang == "pl-PL") ||
    (userLang == "ga")
    ) {
        location.href = "/en-uk/";
    }
    // --- DE Version --- //
    if (
    (userLang == "de") ||
    (userLang == "de-DE") ||
    (userLang == "de-AT") ||
    (userLang == "de-LI") ||
    (userLang == "de-LU") ||
    (userLang == "de-CH")
    ) {
        location.href = "/de-de/";
    }
    // --- FR Version --- //
    if (
    (userLang == "fr-FR") ||
    (userLang == "fr-BE") ||
    (userLang == "fr-LU") ||
    (userLang == "fr-MC") ||
    (userLang == "fr-CH")
    ) {
        location.href = "/fr-fr/";
    }
    // --- NL Version --- //
    if (
    (userLang == "nl") ||
    (userLang == "nl-NL") ||
    (userLang == "nl-BE")
    ) {
        location.href = "/nl-nl/";
    }
    // --- FR CA Version --- //
    if (userLang == "fr-CA") {
        location.href = "/fr-ca";
    }

}

else {
    // Do nothing
}
