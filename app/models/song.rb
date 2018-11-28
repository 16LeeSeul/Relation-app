class Song < ApplicationRecord
    mount_uploader :cover, CoverUploader  # mount : CoverUploader를 cover에 장착

    acts_as_followable
    acts_as_commentable
    has_many :participates
    has_many :artists, through: :participates, source: :artist #source에는 모델명을 씀
    
    
    validates :title, presence: true  # 제목은 항상 존재해야함
    validates :lyric, length: { minimum: 9 }
    validate :cover_size    # validate는 새로 만든 함수들에 대해서, validates는 많이 사용되는 함수들에 대해서
    
    private
    def cover_size
        if self.cover.size > 5.megabyte
            errors.add(:cover, 'Cover는 5mb보다 작아야 합니다.')
        end
    end
    
end
