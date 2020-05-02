# Business::Br::Shipping

Provide a simple gem to get shipping information of brazilian post service(Correios).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'business-br-shipping'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install business-br-shipping

## Usage

```ruby
require 'business-br-shipping'

tracking_code = 'XXX12345689'
Business::BR::Shipping.tracking(tracking_code)

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvinciguerra/business-br-shipping.

## Author

Daniel Vinciguerra

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
