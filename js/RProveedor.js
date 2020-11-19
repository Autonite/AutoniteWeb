function validar(){
    Documento = document.getElementById("Documento").value;
    Nombre = document.getElementById("Nombre").value;
    Dempresa = document.getElementById("Dempresa").value;
    Telefono = document.getElementById("Telefono").value;
    Nempresa = document.getElementById("Nempresa").value;
    expresion1 = /\d/g;
    
    
    

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

if(!expresion1.test(Documento)){
    Swal.fire("El documento solo puede contener numeros")
    return false
}

if(Nombre.length > 30) {
    Swal.fire("Nombre muy largo");
    return false;
}

 if(Apellido.length < 20) {
    Swal.fire("Apellido muy Largo");
    return false;
}

if(Telefono.length >10 ) {
    Swal.fire("Numero muy Largo");
    return false;
}
if(Telefono.length <10 ) {
    Swal.fire("Numero muy Corto");
    return false;
}

if(isNaN(Telefono)){
    Swal.fire("No es un numero")
    return false
}





}