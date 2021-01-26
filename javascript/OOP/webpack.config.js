var path = require('path');
module.exports = {
    mode: 'development',
    entry: ['./src/index.js'],
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: '[name].bundle.js',
        publicPath: '/dist/'
    },
    devServer: {
        compress: true,
        port: 9000
    },
    module: {}
}