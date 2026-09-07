# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem "jekyll"
gem "jekyll-feed"
gem "minima"

# webrick is no longer bundled with Ruby by default (removed in 3.0)
gem "webrick"

# newer ffi releases require Ruby >= 3.0; this Mac's system Ruby is 2.6
gem "ffi", "< 1.17"

# jekyll-sass-converter 3.x pulls in sass-embedded/google-protobuf, whose
# precompiled native extension doesn't load correctly here; the 2.x line
# uses the older sassc gem, which compiles locally and just works
gem "jekyll-sass-converter", "~> 2.1"
