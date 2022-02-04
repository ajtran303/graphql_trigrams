class CreateTrigrams < ActiveRecord::Migration[6.1]
  def change
    create_table :trigrams do |t|
      t.string :trigram
      t.string :binary
      t.string :element
    end
  end
end
