# frozen_string_literal: true

# Dir[Rails.root.join('lib/components/**/*.rb')].each { |f| require f }
#
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|

  config.wrappers :default, class: :input,
    hint_class: :field_with_hint, error_class: :field_with_errors, valid_class: :field_without_errors do |b|
  
    b.use :html5

    b.use :placeholder

    b.optional :maxlength

    b.optional :minlength

    b.optional :pattern

    b.optional :min_max

    b.optional :readonly

    b.use :label_input
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }

  end
  config.wrappers :default, class: "form__group" do |b|
    b.use :html5
    
    b.use :placeholder

    b.use :label, class: "visually-hidden"
    
    b.use :input, class: "form__input", error_class: "form__input--invalid"
  end

  config.generate_additional_classes_for = []

  config.default_wrapper                 = :default

  config.button_class                    = 'btn'

  config.label_text                      = lambda { |label, _, _| label }

  config.error_notification_tag = :div
  config.error_notification_class = 'error_notification'
  config.browser_validations = false


  config.boolean_style = :nested
  config.boolean_label_class = 'form__checkbox-label'

end
