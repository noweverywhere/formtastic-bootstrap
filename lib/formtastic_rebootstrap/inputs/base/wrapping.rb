module FormtasticRebootstrap
  module Inputs
    module Base
      module Wrapping

        include Formtastic::Inputs::Base::Wrapping

        def bootstrap_wrapping(&block)
          form_group_wrapping do
            label_html <<
            template.content_tag(:span, :class => wrapping_class_with_col&.uniq&.join(' ')) do
              input_content(&block) <<
              hint_html(:block) <<
              error_html(:block)
            end
          end
        end

        def input_options_classes
          options.dig(:input_html, :class)&.split(' ')&.flatten
        end

        def input_default_col
          'col-md-9'
        end

        def wrapping_class_with_col
          return ['form-wrapper'] << input_default_col unless input_options_classes
          options[:input_html][:class] = options.dig(:input_html, :class)&.split(' ')
          ['form-wrapper'] <<  input_options_classes&.select do |c|
            c.match(/^col-(sm|md|lg|xl)?-?[0-9]{1,2}/) 
          end
        end

        def input_content(&block)
          content = [
            add_on_content(options[:prepend]),
            options[:prepend_content],
            yield,
            add_on_content(options[:append]),
            options[:append_content]
          ].compact.join("\n").html_safe

          if prepended_or_appended?(options)
            template.content_tag(:div, content, :class => add_on_wrapper_classes(options).join(" "))
          else
            content
          end
        end

        def prepended_or_appended?(options)
          options[:prepend] || options[:prepend_content] || options[:append] || options[:append_content]
        end

        def add_on_content(content)
          return nil unless content
          template.content_tag(:span, content, :class => 'input-group-addon')
        end

        def form_group_wrapping(&block)
          template.content_tag(:div,
            template.capture(&block).html_safe,
            wrapper_html_options
          )
        end

        def wrapper_html_options
          super.tap do |options|
            options[:class] << " form-group form-row"
            options[:class] << " has-error" if errors?
          end
        end

        def add_on_wrapper_classes(options)
          [:prepend, :append, :prepend_content, :append_content].find do |key|
            options.has_key?(key)
          end ? ['input-group'] : []
        end

      end
    end
  end
end
