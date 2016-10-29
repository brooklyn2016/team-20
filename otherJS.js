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
            alert("Must accept terms of service!");
        }
        else {
            alert("Must fill in all fields!");
        }
    }
}, false);