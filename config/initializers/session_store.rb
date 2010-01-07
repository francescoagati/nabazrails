# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nabazrails_session',
  :secret      => '710c7ca0c279e984d35a70ce5934d88717ae71c4d48dab91e921a29d4f1af5ffae8a279d0434a5ea8b0d6674ca1bfb2aae311387d1d1636a3abf86459ecbe33f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
