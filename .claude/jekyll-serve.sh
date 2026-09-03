#!/bin/sh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JEKYLL_NO_BUNDLER_REQUIRE=true
exec /Users/annaullerstedrasmussen/.gem/ruby/2.6.0/bin/jekyll _4.2.2_ serve --host 127.0.0.1 --port 4000 --livereload
