var userFName = document.getElementById("signUpFName")
var userLName = document.getElementById("signUpLName")
var signUpEmail = document.getElementById("signUpEmail")
var signUpPassword = document.getElementById("signUpPass")
var conPassword = document.getElementById("signUpConPass")
// var signUpBtn = document.getElementById("signUpBtn")
// var signUpGmail = document.getElementById("signUpGmail")
// var signUpFb = document.getElementById("signUpFb")
var signInEmail = document.getElementById("signInEmail")
var signInPassword = document.getElementById("signInPass")
// var forgotPass = document.getElementById("forgotPass")
// var signInBtn = document.getElementById("signInBtn")
// var signInGmail = document.getElementById("signInGmail")
// var signInFb = document.getElementById("signInFb")
var goToSignUp = document.getElementById("goToSignUp")
var goToSignIn = document.getElementById("goToSignIn")
var hideBtns = document.querySelectorAll(".hide")
// var loader = document.getElementById("loading")

// index page event listeners

// signUpBtn.addEventListener("click", signUp)
// signInBtn.addEventListener("click", signIn)
hideBtns.forEach((elemBtn) => { elemBtn.addEventListener("click", () => { showPass(elemBtn) }) })
goToSignIn.addEventListener("click", () => { signUpsignIn(goToSignIn) })
goToSignUp.addEventListener("click", () => { signUpsignIn(goToSignUp) })

// Index page Func

// Register new users

// function signUp() {
//     let passCheck = document.querySelector("#passCheck")
//     passCheck.classList.replace("d-block", "d-none")

//     let valid = false
//     switch (valid) {
//         case userFName.checkValidity():
//             userFName.reportValidity()
//             break
//         case userLName.checkValidity():
//             userLName.reportValidity()
//             break
//         case signUpEmail.checkValidity():
//             signUpEmail.reportValidity()
//             break
//         case signUpPassword.checkValidity():
//             signUpPassword.reportValidity()
//             break
//         case conPassword.checkValidity():
//             conPassword.reportValidity()
//             break
//         default:
//             valid = true
//     }

//     let email = signUpEmail.value, password = signUpPassword.value, conPass = conPassword.value, fName = userFName.value, lname = userLName.value;

//     if (!valid) {
//         return null
//     } else if (password.length < 8) {
//         passCheck.classList.replace("d-none", "d-block")
//         passCheck.textContent = "Password should be min. 8 characters long"
//     } else if (password === conPass) {
//         // do next
//     } else {
//         passCheck.textContent = "Passwords do not match"
//         passCheck.classList.replace("d-none", "d-block")
//     }
// }

// // Allow login for existing users

// function signIn() {
//     let accCheck = document.querySelector("#accountCheck")
//     accCheck.classList.replace("d-block", "d-none")

//     let valid = false
//     switch (valid) {
//         case signInEmail.checkValidity():
//             signInEmail.reportValidity()
//             break
//         case signInPassword.checkValidity():
//             signInPassword.reportValidity()
//             break
//         default:
//             valid = true
//     }
//     let email = signInEmail.value, password = signInPassword.value

//     if (!valid) {
//         return null
//     }
//     // do next
// }

// Show and hide password toggler

function showPass(elem) {
    let pass = elem.parentNode.children
    for (const i of pass) {
        if (i.localName == "input") {
            if (i.type == "password") {
                i.type = "text"
                elem.innerHTML = '<i class="fa-solid fa-eye-slash"></i>'
            }
            else {
                i.type = "password"
                elem.innerHTML = '<i class="fa-solid fa-eye"></i>'
            }
        }
    }
}

// Sign up and Sign in page navigator

function signUpsignIn(elem) {
    let signUp = document.querySelector("#signUp")
    let signIn = document.querySelector("#signIn")
    if (elem.id == "goToSignUp") {
        signInEmail.value = null, signInPassword.value = null
        signIn.classList.add("moveOut")
        setTimeout(() => {
            signIn.classList.replace("d-flex", "d-none")
            signUp.classList.replace("d-none", "d-flex")
            setTimeout(() => {
                signUp.classList.remove("moveIn")
            }, 50);
        }, 1310)
    } else {
        userFName.value = null, userLName.value = null, signUpEmail.value = null, signUpPassword.value = null, conPassword.value = null
        signUp.classList.add("moveIn")
        setTimeout(() => {
            signIn.classList.replace("d-none", "d-flex")
            signUp.classList.replace("d-flex", "d-none")
            setTimeout(() => {
                signIn.classList.remove("moveOut")
            }, 50);
        }, 1310);
    }
}
