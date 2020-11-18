function validar(){
    DocumentoV = document.getElementById("DocumentoV").value;
    DocumentoC = document.getElementById("DocumentoC").value;
    Hora = document.getElementById("Hora").value;
    Fecha = document.getElementById("Fecha").value;
    Descripcion = document.getElementById("Descripcion").value;
   
    

 if(DocumentoV == "" || DocumentoC == ""){
    Swal.fire("Todos los campos son obligatorios");
    return false;
}
 if(DocumentoV.length > 10) {
    Swal.fire("Usuario muy largo");
    return false;
}
 if(DocumentoV.length < 1) {
    Swal.fire("Usuario muy corto");
    return false;
}
//if(!expresion1.test(user)) {
  //  Swal.fire("Usuario invalido");
    //return false;
//}
}