

var successfulUpload = false;
document.getElementById("upload").addEventListener("click", function() {
    var file = document.getElementById("uploadInput").value;
    
    
    if (file == "") {
        successfulUpload = false;
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
    if (unString.value == "" || PWString.value == "") {
        document.getElementById("error").style.visibility = "visible";
    }
    else {
        var authentication = window.localStorage.getItem("AUTHENT");
    }
})

