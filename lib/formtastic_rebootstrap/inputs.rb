module FormtasticRebootstrap
  module Inputs
    extend ActiveSupport::Autoload

    autoload :Base,                "formtastic_rebootstrap/inputs/base"
    # autoload :Basic
    autoload :BooleanInput,        "formtastic_rebootstrap/inputs/boolean_input"
    autoload :CheckBoxesInput,     "formtastic_rebootstrap/inputs/check_boxes_input"
    autoload :ColorInput,        "formtastic_rebootstrap/inputs/color_input"
    autoload :CountryInput,        "formtastic_rebootstrap/inputs/country_input"
    autoload :DateInput,           "formtastic_rebootstrap/inputs/date_input"
    autoload :DatePickerInput,     "formtastic_rebootstrap/inputs/date_picker_input"
    autoload :DatetimePickerInput, "formtastic_rebootstrap/inputs/datetime_picker_input"
    autoload :DateSelectInput,     "formtastic_rebootstrap/inputs/date_select_input"
    autoload :DatetimeInput,       "formtastic_rebootstrap/inputs/datetime_input"
    autoload :DatetimeSelectInput, "formtastic_rebootstrap/inputs/datetime_select_input"
    autoload :EmailInput,          "formtastic_rebootstrap/inputs/email_input"
    autoload :FileInput,           "formtastic_rebootstrap/inputs/file_input"
    autoload :HiddenInput,         "formtastic_rebootstrap/inputs/hidden_input"
    autoload :NumberInput,         "formtastic_rebootstrap/inputs/number_input"
    # autoload :NumericInput       # TODO Where does Formtastic actually define this?
    autoload :PasswordInput,       "formtastic_rebootstrap/inputs/password_input"
    autoload :PhoneInput,          "formtastic_rebootstrap/inputs/phone_input"
    autoload :RadioInput,          "formtastic_rebootstrap/inputs/radio_input"
    autoload :RangeInput,          "formtastic_rebootstrap/inputs/range_input"
    autoload :SearchInput,         "formtastic_rebootstrap/inputs/search_input"
    autoload :SelectInput,         "formtastic_rebootstrap/inputs/select_input"
    autoload :StringInput,         "formtastic_rebootstrap/inputs/string_input"
    autoload :TextInput,           "formtastic_rebootstrap/inputs/text_input"
    autoload :TimeInput,           "formtastic_rebootstrap/inputs/time_input"
    # autoload :TimePickerInput    # TODO Come back to this.
    autoload :TimeSelectInput,     "formtastic_rebootstrap/inputs/time_select_input"
    autoload :TimeZoneInput,       "formtastic_rebootstrap/inputs/time_zone_input"
    # autoload :Timeish            # This seems like a mistake.
    autoload :UrlInput,            "formtastic_rebootstrap/inputs/url_input"

  end
end
