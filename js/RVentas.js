alert("Hola Caos");
function validar(){
    var DocumentoC, DocumentoV, Hora, Fecha, Descripcion, expresion;
    DocumentoC = document.getElementById("DocumentoC").value;
    DocumentoV = document.getElementById("DocumentoV").value;
    Hora = document.getElementById("Hora").value;
    Fecha = document.getElementById("Fecha").value;
    Descripcion = document.getElementById("Descripcion").value;

 if(DocumentoC === "" ||DocumentoV === "" ||Hora === "" ||Fecha=== ""||Descripcion === ""){
    alert("Todos los campos son obligatorios");
    return false;
}
 else if(DocumentoC.length>10) {
    alert("El nombre es muy largo");
    return false;
}
}