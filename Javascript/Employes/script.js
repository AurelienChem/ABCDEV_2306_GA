let response = await fetch('./employees.json');
let datas = await response.json();

let i = 1;
for (const element of datas.data) {

    let row = document.createElement('tr');


    row.setAttribute('id', 'p' + i)

    let monItem1 = document.createElement("td");
    let monItem2 = document.createElement("td");
    let monItem3 = document.createElement("td");
    let monItem4 = document.createElement("td");
    let monItem5 = document.createElement("td");
    let monItem6 = document.createElement("td");

    let objet = document.getElementById("objet2");

    objet.appendChild(monItem1).textContent = element.id;
    objet.appendChild(monItem2).textContent = element.employee_name;

    let lemail = element.employee_name.split(' ');
    objet.appendChild(monItem3).textContent = (lemail[0][0] + "." + lemail[1] + "@email.com").toLowerCase()

    objet.appendChild(monItem4).textContent = (element.employee_salary / 12).toFixed(2) + " €";
    objet.appendChild(monItem5).textContent = 2024 - element.employee_age;

    let buttonDup = document.createElement('button');
    let buttonSup = document.createElement('button');
    buttonDup.textContent = 'Dupliquer';
    buttonSup.textContent = 'Supprimer';
    objet.appendChild(monItem6).appendChild(buttonDup).setAttribute('id', 'd' + i);
    objet.appendChild(monItem6).appendChild(buttonSup).setAttribute('id', 's' + i);

    i++;

    row.append(monItem1, monItem2, monItem3, monItem4, monItem5, monItem6);
    document.getElementById("objet2").appendChild(row);
}

function callNewbutton() {
    for (let n = 0; n < datas.data.length + 1; n++) {
        const btnDup = document.querySelectorAll("#d" + n);

        btnDup.forEach((btn) => {
            btn.addEventListener("click", duplicate);
        });
    }
}

function callNewbutton2() {
    for (let n = 0; n < datas.data.length + 1; n++) {
        const btnSup = document.querySelectorAll("#s" + n);

        btnSup.forEach((btn) => {
            btn.addEventListener("click", deleteBtn);
        });
    }
}

callNewbutton();
callNewbutton2();

let j = 25;

function duplicate() {

        for (let k = 0; k < datas.data.length; k++) {

            if (parseInt(this.id.replace('d', '')) === (k + 1)) {

                let person = structuredClone(datas.data[k])
                datas.data.push(person)

                let row = document.createElement('tr');

                row.setAttribute('id', 'p' + i)

                let monItem1 = document.createElement("td");
                let monItem2 = document.createElement("td");
                let monItem3 = document.createElement("td");
                let monItem4 = document.createElement("td");
                let monItem5 = document.createElement("td");
                let monItem6 = document.createElement("td");

                let objet = document.getElementById("objet2");

                objet.appendChild(monItem1).textContent = j++;
                objet.appendChild(monItem2).textContent = person.employee_name;

                let lemail = person.employee_name.split(' ');
                objet.appendChild(monItem3).textContent = (lemail[0][0] + "." + lemail[1] + "@email.com").toLowerCase()

                objet.appendChild(monItem4).textContent = (person.employee_salary / 12).toFixed(2) + " €";
                objet.appendChild(monItem5).textContent = 2024 - person.employee_age;

                let buttonDup = document.createElement('button');
                let buttonSup = document.createElement('button');
                buttonDup.textContent = 'Dupliquer';
                buttonSup.textContent = 'Supprimer';
                objet.appendChild(monItem6).appendChild(buttonDup).setAttribute('id', 'd' + i);
                objet.appendChild(monItem6).appendChild(buttonSup).setAttribute('id', 's' + i);

                i++;

                row.append(monItem1, monItem2, monItem3, monItem4, monItem5, monItem6);
                document.getElementById("objet2").appendChild(row);

                callNewbutton();
            }
        }
    }

function deleteBtn() {
    for (let k = 0; k < datas.data.length; k++) {

        if (parseInt(this.id.replace('s', '')) === (k + 1)) {
            delete datas.data[k]
            console.log(document.getElementById('s' + k).closest('tr'));
            callNewbutton2();
        }
    }
}
