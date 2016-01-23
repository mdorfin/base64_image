# Base64Image

This gem allows you create a simple proxy to decode some base64-encoded image to given setter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'base64_image'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install base64_image

## Usage

    class A
      include Base64Image
      attr_accessor :image # It might be a Carrierwave mounted uploader or something else.

      base64image_to :image # It will generate a proxy method :base64_image= to decode data and write it to :image as binary (StringIO)
    end

    a = A.new
    a.base64_image = "data:image/png;base64,ab123ba...3fa="

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/base64_image. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

