# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
Products::Application.config.secret_token = '29af8aac6fa2d62374f3136aca07ba0fd832a33a8ba23e307d9725788ea0b5f1748c398bd8ddec1ab6ab7e97eec06ac59d1108b9db7a0e3284c92fe722bb7767'
