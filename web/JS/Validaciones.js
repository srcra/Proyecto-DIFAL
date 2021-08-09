/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validar(id, nombre, apellido, direccion, telefono, email, estado, idusuario){
    var id, nombre, apellido, direccion, telefono, email, estado, idusuario
    id = document.getElementById("id").value;
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    direccion = document.getElementById("direccion").value;
    telefono = document.getElementById("telefono").value;
    email = document.getElementById("email").value;
    estado = document.getElementById("estado").value;
    idusuario = document.getElementById("idusuario").value;
    expresion = /\w+@\w+.\.+[a-z]/;

    if( id === ""|| nombre === "" || apellido === ""|| direccion === "" || telefono === "" || email === "" || estado === "" || idusuario === ""){
        alert("Todos los campos son obligatorios");
        return false;
    }
    else if(id.lenght>10){
        alert("El id es muy largo");
        return false;
    }
    else if(isNaN(id)){
        alert("El id ingresado no es un número");
        return false;
    }
    else if(nombre.lenght>20){
        alert("El nombre es muy largo");
        return false;
    }
   
    else if(apellido.lenght>20){
        alert("Los apellidos son muy largos");
        return false;
    }
    else if(direccion.lenght>80){
        alert("La direccion es muy larga");
        return false;
    }
    else if(telefono.lenght>15){
        alert("El telefono es muy largo");
        return false;
    }
    else if (isNaN(telefono)){
        alert("El teléfono ingresado no es un número");
        return false;
    }
    else if(email.lenght>30){
        alert("El correo es muy largo");
        return false;
    }
    else if(!expresion.test(email)){
        alert("El correo no es válido");
        return false;
    }
    else if(estado.lenght>10){
        alert("El estado es muy largo");
        return false;
    }
    else if(idusuario.lenght>10){
        alert("El id del usuario es muy largo");
        return false;
    }
    else if(isNaN(idusuario)){
        alert("El id del usuario ingresado no es un número");
        return false;
    }
    
}