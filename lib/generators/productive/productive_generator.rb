require 'rails/generators'

class ProductiveGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  argument :api_key, required: true, desc: 'required'
  argument :account_id, required: true, desc: 'required'

  desc 'Configure Productive API client'

  def create_initializer_file
    if /^[a-f0-9\-]{36}$/ !~ api_key
      raise Thor::Error, "Invalid Productive API key #{api_key.inspect}\nYou can find the API key on the Settings -> Security page of https://productive.io"
    end

    if /^[0-9]*$/ !~ account_id
      raise Thor::Error, "Invalid Productive Account ID #{account_id.inspect}\n"
    end

    initializer 'productive.rb' do
      <<-CONFIG.strip_heredoc
        Productive.configure do |config|
          config.api_key = #{api_key.inspect}
          config.account_id = #{account_id.inspect}
        end
      CONFIG
    end
  end
end
