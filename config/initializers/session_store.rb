# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_linusnumber_session',
  :secret      => 'd30723ab29746efdf355e6ffd47bd8188529b09e7510d0f91f7536a7f1b4c1dd7249e652206842b58782e1f9fe37d8d138f7b8befa543f8fc45567e0f5fada35'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
