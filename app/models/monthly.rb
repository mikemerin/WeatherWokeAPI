class Monthly < ApplicationRecord
  belongs_to :station, primary_key: "wban", foreign_key: "wban"
end
