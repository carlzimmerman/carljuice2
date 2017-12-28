class CreateBtcprices < ActiveRecord::Migration
  def change
    create_table :btcprices do |t|

      t.timestamps null: false
    end
  end
end
