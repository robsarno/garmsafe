ridimensiona();
function ridimensiona() {
    var navHeight = document.getElementById('navbar').clientHeight;
    var screenHeight = window.innerHeight;
    document.getElementById('copertina').style.height = screenHeight - navHeight + "px";
}

//ridimensiona continuamente su dispositivi non mobili
window.addEventListener("resize", function (e) {
    if (!ismobile()){
        ridimensiona();
    }
});

// controlla se il dispositivo è mobile
function ismobile() {
    if (window.innerWidth < 768)
        return true;
    else
        return false;
}
