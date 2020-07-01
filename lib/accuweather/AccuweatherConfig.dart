class AccuweatherConfig {
  // serach url
  // ignore: non_constant_identifier_names
  static final String SEARCH_URL =
      "http://api.accuweather.com/locations/v1/cities/search.json?q=%s&apikey=%s&language=en-us";

  // ignore: non_constant_identifier_names
  //10 hours data
  static final String HOURLY_12_URL =
      "https://api.accuweather.com/forecasts/v1/hourly/12hour/%s.json?details=true&apikey=%s";

  //10 days data url
  static final String DAYS_10_URL =
      "https://api.accuweather.com/forecasts/v1/daily/10day/%s.json?details=true&apikey=%s";
  static final String GEO_SEARCH_URL =
      "https://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=%s";
  static final String CURRENT_URL =
      "https://api.accuweather.com/currentconditions/v1/%s.json?details=true&apikey=%s";

  static final String TEST_KEY = "srRLeAmTroxPinDG8Aus3Ikl6tLGJd94";
}
