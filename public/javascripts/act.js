var AgileCampusTour = {
  init: function() {
    console.log($('.tweet'));
    $(".tweet").tweet({
      username: "agilecampustour",
      avatar_size: 48,
      count: 5,
      query: "agilecampustour",
      refresh_interval: 10,
      loading_text: "loading tweets..."
    });
  }  
};

$(AgileCampusTour.init);
