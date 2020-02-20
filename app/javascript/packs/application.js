// import { mySwiperfunction } from '../components/myswiper'

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

// import Swiper from 'swiper'
import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css"; // Note this is important!

import initFlatpickr from "../plugins/init_flatpickr";
import initCarrousel from "../plugins/init_carrousel";
import initLetters from "../plugins/init_letters";
import { pricing } from "../plugins/init_totalprice";

// document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
  initCarrousel();
  initLetters();
  pricing();

// })

// Carrousel




