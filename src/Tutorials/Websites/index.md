Website tutorials provide step-by-step instructions, notes, and tips for performing a number of essential tasks, including:

- <a href="/tutorials/websites/add-website/">How to add a website to your CMS</a> 
- <a href="/tutorials/websites/add-page-template/">How to add a page to a website</a> 
- <a href="/tutorials/websites/add-form/">How to add a form to a page</a> 
- <a href="/tutorials/websites/add-module/">How to create a module in your CMS</a> 
- <a href="/tutorials/websites/howtoimportatheme/">How to import a theme</a> 

```js
'use strict';

const path = require('path');

// Plugins
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CssMinimizerPlugin = require('css-minimizer-webpack-plugin');
const IgnoreEmitPlugin = require('ignore-emit-webpack-plugin');

module.exports = {
  mode: 'production',
  optimization: {
    minimize: true,
    minimizer: [
      new CssMinimizerPlugin(),
    ],
  },
  context: __dirname,
  entry: {
    app: '../scss/app.scss'
  },
  output: {
    path: path.resolve(__dirname, '../../www/_/css'),
    clean: true,
  },
  resolve: {
    extensions: ['.scss'],
  },
  module: {
    rules: [
      {
        test: /\.(woff|woff2|eot|ttf|otf)$/i,
        type: 'asset/resource',
        generator: {
          filename: 'fonts/[name][ext]'
        },
      },
      {
        test: /\.(jpg|jpeg|gif|png|svg)$/,
        type: 'asset/resource',
      },
      {
        test: /\.s[ac]ss$/i,
        use: [
          MiniCssExtractPlugin.loader,
          // Translates CSS into CommonJS
          'css-loader',
          // Compiles Sass to CSS
          'sass-loader',
        ],
      },
    ]
  },
	plugins: [
    new MiniCssExtractPlugin(),
    new IgnoreEmitPlugin(['app.js']),
    new CleanWebpackPlugin(),
	],
};
```