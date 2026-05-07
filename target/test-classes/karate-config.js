function fn() {

  var config = {
    baseUrl: 'https://petstore.swagger.io/v2'
  };

  karate.log('Base URL:', config.baseUrl);

  return config;
}