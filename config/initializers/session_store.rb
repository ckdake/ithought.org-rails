# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ithoughtorg_session',
  :secret      => '6afaf0e816fd1603cbbe102144436ff9d9664da4e98468e22c66cd8a9553a7911dbbce084cff3dcf7801bbcba859a1b66f0c3b63f289f1cdda4dd7ebd6f84a0b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
