PDFKit.configure do |config|
	config.wkhtmltopdf = `which wkhtmltopdf`.to_s.strip
	config.default_options = {
		encoding: 'UTF-8',
		page_size: 'A4',
		print_media_type: true,
		no_background: true,
		margin_top:    '0.0in',
		margin_right:  '0.0in',
		margin_bottom: '0.0in',
		margin_left:   '0.0in',
	}
end
