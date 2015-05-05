ActiveRecord::Schema.define do
  create_table :comments, :force => true do |t|
    t.belongs_to :post, :index => true, :null => false
    t.text :body, :null => false
    t.timestamps :null => false
  end

  create_table :posts, :force => true do |t|
    t.string :title, :null => false
    t.timestamps :null => false
  end
end
