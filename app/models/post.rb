class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다."}
  mount_uploader :image, ImageUploader
end
