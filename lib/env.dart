const bool isProduction = bool.fromEnvironment('dart.vm.product');

const testConfig = {
  // 'baseUrl': 'http://localhost:8080/api/v1/client/',
  'baseUrl': 'http://localhost:3000',
  'basePath': '',
  'envType': 'test'
};

const productionConfig = {
  'baseUrl': 'https://app.vystem.io',
  'basePath': '/api/v1',
  'envType': 'prod'
};

final environment = isProduction ? productionConfig : testConfig;
