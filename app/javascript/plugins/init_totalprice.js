const pricing = () => {
  const form = document.querySelectorAll('.datepicker');

  form.forEach((input)=> {
    input.addEventListener('input', (event) => {
      // event.preventDefault(); // <-- to prevent <form>'s native behaviour
      const start_date = document.querySelector('#start_date');
      const end_date = document.querySelector('#end_date');
      const number_of_days = (Date.parse(end_date.value) - Date.parse(start_date.value))/86400000;
      const daily_price = parseInt(document.querySelector("#daily_price").dataset.price, 10);
      const price = number_of_days * daily_price;
      console.log(price);
      if (!Number.isNaN(number_of_days)){
        document.querySelector("#number_of_days").innerHTML = number_of_days;
        document.querySelector("#total_price").innerHTML = price +" €";
      };
    });
  });
};

export { pricing };
