require "formtastic"
require "formtastic/version"
require "formtastic_rebootstrap/engine" if defined?(::Rails) # For tests
require "formtastic_rebootstrap/helpers"
require "formtastic_rebootstrap/inputs"
require "formtastic_rebootstrap/actions"
require "formtastic_rebootstrap/form_builder"
require "action_view/helpers/text_field_date_helper"

module FormtasticRebootstrap
  extend ActiveSupport::Autoload
end
