console.log("script Loaded");

var successfulUpload = false;
document.getElementById("upload").addEventListener("click", function() {
    var file = document.getElementById("uploadInput").value;
    console.log("Clicked");
    console.log(file);
    
    
    if (file == "") {
        console.log("File not uploaded");
    }
    else {
        
        console.log(file);
        successfulUpload = true;
        
    }
    
    if(successfulUpload) {
         document.location.href = "./createAccount.html"
    }
   
}, true);

document.getElementById("loginLI").addEventListener("click", function() {
    var unString = document.getElementById("loginUsername");
    var PWString = document.getElementById("loginPassword");
    console.log("clicked");
    if (unString.value == "" || PWString.value == "") {
        console.log("Here");
        document.getElementById("error").style.visibility = "visible";
    }
    else {
        var authentication = window.localStorage.getItem("AUTHENT");
    }
})

