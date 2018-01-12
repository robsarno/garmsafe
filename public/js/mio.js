
ridimensiona();
function ridimensiona() {
    var navHeight = document.getElementById('navbar').clientHeight;

    var screenHeight = window.innerHeight;
    document.getElementById('copertina').style.height = screenHeight - navHeight + "px";
}