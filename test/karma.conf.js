// Karma configuration


// base path, that will be used to resolve files and exclude
basePath = '../';

// list of files / patterns to load in the browser
files = [
    MOCHA,
    MOCHA_ADAPTER,

    'public/scripts/vendor.js',
    'public/scripts/app.js',

    'test/vendor/scripts/chai.js',
    'test/vendor/scripts/chai-jquery.js',
    'test/vendor/scripts/chai-changes.js',
    'test/vendor/scripts/chai-backbone.js',
    'test/vendor/scripts/sinon.js',
    'test/vendor/scripts/sinon-chai.js',

    'test/helpers.coffee',

    'test/**/*_test.coffee'
];

// test results reporter to use
// possible values: dots || progress
reporter = 'progress';

// web server port
port = 8080;

// cli runner port
runnerPort = 9100;

// enable / disable colors in the output (reporters and logs)
colors = true;

// level of logging
// possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO;

// enable / disable watching file and executing tests whenever any file changes
autoWatch = false;

// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari
// - PhantomJS
browsers = ['PhantomJS'];

// Continuous Integration mode
// if true, it capture browsers, run tests and exit
singleRun = true;

// compile coffee scripts
preprocessors = {
    '**/*.coffee': 'coffee'
};
