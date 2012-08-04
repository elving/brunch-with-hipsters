exports.config =
    # See docs at http://brunch.readthedocs.org/en/latest/config.html.
    files:
        javascripts:
            joinTo:
                'javascripts/app.js': /^app/
                'javascripts/vendor.js': /^vendor/
            order:
                # Files in `vendor` directories are compiled before other files
                # even if they aren't specified in order.
                before: [
                    'vendor/scripts/jquery-1.8.0pre.js'
                    'vendor/scripts/lodash-0.4.2.js'
                    'vendor/scripts/backbone-0.9.2.js'
                ]

        stylesheets:
            joinTo: 'stylesheets/app.css'
            order:
                before: ['vendor/styles/normalize.css']
                after: ['vendor/styles/helpers.css']

        templates:
            joinTo: 'javascripts/app.js'
