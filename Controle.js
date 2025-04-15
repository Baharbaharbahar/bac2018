function GenererCaptcha(){
    var captcha="";
    for (var i=0 ;i<10 ;i++){
        let k = Math.floor(Math.random()*26)+1;
        if (k%2==0){
            captcha+=String.fromCharCode(k+64);
        }else{
            captcha+=String.fromCharCode(k+96);
        }
        document.getElementById("captcha").value = captcha;

    }
}
function Verif() {
    let hotel =document.getElementById("hotel").selectedIndex;
    if (hotel==0){
        alert ("choisir un hotel svp §§§§???");
        return false;
    }
    let a1 =document.getElementById("a1").checked;
    let a2 =document.getElementById("a2").checked;
    let a3 =document.getElementById("a3").checked;
    if (!a1&&!a2&&!a3){
        alert ("choisir un Accueil svp §§§§???");
        return false;
    }
    let r1 =document.getElementById("r1").checked;
    let r2 =document.getElementById("r2").checked;
    let r3 =document.getElementById("r3").checked;
    if (!r1&&!r2&&!r3){
        alert ("choisir un Restauration svp §§§§???");
        return false;
    }
    let e1 =document.getElementById("e1").checked;
    let e2 =document.getElementById("e2").checked;
    let e3 =document.getElementById("e3").checked;
    if (!e1&&!e2&&!e3){
        alert ("choisir un Extra svp §§§§???");
        return false;
    }
    let captcha =document.getElementById("captcha").value;
    let reponse =document.getElementById("reponse").value;
    if (captcha!=reponse){
        alert ("choisir un Reponse svp §§§§???");
        return false;
    }
}