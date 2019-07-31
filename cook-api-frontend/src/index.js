const BASE_URL = "http://localhost:3000"
const USER_URL = `${BASE_URL}/users`
const RECIPE_URL = `${BASE_URL}/recipes`
const INGREDIENT_URL = `${BASE_URL}/ingredients`

// Waiting for DOM to render login
document.addEventListener('DOMContentLoaded', () => {
    // loginPage()
    signUp()
    // userScore()
  })

  getUser = () => {
      return fetch(USER_URL)
      .then(res => res.json())
      .then(json => json)
    };
// This is login form
// loginPage = () => {
//     const main = document.getElementById('main-wrapper')
//     const div1 = document.createElement('div')
//     div1.className = 'Login'
//     const form1 = document.createElement('form')
//     form1.className = 'Login'
//     const header1 = document.createElement('h2')
//     header1.innerText = "Login"
//     const input1 = document.createElement('input')
//     input1.setAttribute("placeholder", "Enter Your Username")
//     input1.setAttribute("type", "text")
//     const submitButton = document.createElement('button')
//     submitButton.innerText = "Log in"
//     submitButton.className = 'Submit'
//       submitButton.setAttribute("type", "submit")
//     const signUpLink = document.createElement('p')
//     signUpLink.innerText = "Sign Up Here!"
//
//
//     main.appendChild(div1)
//     div1.appendChild(form1)
//     form1.appendChild(header1)
//     form1.appendChild(input1)
//     form1.appendChild(submitButton)
//     div1.appendChild(signUpLink)
//
//     form1.addEventListener("submit", (e) => {
//       e.preventDefault()
//       let userName = e.target[0].value;
//       getUser()
//       .then(data => userLogin(data, userName))
//     })
//   }
    // linkSpan.addEventListener("click", () => {
    //     switchLoginForm(form2, form1)
    //     signUpLink.style.visibility = "hidden";
    // })

// This is sign up form

signUp = () => {
const main = document.getElementById('main-wrapper')
const div1 = document.createElement('div')
const form2 = document.createElement('form')
form2.className = 'Sign Up'
const header2 = document.createElement('h2')
header2.innerText = "Sign up"
const input2 = document.createElement('input')
input2.setAttribute("placeholder", "Enter A Username")
const signUpButton = document.createElement('button')
signUpButton.innerText = "Sign Up"
signUpButton.className = 'Submit'
const loginLink = document.createElement('p')

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


// This is the show user function
userLogin = (json, userName) => {
  let exsistsInDb = false
  for (var item in json) {
    if(json[item].name == userName) {
      userGame(json)
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
      if (json.name == name) {
        userGame(json)
      }
      else {
        displayErrorMessage("That username is already taken!")
      }
    })
  }


// This function login the user to the game
userGame = (json) => {
document.getElementById('main-wrapper').innerHTML = '';
const main = document.getElementById('main-wrapper')
const div = document.createElement('div')
// const ul = document.createElement('ul')
// const li = document.createElement('li')
const divIngredient = document.createElement('div')

main.appendChild(div)
div.appendChild(divIngredient)
// div.appendChild(ul)
// ul.appendChild(li)

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
