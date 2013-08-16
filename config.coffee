exports.config =
    files:
        javascripts:
            joinTo:
                'js/app.js': /^app/
                'js/vendor.js': /^(?!app)/

        stylesheets:
            joinTo:
                'css/app.css': ->
                    console.log arguments, this

        templates:
            joinTo: 'js/app.js'

    plugins:
        imageoptimizer:
            path: 'images'
            smushit: no

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
