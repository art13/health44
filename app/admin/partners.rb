ActiveAdmin.register Partner do
  config.filters = false
  config.batch_actions = false

  belongs_to :company

end
