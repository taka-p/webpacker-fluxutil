class PdfController < ApplicationController
	include CustomPdfkit

	def show
		@blog = Blog.find(params[:id])

		respond_to do |format|
			format.html { render template: 'pdf/show', layout: 'pdf' }
			format.pdf do
				pdf_render template:   'pdf/show',
				           layout:     'pdf',
									 stylesheet: 'application',
									 filename:   'タイトル'
			end
		end
	end
end
