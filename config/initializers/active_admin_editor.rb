# encoding: utf-8
ActiveAdmin::Editor.configure do |config|
  # config.s3_bucket = ''
  # config.aws_access_key_id = ''
  # config.aws_access_secret = ''
  config.storage_dir = "#{Rails.root}/public/uploads"
end
