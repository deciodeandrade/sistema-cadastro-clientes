class Responsavel < ApplicationRecord
  belongs_to :cliente
  has_many :contato_telefonicos
end
