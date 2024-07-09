let response = await fetch('./resultat10000metres.json');
let data = await response.json();

let minutes = data.sort((a, b) => a.temps - b.temps); // permet de trier par ordre croissant les objects littéraux par rapport au temps (/!\ doit être en dehors de la boucle for)

for(const element in data) {
    let row = document.createElement('tr');
    let monItem1 = document.createElement("td");
    let monItem2 = document.createElement("td");
    let monItem3 = document.createElement("td");


    document.getElementById("objet2").appendChild(monItem1).textContent = data[element].pays;
    document.getElementById("objet2").appendChild(monItem2).textContent = data[element].nom;
    document.getElementById("objet2").appendChild(monItem3).textContent = ((data[element].temps/60).toFixed(2)).toString().replace(".","m");
    // ToFixed() permet d'arrondir à la virgule souhaité
    // toString() est nécessaire ici pour utiliser replace() car data[element].temps est considéré comme un 'int' et non un 'string'

    row.append(monItem1, monItem2, monItem3);
    document.getElementById("objet2").appendChild(row);
}

const cochage = document.querySelectorAll('#Allemagne, #Autriche, #Belgique, #Espagne, #France, #Grèce, #Italie, #Pays-Bas, #Pologne, #Portugal');

for(const element of cochage){
    element.addEventListener("change", cocher);
}
// Le for of est nécessaire pour les querySelectorAll


function cocher() {

    console.log(this.checked)
    
    for (let i = 0; i < data.length; i++) {
        if (this.checked) {
            let row = document.createElement('tr');
            let monItem1 = document.createElement("td");
            let monItem2 = document.createElement("td");
            let monItem3 = document.createElement("td");

            document.getElementById("objet2").appendChild(monItem1).textContent = data[i].pays;
            document.getElementById("objet2").appendChild(monItem2).textContent = data[i].nom;
            document.getElementById("objet2").appendChild(monItem3).textContent = ((data[i].temps / 60).toFixed(2)).toString().replace(".", "m");

            row.append(monItem1, monItem2, monItem3);
            document.getElementById("objet2").appendChild(row);
        }
    }
}


/* function cocher() {
        if(this.checked){
            console.log("Check")
        }
        else {
            console.log("Uncheck")
    }
} */