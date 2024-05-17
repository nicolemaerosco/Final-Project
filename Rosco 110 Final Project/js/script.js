// Selecting the navbar element
let navbar = document.querySelector('.header .flex .navbar');

// Toggling 'active' class on navbar when menu button is clicked
document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   // Removing 'active' class from profile to ensure only one menu is active at a time
   profile.classList.remove('active');
}

// Selecting the profile element
let profile = document.querySelector('.header .flex .profile');

// Toggling 'active' class on profile when user button is clicked
document.querySelector('#user-btn').onclick = () =>{
   profile.classList.toggle('active');
   // Removing 'active' class from navbar to ensure only one menu is active at a time
   navbar.classList.remove('active');
}

// Handling scroll event to remove 'active' class from both navbar and profile when scrolling
window.onscroll = () =>{
   navbar.classList.remove('active');
   profile.classList.remove('active');
}

// Hiding loader element after 2 seconds (2000 milliseconds)
function loader(){
   document.querySelector('.loader').style.display = 'none';
}

// Fading out loader on window load
function fadeOut(){
   setInterval(loader, 2000);
}

// Calling fadeOut function when window is loaded
window.onload = fadeOut;

// Iterating over all input elements of type 'number'
document.querySelectorAll('input[type="number"]').forEach(numberInput => {
   // Adding event listener to limit input length based on 'maxLength' attribute
   numberInput.oninput = () =>{
      if(numberInput.value.length > numberInput.maxLength) 
         // Slicing the input value to match the maxLength if exceeded
         numberInput.value = numberInput.value.slice(0, numberInput.maxLength);
   };
});
