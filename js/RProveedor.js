function validar(){
    Documento = document.getElementById("Documento").value;
    Nombre = document.getElementById("Nombre").value;
    Dempresa = document.getElementById("Dempresa").value;
    Telefono = document.getElementById("Telefono").value;
    Nempresa = document.getElementById("Nempresa").value;
    expresion = /\d/g;
    
    
    

 if(Documento == "" || Nombre == "" || Dempresa == "" || Telefono == "" || Nempresa == ""){
    Swal.fire("Todos los campos son obligatorios");
    return false;
}
 if(Documento.length > 10) {
    Swal.fire("Documento  muy largo");
    return false;
}
 if(Documento.length < 1) {
    Swal.fire("Documento muy corto");
    return false;
}

if(Nombre.length > 30) {
    Swal.fire("Nombre muy largo");
    return false;
}

 if(Apellido.length < 20) {
    Swal.fire("Apellido muy Largo");
    return false;
}

//Telefono
if(isNaN(Telefono)){
    Swal.fire("No es un nùmero")
    return false
}

if(!expresion1.test(Telefono)){
    Swal.fire("No es un nùmero")
    return false
}



}