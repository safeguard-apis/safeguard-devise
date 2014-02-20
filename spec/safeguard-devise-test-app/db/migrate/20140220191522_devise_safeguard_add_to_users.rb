class DeviseSafeguardAddToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.datetime  :last_sign_in_with_safeguard
      t.boolean   :safeguard_enabled, :default => false
    end

  end

  def self.down
    change_table :users do |t|
      t.remove :last_sign_in_with_safeguard, :safeguard_enabled
    end
  end
end
