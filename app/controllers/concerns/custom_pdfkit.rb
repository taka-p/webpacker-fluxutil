module CustomPdfkit
	extend ActiveSupport::Concern

	# PDFKitでrenderする
	def pdf_render(
		template:      nil,
		layout:        'pdf',
		stylesheet:    'application',
		filename:      'document',
		no_background: true,
		disposition:   'inline',
		orientation:   'portrait',
		page_size:     'A4',
		margin_top:    '0',
		margin_left:   '0',
		margin_right:  '0',
		margin_bottom: '0'
	)
		pack_compile_check

		html = render_to_string template: template, layout: layout
		pdf = PDFKit.new(html, encoding: 'UTF-8')

		pdf.stylesheets << [
			Rails.public_path,
			Webpacker.manifest.lookup!(stylesheet + '.css')
		].join('').to_s

		send_data pdf.to_pdf,
		          type:          'application/pdf',
		          filename:      filename,
		          no_background: no_background,
		          disposition:   disposition,
		          orientation:   orientation,
		          page_size:     page_size,
		          margin_top:    margin_top,
		          margin_left:   margin_left,
		          margin_right:  margin_right,
		          margin_bottom: margin_bottom
	end

	# production以外、かつ最終digest値に差分がある場合はコンパイル
	private
		def pack_compile_check
			Webpacker.compile if !Rails.env.production? && Webpacker.compiler.fresh?
		end
end