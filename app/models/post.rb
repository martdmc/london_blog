class Post < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  before_validation :preval

  private
  def preval
    if self.title
      self.title = self.title.strip
    end
    if self.content
      self.content = self.content.strip
    end
  end
end
