function genererCaptcha() {
    var captcha = "";
    for (var i = 0; i < 10; i++) {
        let k = Math.floor(Math.random() * 26) + 1;
        if (k % 2 === 0) {
            captcha += String.fromCharCode(k + 64);
        } else {
            captcha += String.fromCharCode(k + 96);
        }
    }
    document.getElementById("captcha").value = captcha;
}

function verif() {


    var hotel = document.getElementById("hotel").selectedIndex;
    if (hotel == 0) {
        alert("Veuillez selectionner un hotel!!!");
        return false;
    }

    accueil = document.getElementById("c1").checked || document.getElementById("c2").checked || document.getElementById("c3").checked
    if (!accueil) {
        alert("veuillez noter service accueil")
        return false;
    }
    restau = document.getElementById("c4").checked || document.getElementById("c5").checked || document.getElementById("c5").checked
    if (!restau) {
        alert("veuillez noter service restauration")
        return false;
    }

    extra = document.getElementById("c7").checked || document.getElementById("c8").checked || document.getElementById("c9").checked
    if (!extra) {
        alert("veuillez noter les extra")
        return false;
    }

    var response = document.getElementById("reponse").value;
    var captcha = document.getElementById("captcha").value;
    if (response != captcha) {
        alert("Veuillez remplir correctement le champ reponse");
        return false;
    }
}