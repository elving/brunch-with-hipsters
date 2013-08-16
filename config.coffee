exports.config =
    files:
        javascripts:
            joinTo:
                'js/app.js': /^app/
                'js/vendor.js': /^(?!app)/

        stylesheets:
            joinTo: 'css/app.css'

        templates:
            joinTo: 'js/app.js'

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

    conventions:
        assets: /(assets|font)/
