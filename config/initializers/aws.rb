CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIPOTU6KB7E4LNSFQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    # host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://apigateway.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'jiinlee'                                      # required
#   config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = {} # optional, defaults to {}
end