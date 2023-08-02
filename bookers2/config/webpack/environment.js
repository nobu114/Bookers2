const { environment } = require('@rails/webpacker')

module.exports = environment

const webpack = require('rebpack')
environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        JQuery: 'jquery/src/jquery',
        Popper: 'popper.js'
    })
)