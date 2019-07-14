module FormtasticRebootstrap
  module Inputs
    module Base
      module Html

        include Formtastic::Inputs::Base::Html

        def form_control_input_html_options
          new_classes = input_class_without_col&.compact&.join(" ")
          input_html_options.merge(:class => new_classes)
        end

        def original_classes
          input_html_options[:class]&.split(' ')&.flatten
        end

        def input_class_without_col
          ['form-control'] <<  original_classes&.reject do |c|
            c.match(/^col-(sm|md|lg|xl)?-?[0-9]{1,2}/)
          end&.join(' ')
        end

        def input_html_options
          if errors?
            {
              :class => "error"
            }.merge(super)
          else
            super
          end
        end

      end
    end
  end
end
