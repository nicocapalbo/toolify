const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.toolify-navbar');
  const searchbar = document.querySelector('.search-navbar');
  const home = document.querySelector('.home-banner');
  const screenHeight = window.innerHeight;
  const halfHeight = screenHeight / 2;

  if(home) {
    window.addEventListener('scroll', () => {
    //   if (window.scrollY) {
    //     navbar.classList.add('toolify-navbar-white');
    //   } else {
    //     navbar.classList.remove('toolify-navbar-white');
    //   }

      if (window.scrollY > halfHeight) {
        searchbar.classList.add('visible');
      } else {
        searchbar.classList.remove('visible');
      }
    });
  } else {
    navbar.classList.add('toolify-navbar-white');
    searchbar.classList.add('visible');
  }
}
  export { initUpdateNavbarOnScroll };
