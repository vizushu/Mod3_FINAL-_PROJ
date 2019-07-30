const BASE_URL = "http://localhost:3000"
const USER_URL = `${BASE_URL}/user`
const RECIPE_URL = `${BASE_URL}/recipe`

// Waiting for DOM to render login
document.addEventListener('DOMContentLoaded', () => {
    loginPage()
    getUser()
  })

getUser = () => {
    fetch(USER_URL, {
        method: "GET",
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        }
    })
    .then(res => res.json())
    .then(json => (json))

};

loginPage = () => {
    const main = document.getElementById('main-wrapper')
    const div1 = document.createElement('div')
    const form1 = document.createElement('form')
    const h2 = document.createElement('h2')
    const input1 = document.createElement('input')
    const submitButton = document.createElement('button')
    const p = document.createElement('p')
    const span = document.createElement('span')


    h2.innerText = "Login"
    submitButton.innerText = "Submit"
    p.innerText = "New User"
    span.innerText = "Sign Up here!"

    div1.className = 'Login'
    form1.className = 'Login'
    submitButton.className = 'submit' 

    input1.setAttribute("type", "text")
    submitButton.setAttribute("type", "submit")

    main.appendChild(div1)
    div1.appendChild(form1)
    form1.appendChild(h2)
    h2.appendChild(input1)
    h2.appendChild(submitButton)
    div1.appendChild(p)
    p.appendChild(span)



// // This function just swaps the login/signup forms
// function switchLoginForm(show, hide){
//     show.className = "login"
//     hide.className = "hidden"
  
//     const loginLink = document.createElement("p");
//     loginLink.textContent = "Login";
//     loginLink.style.cursor = "pointer"
  
//     show.appendChild(loginLink);
  
//     loginLink.addEventListener("click", () => {
//       loginPage();
//     })
//   }

    


    
    
}


const closeButton = document.querySelector(".closebtn");
  closeButton.addEventListener("click", () => {
    closeNav();
  })

function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  /* Set the width of the side navigation to 0 */
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }
