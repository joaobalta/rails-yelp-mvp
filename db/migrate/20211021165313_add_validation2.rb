class AddValidation2 < ActiveRecord::Migration[6.0]
  def update_attribute
    validates :category, format: { with: /chinese|italian|japanese|french|belgian/ }
  end
end
