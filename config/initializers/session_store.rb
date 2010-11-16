# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_sitemap_session',
  :secret      => '4e996c5ad75736be8dccdb011ede90654ae7301120c6874d4d366d0dcafcf110cb20894dbe162d2c0972042edbc452a953365a9f8d1a87f8158453948b50a113'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
