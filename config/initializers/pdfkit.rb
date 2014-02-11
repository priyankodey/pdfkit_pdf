# config/initializers/pdfkit.rb
PDFKit.configure do |config|
# config.wkhtmltopdf = "#{}"Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?
# Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?

 # wkhtmltopdf_executable = 'wkhtmltopdf-amd64'
 #config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s

if Rails.env.staging? || Rails.env.production?
  PDFKit.config = {:exe_path => Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s}
else
  PDFKit.config = { :exe_path => 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'}
end



  #config.wkhtmltopdf = 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
  config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost" 
end

