class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :prototype  # tweetsテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
