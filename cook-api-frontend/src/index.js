const BASE_URL = "http://localhost:3000"
const USER_URL = `${BASE_URL}/users`
const RECIPE_URL = `${BASE_URL}/recipes`
const INGREDIENT_URL = `${BASE_URL}/ingredients`

// Waiting for DOM to render login
document.addEventListener('DOMContentLoaded', () => {
    loginPage()
  })

  getUser = () => {
      return fetch(USER_URL)
      .then(res => res.json())
      .then(json => json)
    };

loginPage = () => {
    const main = document.getElementById('main-wrapper')
    const div1 = document.createElement('div')
    const form1 = document.createElement('form')
    const h2 = document.createElement('h2')
    const input1 = document.createElement('input')
    const submitButton = document.createElement('button')
    const signUpLink = document.createElement('p')
    const linkSpan = document.createElement('span')

    h2.innerText = "Login"
    submitButton.innerText = "Submit"
    signUpLink.innerText = "New User"
    linkSpan.innerText = "Sign Up here!"

    div1.className = 'Login'
    form1.className = 'Login'
    submitButton.className = 'submit'

    input1.setAttribute("type", "text")
    submitButton.setAttribute("type", "submit")

    main.appendChild(div1)
    div1.appendChild(form1)
    form1.appendChild(h2)
    form1.appendChild(input1)
    form1.appendChild(submitButton)
    div1.appendChild(signUpLink)
    signUpLink.appendChild(linkSpan)

    linkSpan.addEventListener("click", () => {
        switchLoginForm(form2, form1)
        signUpLink.className = "hidden"
    })

    form1.addEventListener("submit", (e) => {
      e.preventDefault()
      let userName = e.target[0].value;
      getUser()
      .then(data => showUser(data, userName))
    })

// This is the show user function
showUser = (json, userName) => {
  console.log(json)
  let exsistsInDb = false
  for (var item in json) {
    // console.log('bob', json[item].name, userName, json.name)
    if(json[item].name == userName) {

      exsistsInDb = true
    }
   };
    if(exsistsInDb == false) {
      return displayErrorMessage("WANT TO SIGN UP?")
  };
}

// loginUser() =>{}

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

  /* Set the width of the side navigation to 0 */
closeNav = () => {
    document.getElementById("mySidenav").style.width = "0";
  }
