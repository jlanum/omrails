require "rubygems"
require "sinatra"
require "braintree"

Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = "mb5hqkxh972gnhgg"
Braintree::Configuration.public_key = "zqwk5kxr57sygfht"
Braintree::Configuration.private_key = "058f3c74290cdae346a737ae8efc2d84"