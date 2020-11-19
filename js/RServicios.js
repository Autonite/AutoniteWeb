function validar(){
    Descripcion = document.getElementById("Descripcion").value;
    Cantidad = document.getElementById("Cantidad").value;
    Valor = document.getElementById("Valor").value;
    
    if(Descripcion == "" || Cantidad == ""|| Valor == ""){
    Swal.fire("Todos los campos son obligatorios");
    return false;
}
 if(Cantidad.length < 1) {
    Swal.fire("Cantidad inexistente");
    return false;
}
 if(Valor.length < 1) {
    Swal.fire("Usuario muy corto");
    return false;
}

}  