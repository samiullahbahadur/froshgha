class InvoiceDetail < ApplicationRecord
  belongs_to :product
  belongs_to :invoice
end
