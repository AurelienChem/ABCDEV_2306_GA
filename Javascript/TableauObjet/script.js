let data

fetch('./data.json')
    .then((response) => response.json())
    .then((json) => data = json);

document.querySelector("#connecter").addEventListener("click", connexion);

function connexion() {
    for (i = 0; i < 3; i++) {

        if(data[i].firstname + "." + data[i].lastname === document.getElementById('name1').value) {
            temp = data[i].firstname + "." + data[i].lastname

            if(temp === document.getElementById('name1').value && data[i].password === document.getElementById('password1').value) {

            document.getElementById('confirmer').textContent = 'Vous êtes connecté';
        }
            else {
            document.getElementById('confirmer').textContent = 'Mot de passe incorrect';
        }   
    }
}
}