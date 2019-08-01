const BASE_URL = "http://localhost:3000"
const USER_URL = `${BASE_URL}/users`
const RECIPE_URL = `${BASE_URL}/recipes`
const INGREDIENT_URL = `${BASE_URL}/ingredients`

// Waiting for DOM to render login
document.addEventListener('DOMContentLoaded', () => {
    loginPage()
    signUp()
    formSwitcherSign()
    formSwitcherLogin()
    // userScore()
  })

  getUser = () => {
      return fetch(USER_URL)
      .then(res => res.json())
      .then(json => json)
    };
  
  getIngredients = () => {
    console.log('yoo')
    return fetch(INGREDIENT_URL)
    .then(res => res.json())
    .then(json => json)
  };
    
// This is login form
loginPage = () => {
    const main = document.getElementById('main-wrapper')
    const div1 = document.createElement('div')
    const form1 = document.createElement('form')
    form1.className = 'login'
    div1.className = 'login visible'
    const header1 = document.createElement('h2')
    header1.innerText = "Login"
    const input1 = document.createElement('input')
    input1.setAttribute("placeholder", "Enter Your Username")
    input1.setAttribute("type", "text")
    const submitButton = document.createElement('button')
    submitButton.innerText = "Log in"
    submitButton.className = 'Submit'
      submitButton.setAttribute("type", "submit")
    const signUpLink = document.createElement('button')
    signUpLink.innerText = "Sign Up Here!"
    signUpLink.className = 'sign-in-button'

    main.appendChild(div1)
    div1.appendChild(form1)
    form1.appendChild(header1)
    form1.appendChild(input1)
    form1.appendChild(submitButton)
    div1.appendChild(signUpLink)

    form1.addEventListener("submit", (e) => {
      e.preventDefault()
      let userName = e.target[0].value;
      getUser()
      .then(data => userLogin(data, userName))
    })
  }


// This is sign up form

signUp = () => {
const main = document.getElementById('main-wrapper')
const div1 = document.createElement('div')
const form2 = document.createElement('form')
form2.className = 'sign Up'
div1.className = 'sign-up hidden'
const header2 = document.createElement('h2')
header2.innerText = "Sign up"
const input2 = document.createElement('input')
input2.setAttribute("placeholder", "Enter A Username")
const signUpButton = document.createElement('button')
signUpButton.innerText = "Sign Up"
signUpButton.className = 'Submit'
const loginLink = document.createElement('button')
loginLink.innerText = "Login Here!"
loginLink.className = 'login-button'

main.appendChild(div1)
div1.appendChild(form2)
form2.appendChild(header2)
form2.appendChild(input2)
form2.appendChild(signUpButton)
div1.appendChild(loginLink)

form2.addEventListener("submit", (e) => {
    e.preventDefault()
    let name = e.target[0].value;
    userSignup(name)
  })
}

// this is the form function
formSwitcherSign = () => {
  let mainElement = document.getElementById('main-wrapper')
  let sButton = document.querySelector('.sign-in-button')
    sButton.addEventListener("click", (ev) => {
      if (mainElement.children[2].classList.contains('visible')){
        mainElement.children[2].classList.add('hidden')
        mainElement.children[2].classList.remove('visible')
        mainElement.children[3].classList.add('visible')
        mainElement.children[3].classList.remove('hidden')
      }
  })
}

formSwitcherLogin = () => {
  let mainElement = document.getElementById('main-wrapper')
  let lButton = document.querySelector('.login-button')
    lButton.addEventListener("click", (ev) => {
      if (mainElement.children[3].classList.contains('visible')){
        mainElement.children[3].classList.add('hidden')
        mainElement.children[3].classList.remove('visible')
        mainElement.children[2].classList.add('visible')
        mainElement.children[2].classList.remove('hidden')
      }
  })
}

// This is the show user function
userLogin = (json, userName) => {
  let exsistsInDb = false
  for (var item in json) {
    if(json[item].name == userName) {
      getIngredients()
      .then(ingredients => userGame(ingredients, json))
      exsistsInDb = true
    }
   };
    if(exsistsInDb == false) {
      return displayErrorMessage("Sign up to play the game!")
  };
}

// This creates a new user when a user signs up
userSignup = (name, score= 0) => {
     fetch(USER_URL, {
      method: "POST",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify({
        name: name,
        score: score
      })
    })
    .then(res => res.json())
    .then(json => {
      getIngredients()
      .then(ingredients => userGame(ingredients, json))
      // if (json.name == name) {
       
      // }
      // else {
      //   displayErrorMessage("That username is already taken!")
      // }
    })
  }


