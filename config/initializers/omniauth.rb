Rails.application.config.middleware.use OmniAuth::Builder do
    #basic omniauth config
    #adapted from Reid's Rails Playground
  
    puts "************HELLO LOGS! App Judge"
    puts "Production? ", Rails.env.production?
    puts "Client ", ENV['SALESFORCE_OAUTH2_KEY']
    puts "secret ", ENV['SALESFORCE_OAUTH2_SECRET']
    puts "URI ", ENV['SALESFORCE_OAUTH2_URI']
    puts "options ", client_options
    
    if Rails.env.production?
      puts "**************production"
      provider :salesforce, 
        ENV['SALESFORCE_OAUTH2_KEY'], 
        ENV['SALESFORCE_OAUTH2_SECRET'],
        { :redirect_uri => ENV['SALESFORCE_OAUTH2_URI']}
    else
      puts "*************developer"
      provider :salesforce, 
        ENV['SALESFORCE_OAUTH2_KEY'], 
        ENV['SALESFORCE_OAUTH2_SECRET'],
        { :client_options => { :ssl => { :ca_file => "/usr/share/curl/curl-ca-bundle.crt" } } }
        { :redirect_uri => ENV['SALESFORCE_OAUTH2_URI']}      
    end
    
end