#!ruby
# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('.', 'lib'))

require 'business-br/shipping'

shipping_code = ENV['TRACKING_CODE'] || 'YOUR_TRACKING_CODE'

tracking_info = Business::BR::Shipping.tracking(shipping_code)

pp tracking_info
