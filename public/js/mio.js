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

//Sul hover dell'immagine
var links=document.getElementsByClassName("imgPadre");
for(var i=0;i<links.length;i++)
{
    links[i].addEventListener("mouseover",onHover,false);
    links[i].addEventListener("mouseout",onHoverFinnish,false);
}
function onHover(){
    var idTrovato=this.id;
    var stringaOr=this.children[0].src;
    this.children[0].src=stringaOr.substring(0,stringaOr.length-3)+"gif";
}
function onHoverFinnish(){
    var idTrovato=this.id;
    var stringaOr=this.children[0].src;
    this.children[0].src=stringaOr.substring(0,stringaOr.length-3)+"png";
}