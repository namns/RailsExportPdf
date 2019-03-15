class InvoicePdf < Prawn::Document
    def initialize(invoice)
      super()
      @invoice = Invoice.all
      table invoice_id_all do
        row(0).font_style = :bold
        column(1..3).align = :right
        self.row_colors = ["DDDDDD", "FFFFFF"]
        self.header = true
      end
    end
    def invoice_id_all
      [["id","title","description","amount"]]
      @invoice.map do |iv|
        [iv.id,iv.title,iv.description,iv.amount]
      end
    end
end