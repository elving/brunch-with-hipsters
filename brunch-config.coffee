exports.config =
    files:
        javascripts:
            joinTo:
                'js/app.js': /^(vendor|bower_components|app)/

            order:
                after: ['bower_components/swag/lib/swag.js']

            pluginHelpers: 'js/app.js'

        stylesheets:
            joinTo: 'css/app.css'

        templates:
            joinTo: 'js/app.js'

    plugins:
        autoReload:
            enabled:
                js: on
                css: on
                assets: off

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
