server '54.64.106.216', user: 'ec2-user', roles: %w{app db web}
set :bundle_env_variables, { 'NOKOGIRI_USE_SYSTEM_LIBRARIES' => 1 }
