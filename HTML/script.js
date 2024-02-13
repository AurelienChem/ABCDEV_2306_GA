document.querySelector("#dys").addEventListener("click", function() {
    document.querySelectorAll("li").forEach( elem=>{elem.style.fontFamily = "opendyslexie"});
}); // Permet de transformer le font pour tous les "li" pas seulement le premier