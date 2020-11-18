function validar(){
    DocumentoV = document.getElementById("DocumentoV").value;
    DocumentoC = document.getElementById("DocumentoC").value;
    

 if(DocumentoV == "" || DocumentoC == ""){
    Swal.fire("Todos los campos son obligatorios");
    return false;
}
 if(DocumentoV.length > 30) {
    Swal.fire("Usuario muy largo");
    return false;
}
 if(DocumentoV.length < 5) {
    Swal.fire("Usuario muy corto");
    return false;
}
//if(!expresion1.test(user)) {
  //  Swal.fire("Usuario invalido");
    //return false;
//}
}