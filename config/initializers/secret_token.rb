# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Vespa::Application.config.secret_key_base = 'aeb59f982760f4c89b1324ee33b168c802517be4de82109bf55776c70ac7006bb96f35f8f96bf2389efb1106f23a2628180022a4c820506c07029ec1633a864b'
