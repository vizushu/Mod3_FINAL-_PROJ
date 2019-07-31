signUp() => {
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
