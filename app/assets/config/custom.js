document.addEventListener('turbo:load', function() {
  const hamburger = document.querySelector('.hamburger');
  const mobileMenu = document.querySelector('.nav-link');
  const backbtn = document.querySelector('.back');
  
  hamburger.onclick = () => {
    hamburger.classList.toggle('open');
    mobileMenu.classList.toggle('height');
  };

  backbtn.onclick = () => {
    window.history.back();
  };
});