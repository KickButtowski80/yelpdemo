# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'carrierwave/orm/activerecord'

# Initialize the Rails application.
Rails.application.initialize!


# to get rid of field_with_errors wrapper
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end