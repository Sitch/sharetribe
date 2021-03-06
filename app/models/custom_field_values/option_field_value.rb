class OptionFieldValue < CustomFieldValue
  has_many :custom_field_option_selections, :foreign_key => "custom_field_value_id", :dependent => :destroy
  has_many :selected_options, :through => :custom_field_option_selections, :source => :custom_field_option
end
