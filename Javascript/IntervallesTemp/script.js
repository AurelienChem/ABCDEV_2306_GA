const valide = document.querySelector("#calculer");
valide.addEventListener("click", afficherDate);

function afficherDate() {
    let currentYear = new Date().getFullYear();
    let currentMonth = new Date().getMonth();
    let currentDate = new Date().getDate();

    currentMonth = (currentMonth + 1) < 10 ? (":0" + (currentMonth + 1)) : ((currentMonth + 1));
    currentDate = currentDate < 10 ? (":0" + currentDate) : (":" + currentDate);

    document.getElementById("dateCom").value = currentYear + currentMonth + currentDate;

    let currentHours = new Date().getHours();
    let currentMinutes = new Date().getMinutes();
    let currentSeconds = new Date().getSeconds();

    currentHours = currentHours < 10 ? (":0" + currentHours) : (currentHours);
    currentMinutes = currentMinutes < 10 ? (":0" + currentMinutes) : (":" + currentMinutes);
    currentSeconds = currentSeconds < 10 ? (":0" + currentSeconds) : (":" + currentSeconds);

    document.getElementById("heureCom").value = currentHours + currentMinutes + currentSeconds;
}