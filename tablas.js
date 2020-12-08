function buscar() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

function eliminar(r) {
  Swal.fire({
    title: '¿Estás seguro?',
    text: "¡No podrás recuperar esto!",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: '¡Sí, bórralo!'
  }).then((result) => {
    if (result.isConfirmed) { 
      var i = r.parentNode.parentNode.rowIndex;  
      document.getElementById("myTable").deleteRow(i);
      Swal.fire(
        '¡Eliminado!',
        'Su archivo ha sido eliminado.',
        'success'
      )
    }
  })

}




    