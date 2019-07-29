const BASE_URL = "http://localhost:3000"
const USER_URL = `${BASE_URL}/user`
const RECIPE_URL = `${BASE_URL}/recipe`
const INGREDIENT_URL = `${BASE_URL}/ingredient`

// Waiting for DOM to render login
document.addEventListener('DOMContentLoaded', () => {
    loginPage()
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
    .then(json => {loginPage(json)})
};

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
