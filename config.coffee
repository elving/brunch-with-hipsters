exports.config =
    # See docs at http://brunch.readthedocs.org/en/latest/config.html.
    coffeelint:
        pattern: /^app\/.*\.coffee$/
        options:
            indentation:
                value: 4
                level: "error"
            max_line_length:
                value: 80
                level: "error"

    files:
        javascripts:
            joinTo:
                'scripts/app.js': /^app/
                'scripts/vendor.js': /^vendor/
                'test/scripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
            order:
                # Files in `vendor` directories are compiled before other files
                # even if they aren't specified in order.
                before: [
                    'vendor/scripts/console-polyfill.js'
                    'vendor/scripts/jquery.js'
                    'vendor/scripts/lodash.js'
                    'vendor/scripts/backbone.js'
                ]

        stylesheets:
            joinTo: 'stylesheets/app.css'
            order:
                before: [
                    'vendor/styles/normalize.css'
                    'vendor/styles/typeplate-unminified.css'
                ]

        templates:
            joinTo: 'scripts/app.js'
