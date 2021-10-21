class AddValidation < ActiveRecord::Migration[6.0]
  def update_column
    validates :category, format: { with: /chinese|italian|japanese|french|belgian/ }
  end
end
