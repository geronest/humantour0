class Email < ActiveRecord::Base
  validates :email, :presence => { :message => "이메일을 입력하셔야 합니다."}
  validates :email, :uniqueness => { :message => "이미 가입된 이메일입니다", :case_sensitive => false}
end
