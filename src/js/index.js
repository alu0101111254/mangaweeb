var config = {
  apiKey: "AIzaSyBO6xM2_1Gg6I9K0ZVWiSrt_gqBpq4oZDA",
  authDomain: "fislogin.firebaseapp.com",
  databaseURL: "https://fislogin.firebaseio.com",
  projectId: "fislogin",
  storageBucket: "fislogin.appspot.com",
  messagingSenderId: "706813013084",
  appId: "1:706813013084:web:88507e1dbe0d27f2478a99"
};
// Initialize Firebase
firebase.initializeApp(config);



//funcion search, borra todos los hijos y solo aquellos cuyos títulos coincidadn con los elementos del search
function search(){

  var child=maindiv.lastElementChild;
  while (child) {
    maindiv.removeChild(child);
    child = maindiv.lastElementChild;
  }

  manga_list.on("child_added" ,function(manga){
    var newDiv=document.createElement("li");
    newDiv.className="mangaimg";
    var key=manga.key;
    var value=manga.val();
    if(value.title.toLowerCase().indexOf(document.getElementById("search-input").value.toLowerCase())>=0){
      // var title=document.createElement("h4");
      // title.innerHTML= value.title;
      var image=Object.assign(document.createElement("img"),{src:value.cover, height: '400',width:'275'});
      image.setAttribute('data-toggle', 'modal');
      image.setAttribute('data-target', '#'+value.id);

      newDiv.append(image);
      // newDiv.append(title);
      maindiv.appendChild(newDiv);

    }

  });
}

function clear(){

  var child=maindiv.lastElementChild;
  while (child) {
    maindiv.removeChild(child);
    child = maindiv.lastElementChild;
  }

  manga_list.on("child_added" ,function(manga){


    var newDiv=document.createElement("li");
    newDiv.className="mangaimg";
    var key=manga.key;
    var value=manga.val();

    var clon=copynode.cloneNode(true);
    clon.id=(value.id);
    clon.getElementsByTagName("h2")[0].innerHTML =value.title;
    clon.getElementsByClassName("authors")[0].innerHTML ="Authors: "+JSON.stringify(value.authors) + "<br />" +"Artists: "+JSON.stringify(value.artists);
    clon.getElementsByTagName("img")[0].src=value.cover;
    var mbod= clon.getElementsByClassName("modal-body")[0];
    var mfot= clon.getElementsByClassName("modal-footer")[0];
    mbod.getElementsByTagName("p")[0].innerHTML = value.description + "<br />" +"Chapters:" +value.chapters;
    mfot.getElementsByTagName("p")[0].innerHTML = JSON.stringify(value.genres);
    body.appendChild(clon);

    // var title=document.createElement("h4");
    // title.innerHTML= value.title;
    var image=Object.assign(document.createElement("img"),{src:value.cover, height: '400',width:'275'});
    image.setAttribute('data-toggle', 'modal');
    image.setAttribute('data-target', '#'+value.id);



    newDiv.append(image);
    // newDiv.append(title);
    maindiv.appendChild(newDiv);



  });

}


//se llama automaticamente
firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.
    var user = firebase.auth().currentUser;

    if(user != null){

      var email_id = user.email;
      //cada vez que cambia se cambia el texto en showuser
      document.getElementById("showuser").innerHTML = email_id.toString();

    }
  } else {
    // No user is signed in.
    //cada vez que cambia se cambia el texto en showuser
    document.getElementById("showuser").innerHTML = "Not logged in";

  }
});

function login(){

  var userEmail = document.getElementById("email_field").value;
  var userPass = document.getElementById("password_field").value;

  firebase.auth().signInWithEmailAndPassword(userEmail, userPass).then(()=>{
    window.alert("logged in successfully " );
  }).catch(function(error) {
    // Handle Errors here.
    var errorCode = error.code;
    var errorMessage = error.message;

    window.alert("Error : " + errorMessage);

    // ...
  });

}

function signup(){

  var userEmail = document.getElementById("signup_email_field").value;
  var userPass = document.getElementById("signup_password_field").value;
  var userPass2=  document.getElementById("signup_password_field2").value;
  if(userPass==userPass2){
    firebase.auth().createUserWithEmailAndPassword(userEmail.trim(), userPass).then(()=>{
      window.alert("se ha Registrado correctamente" );
    }).catch(function(error) {
      // Handle Errors here.
      var errorCode = error.code;
      var errorMessage = error.message;

      window.alert("Error : " + errorMessage);

      // ...
    });
  }else{
    window.alert("Error : las contraseñas no coinciden");
  }


}

function logout(){
  firebase.auth().signOut();
}
