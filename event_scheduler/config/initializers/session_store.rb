# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_event_scheduler_session',
  :secret      => 'a4bdc0ba4608301117b93a31268635a17ceb95ba42cce4336e4b71b153ef87fbb4b1774415215da6acf606b69c24eea4ddd28d5c504b11ba5f396105af30994d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
