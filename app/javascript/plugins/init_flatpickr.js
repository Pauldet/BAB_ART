import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css" // Note this is important!

const initFlatpickr = () => {
  console.log('test');
  flatpickr(".datepicker", {
    disableMobile: true
  })
}

export default initFlatpickr;
