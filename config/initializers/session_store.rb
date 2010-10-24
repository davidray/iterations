# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iterations_session',
  :secret      => '9f7f9b8f8dff9d85fc68121239bc0d40c2eb4efa53833fbc9e20db851080c0259026bfb67d418eff12b071f6392dfc23248268fb4fd71adde76f8ba739b4f4b0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
