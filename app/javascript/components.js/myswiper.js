const mySwiperfunction = () => {
  var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    slidesPerView: 3,
    spaceBetween: 20,
    slidesPerGroup: 3,
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
  })

}

// export { mySwiperfunction };

// var swiper = new Swiper('.swiper-container', {
//       slidesPerView: 3,
//       spaceBetween: 30,
//       pagination: {
//         el: '.swiper-pagination',
//         clickable: true,
//       },
//     });
