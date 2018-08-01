var App ={
  slider: function(){
      jQuery(".primaryslider").owlCarousel({
      items: 1,
      loop:true,
      autoplay: true,
      autoplayTimeout: 5000,
      dots: true
      });
  },
  slidemobile: function(){
      jQuery(".slidermb").owlCarousel({
      items: 1,
      loop:true,
      autoplay: true,
      autoplayTimeout: 5000,
      dots: true
      });
  },
  
};
jQuery(document).ready(function(){
  App.slider();
  App.slidemobile();
});