// This function login the user to the game
userGame = (ingredients, json) => {
  console.log(ingredients, json)
// clearing the HTML
document.body.style.backgroundImage = "url()";
document.innerHTML = '';
const main = document.getElementById('main-wrapper')
main.innerHTML = '';

ingredients.forEach(element => {
  let image = element.img_url
  let name = element.name
  let div = `<h2>${name}</h2><img src=${image}>`
  let divTag = document.createElement('div')
  divTag.innerHTML = div
  main.appendChild(divTag)
})


const div = document.createElement('div')
const divIngredient = document.createElement('div')

main.appendChild(div)
div.appendChild(divIngredient)

const divDrop = document.createElement('div')
divDrop.id = "divDrop"
divDrop.setAttribute("ondrop", "drop(event)")
divDrop.setAttribute("ondragover", "allowDrop(event)")
divIngredient.appendChild(divDrop)
const img = document.createElement('img')
img.id = "drag1"
img.setAttribute("draggable", "true")
img.setAttribute("ondragstart", "drag(event)")
img.setAttribute("width", "70")
img.setAttribute("height", "70")

img.src = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/bento-box_1f371.png"
divIngredient.appendChild(img)

// WE NEED A FUNCTION FOR DRAG AND DROP
allowDrop = (ev) => {
  ev.preventDefault();
  }

drag = (ev) => {
  ev.dataTransfer.setData("text", ev.target.id);
  }

drop = (ev) => {
  ev.preventDefault();
  let data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
  }
}

// WE NEED A FUNCTION TO SHOW THE USER'S SCORE
// userScore = (json) => {
//   // let currentScore = json.score
//   let userScore = document.getElementById("pointCard")
//   userScore.innerText = 0
// console.log(json)
// }
// WE NEED A FUNCTION TO SHOW TOP 5 USER'S SCORE

// WE NEED A FUNCTION TO SHOW INGREDIENTS PICTURES

// WE NEED A FUNCTION TO SHOW CREATED RECIPE


// This function just swaps the login/signup forms
switchLoginForm = (show, hide) => {
    show.className = "login"
    hide.className = "hidden"

    const loginLink = document.createElement("p");
    loginLink.textContent = "Login";
    loginLink.style.cursor = "pointer"

    show.appendChild(loginLink);

    loginLink.addEventListener("click", () => {
      loginPage();
    })
  }

// This function display the error message
displayErrorMessage = (message) => {
    const errorWrapper = document.querySelector('#error-model')
    const errorField = document.querySelector('#model-message')
    const close = document.querySelector('.close')
    errorField.textContent = message
    errorWrapper.style.display = 'block'

    close.onclick = () => {
      errorWrapper.style.display = 'none'
    }

    window.onclick = function(event) {
      if (event.target == errorWrapper) {
        errorWrapper.style.display = 'none'
      }
    }

    setTimeout(() => {
      errorField.textContent = ''
      errorWrapper.style.display = 'none'
    }, 3000)
  }

//Side navigation bar functions
const closeButton = document.querySelector(".closebtn");
  closeButton.addEventListener("click", () => {
    closeNav();
  })

openNav = () => {
    document.getElementById("mySidenav").style.width = "250px";
  }
closeNav = () => {
    document.getElementById("mySidenav").style.width = "0";
  }


// Login = () => {
// // create the elements
// let div = document.createElement('div'),
// 		log = document.createElement('div'),
// 		reg = document.createElement('div'),
// 		loginForm = document.createElement('form'),
// 		registerForm = document.createElement('form');
// div.id = 'loginDiv';

// // set main-div styles
// div.style.background = "rgba(0,0,0,0.5)";
// div.style.width = '300px';
// div.style.margin = '30px auto';
// div.style.padding = '10px';
// div.style.borderRadius = '10px';

// log.style.display = 'inline-block';
// log.style.color = '#fff';
// log.style.margin = '5px';
// log.style.cursor = 'pointer';

// log.id = 'login';
// log.innerHTML = 'login';

// reg.style.display = 'inline-block';
// reg.style.color = '#888';
// reg.style.margin = '5px';
// reg.style.cursor = 'pointer';
// reg.id = 'register';
// reg.innerHTML = 'register';

// // hide register form and show login form
// reg.onclick = function(){
// 	this.style.color = '#fff';
// 	log.style.color = '#888';
// 	loginForm.style.display = 'none';
// 	registerForm.style.display = 'block';
// };

// // hide login form and show register form
// log.onclick = function(){
// 	this.style.color = '#fff';
// 	reg.style.color = '#888';
// 	loginForm.style.display = 'block';
// 	registerForm.style.display = 'none';
// };

// // create some variables for styling
// var inputStyles = "background:none;border-color:#888;border-width:0 0 1px 0;width:100%;color:#fff;padding:5px;margin:5px;",
//     btnStyles = "background:red;border:none;width:100%;color:#fff;padding:5px;margin:5px;",
//     forgetStyles = "color:#fff;",
    
//     i;

// // set loginForm styles
// loginForm.style.margin = '50px 20px 20px 20px';
// loginForm.id = 'loginForm';

// // set the elements and styles on the form
// loginForm.innerHTML =
//                  "<input type='text' placeholder='type username' style='"+ inputStyles +"' /><br/>" + 
//                  "<input type='submit' value='Login' style='"+ btnStyles +"' />"

// // set registerForm styles
// registerForm.style.margin = '50px 20px 20px 20px';
// registerForm.style.display = 'none';
// registerForm.id = 'registerForm';

// // set the elements and styles on the form
// registerForm.innerHTML =
// 			                 "<input type='text' placeholder='first name' style='"+ inputStyles +"' /><br/>" + 
// 			                 "<input type='submit' value='Register' style='"+ btnStyles +"' />";

// // append the bottons and form on main-div
// div.appendChild(log);
// div.appendChild(reg);
// div.appendChild(loginForm);
// div.appendChild(registerForm);

// // append main-div on the body
// document.body.appendChild(div);
// }

