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
