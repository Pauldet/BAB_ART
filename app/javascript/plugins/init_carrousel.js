import Swiper from 'swiper';

const initCarrousel = () => {
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
  });
}

export default initCarrousel;
