class Pharm < ApplicationRecord
    validates :commune, presence:true
    validates :pharma_name, presence:true
    validates :owner_name, presence:true
    validates :sub_owner_name, presence:true
    validates :description, presence:true
    validates :tel, presence:true
    validates :adresse, presence:true
    validates :h_openning, presence:true
    validates :h_closing, presence:true
    validates :description, presence:true

    belongs_to :user
end
