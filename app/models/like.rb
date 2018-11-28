class Like < ApplicationRecord
  belongs_to :user
  belongs_to :article
  # foreign_key: true 가 db migrate 파일에 있으므로 authenticate 관련 문장 안적어도 됨
end
