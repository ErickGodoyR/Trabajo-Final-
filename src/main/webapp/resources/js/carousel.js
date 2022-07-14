  $('.myCarousel').carousel({
    interval: 3000,
    
});

document.querySelector('.menu-btn').addEventListener('click',()=>{
  document.querySelector('.nav').classList.toggle('show');
});