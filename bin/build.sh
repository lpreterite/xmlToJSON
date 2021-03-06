#!/usr/bin/env bash

dist_dir="dist";
entrance_file=lib/xmlToJSON.js
output_file=$dist_dir/xmlToJSON.js
output_mini_file=$dist_dir/xmlToJSON.min.js

mkdir $dist_dir

echo "browserify..."
node ./node_modules/browserify/bin/cmd.js $entrance_file > $output_file
echo "output $output_file"

echo "minify..."
node ./node_modules/uglify-js/bin/uglifyjs $output_file -o $output_mini_file
echo "output $output_mini_file"

echo "done."