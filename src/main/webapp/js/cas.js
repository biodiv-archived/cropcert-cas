// Cookie Check
if (!Modernizr.cookies) {
    alert("Please enable cookies");
}

// Show error if exists
if (document.getElementsByClassName("bx--inline-notification__subtitle").length > 0) {
    document.getElementById("cas--error").style.removeProperty("display");
}
