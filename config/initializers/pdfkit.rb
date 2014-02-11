# config/initializers/pdfkit.rb
PDFKit.configure do |config|
# config.wkhtmltopdf = "#{}"Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?

  

# Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?
  config.wkhtmltopdf = 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
  config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true
  }
  
  wkhtmltopdf_executable = 'wkhtmltopdf-amd64'
  config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s

  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost" 
end

