# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Books_session',
  :secret      => '750785d15b213f0330f7874f98f65662b4bf7a4c2b56b9cb77fd5888ca18b7d33709e90c409d3c9e0f3340bc3520453273a1a720dc5b22dc7e6ac7b669227228'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
