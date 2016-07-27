ActiveAdmin.register Variant do
  config.batch_actions = false
  config.filters = false

  belongs_to :service
end
