var btnAbrirPopup = document.getElementById('btn-open-popup'),
    overLay= document.getElementById('overLay'),
    popup= document.getElementById('popup'),
    btnCerrarPopup= document.getElementById('btn-cerrar-popup');

btnAbrirPopup.addEventListener('click', function(){
    overLay.classList.add('active');
    popup.classList.add('active');
});

btnCerrarPopup.addEventListener('click', function(){
    popup.classList.remove('active');
    overLay.classList.remove('active');
});
