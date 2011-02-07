var AgileCampusTour = {
  init: function() {
    $(".tweets").tweet({
      username: "agilecampustour",
      count: 3,
      query: "agilecampustour",
      refresh_interval: 10,
      loading_text: "loading tweets..."
    });
  }
};

$(AgileCampusTour.init);
