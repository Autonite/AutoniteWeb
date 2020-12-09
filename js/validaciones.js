function Usuario() {
  var usuario = document.getElementById("usuario").value;
  if (usuario == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de usuario."
    });
    return false;
  }
}

function Contrasena() {
  var contrasena = document.getElementById("contrasena").value;
  if (contrasena == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de contraseña."
    });
    return false;
  }
}

function Documento() {
  var documento = document.getElementById("documento").value;
  if (documento == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo número de documento."
    });
    return false;

  }
  if (documento.length > 10 && documento.length < 6) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El número de documento debe estár comprendido entre 6 - 10 dígitos."
    });
    return false;
  }
}

function DocumentoVendedor() {
  var dVendedor = document.getElementById("dVendedor").value;
  if (dVendedor == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo número de documento del vendedor."
    });
    return false;

  }
  if (dVendedor.length > 10 && dVendedor.length < 6) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El número de documento debe estár comprendido entre 6 - 10 dígitos."
    });
    return false;
  }
}

function DocumentoCliente() {
  var dCliente = document.getElementById("dCliente").value;
  if (dCliente == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo número de documento del cliente."
    });
    return false;

  }
  if (dCliente.length > 10 && dCliente.length < 6) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El número de documento debe estár comprendido entre 6 - 10 dígitos."
    });
    return false;
  }
}

function Nombre() {
  var nombre = document.getElementById("nombre").value;
  if (nombre == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de nombre."
    });
    return false;
  }
  if (nombre.length > 30 || nombre.length < 4) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El nombre debe estár comprendido entre 4 - 30 carácteres.",
    });
    return false;
  }
}

function Apellido() {
  var apellido = document.getElementById("apellido").value;
  if (apellido == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de apellido."
    });
    return false;
  }
  if (apellido.length > 30 || apellido.length < 4) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El apellido debe estár comprendido entre 4 - 30 carácteres.",
    });
    return false;
  }
}

function Edad() {
  var edad = document.getElementById("edad").value;
  if (edad == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de edad."
    });
    return false;
  }
  if (edad < 1 || edad > 120) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "La edad debe estár comprendida entre 1 - 120 años."
    });
    return false;
  }
}

function Telefono() {
  var telefono = document.getElementById("telefono").value;
  if (telefono == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de número de teléfono.",
    });
    return false;
  }
  if (telefono.length < 7 || telefono.length > 10) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El número de teléfono debe estár comprendido entre 7 - 10 dígitos.",
    });
    return false;
  }
}

function Direccion() {
  var direccion = document.getElementById("direccion").value;
  if (direccion == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de dirección."
    });
    return false;
  }
}

function Correo() {
  var correo = document.getElementById("correo").value;
  var correoExpr = /\w+@+\w+\.+[a-z]/;
  if (correo == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de correo eléctronico.",
    });
    return false;
  }
  if (!correoExpr.test(correo)) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El correo eléctronico ingresado no es válido.",
    });
    return false;
  }
}

function Cargo() {
  var cargo = document.getElementById("cargo").value;
  if (cargo == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes seleccionar la opción de cargo.",
    });
    return false;
  }
}

function Descripcion() {
  var descripcion = document.getElementById("descripcion").value;
  if (descripcion == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de descripción."
    });
    return false;
  }
}

function Clasificacion() {
  var clasificacion = document.getElementById("clasificacion").value;
  if (clasificacion == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes seleccionar la opción de clasificación.",
    });
    return false;
  }
}

function FechaRealizado() {
  var fRealizado = document.getElementById("fRealizado").value;
  if (fRealizado == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de fecha de realizado."
    });
    return false;
  }
}

function FechaEntrega() {
  var fEntrega = document.getElementById("fEntrega").value;
  if (fEntrega == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de fecha de entrega."
    });
    return false;
  }
}
function Tipo() {
  var tipo = document.getElementById("tipo").value;
  if (tipo == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes seleccionar la opción de tipo."
    });
    return false;
  }
}
function InicioContrato() {
  var iContrato = document.getElementById("iContrato").value;
  if (iContrato == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de inicio de contrato."
    });
    return false;
  }
}

function FinContrato() {
  var fContrato = document.getElementById("fContrato").value;
  if (fContrato == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de fin de contrato."
    });
    return false;
  }
}

