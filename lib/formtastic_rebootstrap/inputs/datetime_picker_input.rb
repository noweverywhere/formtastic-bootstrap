module FormtasticRebootstrap
  module Inputs
    class DatetimePickerInput < Formtastic::Inputs::DatetimePickerInput
      include Base
      include Base::Stringish
      include Base::DatetimePickerish
    end
  end
end
