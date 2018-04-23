class PdfController < ApplicationController
	def show
		@blog = Blog.find(params[:id])

		respond_to do |format|
			format.html
			format.pdf do
				# html = render_to_string template: "pdf/show", layout: 'layouts/pdf'
				# pdf = PDFKit.new(html, encoding: "UTF-8")
				# # productionではprecompileされたファイルを読みにいく
				# if false
				# 	css_path = Webpacker.manifest.lookup!("application.css")
				# 	pdf.stylesheets << Rails.root.join('public', css_path)
				# end
				#
				# puts Rails.root.join('public', Webpacker.manifest.lookup!("application.css"))
				#
				# send_data pdf.to_pdf,
				#           filename:    "title",
				#           type:        "application/pdf",
				#           disposition: "inline"
				render :pdf => 'pdf',
							 template: 'pdf/show',
							 no_background: false,
							 layout: 'layouts/pdf.html.slim'
			end
		end
	end
end
