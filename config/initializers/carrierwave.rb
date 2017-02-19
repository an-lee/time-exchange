CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAJUULZGRAIWQMLERA"],

      aws_secret_access_key: ENV["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"],

      region:                ENV["ap-northeast-1"]

    }
    config.fog_directory  = ENV["an-lee"]


  else
    config.storage :file
  end
end