function DuracionJornada() {
  var dJornada = document.getElementById("dJornada").value;
  if (dJornada == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de duración de jornada."
    });
    return false;
  }
  if (dJornada < 1 || dJornada > 24) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "La duración de la jornada debe estár comprendida entre 1 - 24 horas."
    });
    return false;
  }
}

function Salario() {
  var salario = document.getElementById("salario").value;
  if (salario == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de salario."
    });
    return false;
  }
}

function Producto() {
  var producto = document.getElementById("producto").value;
  if (producto == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes seleccionar la opción de producto."
    });
    return false;
  }
}

function Proveedor() {
  var proveedor = document.getElementById("proveedor").value;
  if (proveedor == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de proveedor."
    });
    return false;
  }
}

function Hora() {
  var hora = document.getElementById("hora").value;
  if (hora == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de hora."
    });
    return false;
  }
}

function Fecha() {
  var fecha = document.getElementById("fecha").value;
  if (fecha == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de fecha."
    });
    return false;
  }
}

function Cantidad() {
  var cantidad = document.getElementById("cantidad").value;
  if (cantidad == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de cantidad."
    });
    return false;
  }
  if (cantidad < 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "La cantidad no puede ser menor a 0."
    });
    return false;
  }
}

function Valor() {
  var valor = document.getElementById("valor").value;
  if (valor == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de valor."
    });
    return false;
  }
  if (valor < 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El valor no puede ser menor a 0."
    });
    return false;
  }
}

function ValorCompra() {
  var vCompra = document.getElementById("vCompra").value;
  if (vCompra == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de valor de compra."
    });
    return false;
  }
  if (vCompra < 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El valor de compra no puede ser menor a 0."
    });
    return false;
  }
}

function ValorVenta() {
  var vVenta = document.getElementById("vVenta").value;
  if (vVenta == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de valor de venta."
    });
    return false;
  }
  if (vVenta < 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El valor de venta no puede ser menor a 0."
    });
    return false;
  }
}

function Empresa() {
  var empresa = document.getElementById("empresa").value;
  if (empresa == 0) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "Debes llenar el campo de empresa."
    });
    return false;
  }
  if (empresa.length > 30 || empresa.length < 2) {
    Swal.fire({
      icon: "error",
      title: "Oops...",
      text: "El nombre de empresa debe estár comprendido entre 2 - 30 carácteres.",
    });
    return false;
  }
}


// Formularios
function valTodo(validaciones) {
  for (i = 0; i < validaciones.length; i++) {
    if (validaciones[i] == false) {
      return false;
    }
  }
}

function valCompra() {
  var validaciones = [Descripcion(), FechaEntrega(), FechaRealizado(), Documento()];
  return valTodo(validaciones);
}

function valPedidos() {
  var validaciones = [Fecha(), Hora(), Cantidad(), Proveedor(), Producto()];
  return valTodo(validaciones);
}

function valProveedor() {
  var validaciones = [Producto(), Empresa(), Telefono(), Direccion(), Apellido(), Nombre(), Documento()];
  return valTodo(validaciones);
}

function valVenta() {
  var validaciones = [Descripcion(), Fecha(), Hora(), DocumentoCliente(), DocumentoVendedor()];
  return valTodo(validaciones);
}

function valServicio() {
  var validaciones = [Valor(), Cantidad(), Producto(), Descripcion(), Tipo()];
  return valTodo(validaciones);
}

function valProductos() {
  var validaciones = [ValorVenta(), ValorCompra(), Clasificacion(), Descripcion(), Nombre()];
  return valTodo(validaciones);
}

function valEmpleado() {
  validaciones = [Correo(), Direccion(), Cargo(), Edad(), Telefono(), Apellido(), Nombre(), Documento()];
  return valTodo(validaciones);
}

function valContratos() {
  validaciones = [DuracionJornada(), Salario(), FinContrato(), InicioContrato(), Tipo()];
  return valTodo(validaciones);
}

function valCliente() {
  validaciones = [Direccion(), Telefono(), Apellido(), Nombre(), Documento()];
  return valTodo(validaciones);
}

function valLogin() {
  validaciones = [Contrasena(), Usuario()];
  return valTodo(validaciones);
}

function valContactanos() {
  validaciones = [Descripcion(), Telefono(), Correo(), Apellido(), Nombre()];
  return valTodo(validaciones);
}

function valRecuperar() {
  validaciones = [Correo()];
  return valTodo(validaciones);
}