

const initToggleActive = () => {
  $(document).ready(function(){
    $(".category-choice").click(function(){
      $(this).toggleClass("active");
    });
  });
};

export default initToggleActive;
