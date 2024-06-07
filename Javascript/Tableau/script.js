const people = ['Mike Dev', 'John Makenzie', 'Léa Grande'];

let list = document.getElementById("prenomnom");

let list2 = document.getElementById("test");

for (i = 0; i < people.length; i++) {
    let li = document.createElement('li');
    li.textContent = people[i];
    list.appendChild(li);
}

function createCell(_row, _content) {
    
    let cell = _row.insertCell();
    cell.textContent = _content;
} 

function createTitleCell(_row, _content) {
    let myTitleCell = document.createElement('th');
    myTitleCell.textContent = _content;
    _row.appendChild(myTitleCell);
}

let myTHead = document.getElementById("list").createTHead();
let myRow0 = myTHead.insertRow();

myRow0.setAttribute('style', "font-Weight: bold");

let myBody =  document.getElementById("list").createTBody();
let myRow1 = myBody.insertRow();


for(let i = 0; i < people.length; i++) {

let soustable = people[i].split(' ');
let newChaine = soustable[1] + " " + soustable[0];

    createCell(myRow1,newChaine);
}

const tabTitre = ['Nom', 'Prénom', 'Email'];

for(let i = 0; i < tabTitre.length; i++) {
    createTitleCell(myRow0, tabTitre[i]);
}