# config/initializers/pdfkit.rb
PDFKit.configure do |config|
# config.wkhtmltopdf = "#{}"Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?
# Rails.root.join(‘vendor’, ‘wkhtmltopdf-amd64’).to_s if Rails.env.production?

 # wkhtmltopdf_executable = 'wkhtmltopdf-amd64'
 #config.wkhtmltopdf = Rails.root.join('vendor', 'bin', wkhtmltopdf_executable).to_s


 # config.wkhtmltopdf = 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
  config.default_options = {
  	:load_error_handling => 'ignore',
  	:encoding      => 'UTF-8',
    :page_size => 'Letter',
    :margin_top    => '0.5in',
    :margin_right  => '0.5in',
    :margin_bottom => '0.7in',
    :margin_left   => '0.5in',
    :print_media_type => true

  }
  config.wkhtmltopdf = Rails.root.join('vendor', 'wkhtmltopdf','bin', 'wkhtmltopdf.exe').to_s
  #config.wkhtmltopdf = Rails.root.join('vendor', 'wkhtmltopdf-amd64').to_s
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost" 
end

