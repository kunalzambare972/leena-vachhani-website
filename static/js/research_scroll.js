// Add smooth scrolling to buttons
document.addEventListener("DOMContentLoaded", () => {
  const buttons = document.querySelectorAll(".scroll-btn");

  buttons.forEach((button) => {
    button.addEventListener("click", () => {
      const target = document.querySelector(button.dataset.target);
      if (target) {
        target.scrollIntoView({ behavior: "smooth" });
      }
    });
  });
});
