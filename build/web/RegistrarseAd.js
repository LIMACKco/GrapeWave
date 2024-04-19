//Conexión a Firebase(Refeerencias)
const firebaseConfig = {
    apiKey: "AIzaSyD9U5b820NVLoI3SYok8fzdr0faFoUs_ys",
    authDomain: "grapewave-mp.firebaseapp.com",
    databaseURL: "https://grapewave-mp-default-rtdb.firebaseio.com",
    projectId: "grapewave-mp",
    storageBucket: "grapewave-mp.appspot.com",
    messagingSenderId: "774226070386",
    appId: "1:774226070386:web:40a7a395b15d2d9382abeb",
    measurementId: "G-JRE61XZXRP"
};

//Inicializa Firebase
firebase.initializeApp(firebaseConfig);

//Referenciar la Base de Datos
var coleccion = firebase.database().ref("Administradores");
document.getElementById("Registrar_Administradores").addEventListener("submit", submitForm);

//Obtener los id del formulario
function submitForm(e){
    e.preventDefault();
    var Nombre = getElementVal("Nombre");
    var ApPat = getElementVal("ApPat");
    var ApMat = getElementVal("ApMat");
    var Telefono = getElementVal("Telefono");
    var Calle = getElementVal("Calle");
    var Numero = getElementVal("Numero");
    var Colonia = getElementVal("Colonia");
    var Municipio = getElementVal("Municipio");
    var Estado = getElementVal("Estado");
    var Email = getElementVal("Email");
    var Codigo = getElementVal("Codigo");
    var contra1 = getElementVal("contra1");
    var contra2 = getElementVal("contra2");
    saveMessages(Nombre, ApPat, ApMat, Telefono, Calle, Numero, Colonia, Municipio, Estado, Email,
    Codigo, contra1, contra2);
}

//Mandar los datos a la Base de Datos (Altas)
const saveMessages = (Nombre, ApPat, ApMat, Telefono, Calle, Numero, Colonia, Municipio, Estado, Email,
Codigo, contra1, contra2) =>{
    
    //Inserción de Datos
    var crear_coleccion = coleccion.push();
    crear_coleccion.set({
    Nombre: Nombre,
    ApPat: ApPat,
    ApMat: ApMat,
    Telefono: Telefono,
    Calle: Calle,
    Numero: Numero,
    Colonia: Colonia,
    Municipio: Municipio,
    Estado: Estado,
    Email: Email,
    Codigo: Codigo,
    contra1: contra1,
    contra2: contra2
    });
    
    // Redirigir a la página JSP después de la inserción exitosa
    window.location.href = "RegistrarseAdVerified.jsp";
};

const getElementVal = (id) => {

return document.getElementById(id).value;
};
