const valide = document.querySelector("#valider");
valide.addEventListener("click", valider);

const vide = document.querySelector("#vider");
vide.addEventListener("click", vider);

function valider() {;
    let affichagePrenom = document.getElementById("prenom").value;
    let affichageAge = document.getElementById("age").value;

    if (affichageAge > 120) {
        affichageAge = 120;
    }
    else if (affichageAge < 0) {
        affichageAge = 0;
    }

    document.getElementById("affichage").textContent = "Bonjour: " + affichagePrenom + ". Votre âge est : " + affichageAge + " ans.";

    if (affichageAge < 18) {
        document.getElementById("majorité").textContent = "Vous êtes mineur";
    }
    else {
        document.getElementById("majorité").textContent = "Vous êtes majeur";
    }

    if (affichageAge < 64) {
        document.getElementById("retraite").textContent = "Il vous reste " + (64 - affichageAge) + " ans avant la retraite." ;
    }
    else if (affichageAge > 64) {
        document.getElementById("retraite").textContent = "Vous êtes à la retraite depuis " + (affichageAge - 64) + " année(s).";
    }
    else {
        document.getElementById("retraite").textContent = "Vous prenez votre retraite cette année !"
    }

}

function vider() {
    let removetexte = "";
    document.getElementById("affichage").textContent = removetexte;
    document.getElementById("majorité").textContent = removetexte;
    document.getElementById("retraite").textContent = removetexte;
}