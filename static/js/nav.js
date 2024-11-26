// Function to toggle the menu visibility and hamburger icon change
function toggleMenu() {
    const navLinks = document.querySelector('.nav-links');  // Select the nav-links
    const hamburger = document.querySelector('.hamburger'); // Select the hamburger

    navLinks.classList.toggle('active');  // Toggle the 'active' class to slide in/out the navbar
    hamburger.classList.toggle('active'); // Toggle the 'active' class to turn hamburger into a cross
}
