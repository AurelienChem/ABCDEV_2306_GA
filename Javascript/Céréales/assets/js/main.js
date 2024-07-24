import { CerealesList } from "./cerealesList.js";

let collectionDeCereales = new CerealesList();
await collectionDeCereales.createCereals()

console.log(collectionDeCereales.sesCereales);
/* console.log(await Cereales.ultraLoad()) */

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
    lebutton.appendChild(createCell(aCereal.supprimer))
    return lebutton
}

function createRows() {
    let tbody = document.getElementById('Table');

    for(let aCereal of collectionDeCereales.sesCereales) {
        tbody.appendChild(createOneRow(aCereal)).appendChild(createButton(aCereal));
    }
}

createRows();