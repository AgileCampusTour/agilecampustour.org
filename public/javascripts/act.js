var AgileCampusTour = {
  init: function() {
    $(".tweets").tweet({
      username: "agilecampustour",
      count: 3,
      query: "agile",
      refresh_interval: 10,
      loading_text: "loading tweets..."
    });
  }
};

$(AgileCampusTour.init);
