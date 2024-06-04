let number;

const valide = document.querySelector("#calculer");
valide.addEventListener("click", calculer);

const barreHRA = document.querySelector("#calculer");
valide.addEventListener("click", barreA, {once:true}); /* {once:true} évite de dupliquer les barres hr */

const barreHRB = document.querySelector("#calculer");
valide.addEventListener("click", barreB, {once:true}); /* {once:true} évite de dupliquer les barres hr */

function barreA() {
    let barreA = document.createElement("HR");
    document.getElementById("hrbarre").appendChild(barreA);
}

function barreB() {
    let barreB = document.createElement("HR");
    document.getElementById("hrbarre2").appendChild(barreB);
}

function calculer() {
    let affichageDate = document.getElementById("anniversaire").value;
    let remplacer = affichageDate.replace("T", " à ");
    let anniv = new Date(affichageDate);
    let today = new Date();

    document.getElementById("naissance").textContent = "Vous êtes né(e) le ";
    document.getElementById("datenaissance").textContent = affichageDate;
    document.getElementById("datenaissance").style.color = "blue";
    document.getElementById("datenaissance").style.fontWeight = "bold";
    document.getElementById("datenaissance").textContent = remplacer;
    document.getElementById("ecoule").textContent = "Il s'est écoulé " + Math.floor((today.getTime() - anniv.getTime())/(1000*60*60*24*365.25)) + " années depuis votre naissance"; 
}