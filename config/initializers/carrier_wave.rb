if Rails.env.production?
  CarrierWave.configure do |config|
    # Configuration for Amazon S3
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'

    config.fog_credentials = {
      :provider =>              'AWS',
      :aws_access_key_id =>     ENV['AWS_AKID'],
      :aws_secret_access_key => ENV['AWS_SAK']
    }
    config.fog_directory = ENV['AWS_BKT']
  end
end
