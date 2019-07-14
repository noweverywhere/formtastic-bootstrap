module FormtasticRebootstrap
  module Helpers

    autoload :ActionsHelper, 'formtastic_rebootstrap/helpers/actions_helper'
    autoload :ErrorsHelper, 'formtastic_rebootstrap/helpers/errors_helper'
    autoload :FieldsetWrapper, 'formtastic_rebootstrap/helpers/fieldset_wrapper'
    # autoload :FileColumnDetection, 'formtastic/helpers/file_column_detection'
    # autoload :FormHelper, 'formtastic/helpers/form_helper'
    autoload :InputsHelper, 'formtastic_rebootstrap/helpers/inputs_helper'
    # autoload :LabelHelper, 'formtastic/helpers/label_helper'
    # autoload :SemanticFormHelper, 'formtastic/helpers/semantic_form_helper'
    # autoload :Reflection, 'formtastic/helpers/reflection'

    def self.bootstrap_layout_classes_regex
      /^col-(sm|md|lg|xl)?-?[0-9]{1,2}/
    end
  end
end

