class Post < ActiveRecord::Base
    validates :content, presence: {message: "제목이 없어요!"}
end
