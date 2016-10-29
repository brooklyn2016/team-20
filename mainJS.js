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

