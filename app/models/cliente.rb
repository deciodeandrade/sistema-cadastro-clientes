class Cliente < ApplicationRecord
  belongs_to :endereco
  belongs_to :responsavel
end
