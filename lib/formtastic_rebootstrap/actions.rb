module FormtasticRebootstrap
  module Actions
    extend ActiveSupport::Autoload

    autoload :Base,         'formtastic_rebootstrap/actions/base'
    autoload :InputAction,  'formtastic_rebootstrap/actions/input_action'
    autoload :LinkAction,   'formtastic_rebootstrap/actions/link_action'
    autoload :ButtonAction, 'formtastic_rebootstrap/actions/button_action'
  end
end
