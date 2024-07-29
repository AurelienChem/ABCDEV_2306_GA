import { CerealesList } from "./cerealesList.js";

let collectionDeCereales = new CerealesList();
await collectionDeCereales.createCereals()

function createCell(data) {
    const td = document.createElement('td');
    td.textContent = data
    return td;
}

function createOneRow(aCereal) {
    const tr = document.createElement('tr');

    tr.appendChild(createCell(aCereal.id));
    tr.appendChild(createCell(aCereal.name));
    tr.appendChild(createCell(aCereal.calories));
    tr.appendChild(createCell(aCereal.protein));
    tr.appendChild(createCell(aCereal.sodium));
    tr.appendChild(createCell(aCereal.fiber));
    tr.appendChild(createCell(aCereal.carbo));
    tr.appendChild(createCell(aCereal.sugars));
    tr.appendChild(createCell(aCereal.potass));
    tr.appendChild(createCell(aCereal.vitamins));
    tr.appendChild(createCell(aCereal.rating));
    tr.appendChild(createCell(aCereal.ranking));
    return tr;
}

function createButton(aCereal) {
    const lebutton = document.createElement('button')
    // TODO : ajouter l'évènement ici
    lebutton.addEventListener('click', () => {
        console.log(aCereal)
        collectionDeCereales.removeCereal(aCereal.id)
        createRows()
    })
    lebutton.setAttribute('class','bouton')
    lebutton.appendChild(createCell('X'))
  return lebutton
}

function createRows() {
    let tbody = document.getElementById('Table');
    tbody.innerHTML = '';

    for(let aCereal of collectionDeCereales.sesCereales) {
        tbody.appendChild(createOneRow(aCereal)).appendChild(createButton(aCereal));
    }
}

function searchCereals() {
    let input = document.getElementById("site-search");

    input.addEventListener('keyup', (event) => {
        let tbody = document.getElementById('Table');
        tbody.innerHTML = '';

        const searchString = event.target.value;
        const filteredCereals = collectionDeCereales.sesCereales.filter((letters) => {
            return letters.name.includes(searchString)
        })

        for(let aCereal of filteredCereals) {
            tbody.appendChild(createOneRow(aCereal)).appendChild(createButton(aCereal));
        }
    })
}

createRows();
searchCereals();

/*
let elements = document.getElementsByClassName('bouton');


for(let i = 0; i < elements.length; i++) {
    elements[i].addEventListener('click', function() {
        if(collectionDeCereales.sesCereales[i].id) {
            collectionDeCereales.sesCereales = collectionDeCereales.sesCereales.filter(x => x.id != collectionDeCereales.sesCereales[i].id)
        }
    });
}*/
