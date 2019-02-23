class User < ActiveRecord::Base
  before_create CreateAgeAtCallback.new
  before_save do
    puts "１番目に呼ばれたコールバック"
  end

  before_save do
    puts "２番目に呼ばれたコールバック"
  end

  after_initialize do |user|
   p user
   puts "オブジェクトを生成しました"
   user.name = "Taro"
  end

  before_create do
    self.name = "Taro" if name.blank?
  end
end
