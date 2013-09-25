# Load the rails application
require File.expand_path('../application', __FILE__)

# Output in pdf in PDFKit:
Mime::Type.register 'application/pdf', :pdf

# Initialize the rails application
App::Application.initialize!
