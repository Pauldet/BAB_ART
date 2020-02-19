import Swiper from 'swiper'
// import { mySwiperfunction } from '../components/myswiper'

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import "../plugins/flatpickr"

// Wrap every letter in a span
var textWrapper = document.querySelector('.moving-letters .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");


  anime.timeline({loop: false})
    .add({
      targets: '.moving-letters .line',
      opacity: [0.5,1],
      scaleX: [0, 1],
      easing: "easeInOutExpo",
      duration: 700
    }).add({
      targets: '.moving-letters .line',
      duration: 600,
      easing: "easeOutExpo",
      translateY: (el, i) => (-0.625 + 0.625*2*i) + "em"
    }).add({
      targets: '.moving-letters .ampersand',
      opacity: [0,1],
      scaleY: [0.5, 1],
      easing: "easeOutExpo",
      duration: 600,
      offset: '-=600'
    }).add({
      targets: '.moving-letters .letters-left',
      opacity: [0,1],
      translateX: ["0.5em", 0],
      easing: "easeOutExpo",
      duration: 600,
      offset: '-=300'
    }).add({
      targets: '.moving-letters .letters-right',
      opacity: [0,1],
      translateX: ["-0.5em", 0],
      easing: "easeOutExpo",
      duration: 600,
      offset: '-=600'
    }).add({
      targets: '.moving-letters',
      opacity: [1,0],
      duration: 1000,
      easing: "easeOutExpo",
      delay: 1000
    }).add({
      targets: '.moving-letters',
      opacity: [0,1],
      duration: 10,
      easing: "easeOutExpo",
      delay: 10
    });

// Carrousel
var mySwiper = new Swiper ('.swiper-container', {
  // Optional parameters
  slidesPerView: 1,
  slidesPerColumn: 1,
  slidesPerGroup: 1,
  spaceBetween: 20,
  direction: 'horizontal',
  loop: true,

  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
  },

  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  // And if we need scrollbar
  scrollbar: {
    el: '.swiper-scrollbar',
  },
  // breakpoints: {
  //   1199: {
  //       slidesPerView: 3,
  //   },
  //   991: {
  //       slidesPerView: 2,
  //   },
  //   600: {
  //       slidesPerView: 1,
  //   },
  // }
})



