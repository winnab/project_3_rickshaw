# config/initializers/geocoder.rb

Geocoder.configure(

  # geocoding service (see below for supported options):
  :lookup => :google,

  # geocoding service request timeout, in seconds (default 3):
  :timeout => 5,

)