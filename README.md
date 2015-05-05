# ivy-serializers-rails

[![Build Status](https://travis-ci.org/IvyApp/ivy-serializers-rails.svg?branch=master)](https://travis-ci.org/IvyApp/ivy-serializers-rails)

Rails integration for
[ivy-serializers](https://github.com/ivyapp/ivy-serializers).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ivy-serializers-rails'
```

And then execute:

```sh
bundle
```

Or install it yourself with:

```sh
gem install ivy-serializers-rails
```

## Usage

See the [ivy-serializers docs](https://github.com/IvyApp/ivy-serializers/blob/master/README.md#usage)
for how to define a serializer. Once you've done that, set up your
controller(s) to use your serializer:

```ruby
class ApplicationController < ActionController::Base
  self.serializer = MySerializer
end
```

Note that you're not limited to a single serializer. If you have multiple
serialization formats, such as one for admin and one for public-facing, you can
define alternate serializers in `app/serializers` and use them as well.

### Alternate Output Formats

By default the ActiveModel::Serializers output format is used. If you'd rather
use JSON-API (or a custom format), you can do so by setting
`serialization_format` in your controller. For instance, to use JSON-API:

```ruby
class ApplicationController < ActionController::Base
  self.serialization_format = Ivy::Serializers::Formats::JSONAPI
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release` to create a git tag for the version, push git
commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ivy-serializers-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
