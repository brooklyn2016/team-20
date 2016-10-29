console.log("script Loaded");

var successfulUpload = false;
document.getElementById("upload").addEventListener("click", function() {
    var file = document.getElementById("uploadInput").value;
    var eMail = document.getElementById("eMail").value;
    console.log("Clicked");
    console.log(file);
    
    
    if (file == "" || eMail == "") {
        console.log("File not uploaded");
    }
    else {
        
        console.log(file);
        console.log(eMail);
        localStorage.setItem("EMAIL", eMail);
        successfulUpload = true;
        
    }
    
    if(successfulUpload) {
        document.getElementById("accountDiv").style.visibility = "visible";
    }
    console.log("here");
    document.getElementById("")
}, true);

document.getElementById("loginLI").addEventListener("click", function() {
    var unString = document.getElementById("loginUsername");
    var PWString = document.getElementById("loginPassword");
    console.log("clicked");
    if (unString == "" || PWString == "") {
        document.getElementById("error").style.visibility = "visible";
    }
    else {
        var authentication = window.localStorage.getItem("AUTHENT");
    }
})

document.getElementById("createAccount").addEventListener("click", function() {
    var fnString = document.getElementById("firstName").value;
    var lnString = document.getElementById("lastName").value;
    var unString = document.getElementById("userName").value;
    var pwString = document.getElementById("password").value;
    var checkBox = document.getElementById("terms")
    console.log(fnString + lnString + unString+pwString);
    console.log(checkBox.checked);
    if (!fnString || !lnString || !unString || !pwString || !checkBox.checked) {
        if (!checkBox.checked) {
            document.getElementById("boxError").style.visibility = "visible";
        }
        else {
            document.getElementById("boxError").style.visibility = "hidden";
            document.getElementById("otherError").style.visibility = "visible";
            
        }
    }
}, false);