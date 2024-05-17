// Selecting the profile and navbar elements
let profile = document.querySelector('.header .flex .profile');
let navbar = document.querySelector('.header .flex .navbar');

// Toggling 'active' class on profile when user button is clicked, and removing 'active' class from navbar
document.querySelector('#user-btn').onclick = () =>{
   profile.classList.toggle('active');
   navbar.classList.remove('active');
}

// Toggling 'active' class on navbar when menu button is clicked, and removing 'active' class from profile
document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   profile.classList.remove('active');
}

// Handling scroll event to remove 'active' class from both profile and navbar when scrolling
window.onscroll = () =>{
   profile.classList.remove('active');
   navbar.classList.remove('active');
}

// Selecting all sub-images within the update-product section
let subImages = document.querySelectorAll('.update-product .image-container .sub-images img');
// Selecting the main image within the update-product section
let mainImage = document.querySelector('.update-product .image-container .main-image img');

// Adding click event listeners to all sub-images to change the source of the main image
subImages.forEach(images =>{
   images.onclick = () =>{
      // Getting the source attribute of the clicked sub-image
      let src = images.getAttribute('src');
      // Setting the source attribute of the main image to the clicked sub-image's source
      mainImage.src = src;
   }
});
