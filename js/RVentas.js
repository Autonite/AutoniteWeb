function validar(){
    DocumentoV = document.getElementById("DocumentoV").value;
    DocumentoC = document.getElementById("DocumentoC").value;
    Hora = document.getElementById("Hora").value;
    Fecha = document.getElementById("Fecha").value;
    Descripcion = document.getElementById("Descripcion").value;
    
    var RegExPattern = /^\d{1,2}\/\d{1,2}\/\d{2,4}$/;
    

 if(DocumentoV == "" || DocumentoC == "" || Descripcion == ""){
    Swal.fire("Todos los campos son obligatorios");
    return false;
}
 if(DocumentoV.length > 10) {
    Swal.fire("Usuario de Vendedor muy largo");
    return false;
}
 if(DocumentoV.length < 1) {
    Swal.fire("Usuario de Vendedor muy corto");
    return false;
}

if(DocumentoV.length > 10) {
    Swal.fire("Usuario de cliente muy largo");
    return false;
}

 if(DocumentoC.length < 1) {
    Swal.fire("Usuario de cliente muy corto");
    return false;
}


if ((Fecha.match(RegExPattern)) && (Fecha!='')) {
      return true;
} else {
    Swal.fire("Formato de fecha no valido");
      return false;
}


}