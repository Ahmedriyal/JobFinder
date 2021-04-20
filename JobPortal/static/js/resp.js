burger = document.querySelector('.burger')
navbar = document.querySelector('.navbar')
navlist = document.querySelector('.nav-list')
rightNav = document.querySelector('.rightNav')
dropdown = document.querySelector('.dropdown')

burger.addEventListener('click', ()=>{
    navlist.classList.toggle('visibility-resp');
    rightNav.classList.toggle('visibility-resp');
    navbar.classList.toggle('h-nav-resp');
    dropdown.classList.toggle('visibility-resp');
})