class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: {minimum: 1, maximum: 30} # 굴자수는 1글자에서 30글자 까지
  VALID_PHONE_NUMBER = /\A010([1-9]{1}[0-9]{3})([0-9]{4})\Z/ # RUBULAR 에 옮겨붙이면 정규표현식을 알 수 있음  
  # 문자를 다 대문자로 쓰면 상수 취급
  validates :mobile, presence: true,  format: {with: VALID_PHONE_NUMBER }, uniqueness: true # 전화번호는 앞에는 010으로 시작하고 첫번째는 0은 안된다고 규정
    # uniqueness: true -> 중복 불가능
 # :address  # : symbol 이라는 자료형 -string이라고 생각

  
end
