function validar(){
    user = document.getElementById("user").value;
    contraseña = document.getElementById("contraseña").value;
    expresion1 = /\w+@\w+\.+[a-z](\.+[a-z])?/;

 if(user == "" || contraseña == ""){
    Swal.fire("Todos los campos son obligatorios");
    return false;
}
 if(user.length > 30) {
    Swal.fire("Usuario muy largo");
    return false;
}
 if(user.length < 5) {
    Swal.fire("Usuario muy corto");
    return false;
}
if(!expresion1.test(user)) {
    Swal.fire("Usuario invalido");
    return false;
}
}