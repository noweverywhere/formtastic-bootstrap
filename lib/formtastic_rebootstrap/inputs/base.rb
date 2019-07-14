require "formtastic_rebootstrap/inputs/base/errors"
require "formtastic_rebootstrap/inputs/base/hints"
require "formtastic_rebootstrap/inputs/base/html"
require "formtastic_rebootstrap/inputs/base/labelling"

module FormtasticRebootstrap
  module Inputs
    module Base
      extend ActiveSupport::Autoload

      autoload :DatetimePickerish,  "formtastic_rebootstrap/inputs/base/datetime_pickerish"
      # autoload :Associations
      autoload :Collections,  "formtastic_rebootstrap/inputs/base/collections"
      autoload :Choices,      "formtastic_rebootstrap/inputs/base/choices"
      # autoload :Database
      # autoload :Errors
      # autoload :Fileish
      # autoload :Hints
      # autoload :Html
      # autoload :Labelling
      # autoload :Naming
      autoload :Numeric,      "formtastic_rebootstrap/inputs/base/numeric"
      # autoload :Options
      autoload :Placeholder,  "formtastic_rebootstrap/inputs/base/placeholder"
      autoload :Stringish,    "formtastic_rebootstrap/inputs/base/stringish"
      autoload :Timeish,      "formtastic_rebootstrap/inputs/base/timeish"
      # autoload :Validations
      autoload :Wrapping,     "formtastic_rebootstrap/inputs/base/wrapping"

      include Html
      # include Options
      # include Database
      # include Database
      include Errors
      include Hints
      # include Naming
      # include Validations
      # include Fileish
      # include Associations
      include Labelling
      include Wrapping

    end
  end
end
