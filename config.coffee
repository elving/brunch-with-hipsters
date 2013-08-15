exports.config =
    files:
        javascripts:
            joinTo:
                'scripts/app.js': /^app/
                'scripts/vendor.js': /^(?!app)/

        stylesheets:
            joinTo:
                'stylesheets/app.css'

        templates:
            joinTo: 'scripts/app.js'

    plugins:
        coffeelint:
            pattern: /^app\/.*\.coffee$/

            options:
                indentation:
                    value: 4
                    level: "error"

                max_line_length:
                    value: 80
                    level: "error"
