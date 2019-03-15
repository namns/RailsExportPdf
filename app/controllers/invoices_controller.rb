class InvoicesController < ApplicationController
  def index
    @invoice = Invoice.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = InvoicePdf.new(@invoice)
        send_data pdf.render,filename: 'invoice.pdf', type: 'application/pdf', dispostion: 'inline'
      end
    end
  end
  def show
    @invoice = Invoice.find params[:id]

  end

end
