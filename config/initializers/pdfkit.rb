PDFKit.configure do |config|
	config.wkhtmltopdf = `which wkhtmltopdf`.to_s.strip
	config.default_options = {
		encoding: 'UTF-8',
		page_size: 'A4',
		print_media_type: true
	}
end
