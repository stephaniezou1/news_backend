class Joiner < ApplicationRecord
  belongs_to :article
  belongs_to :tag

  def tag_name
    # from a joiner, how do we get the tag content?
    self.tag.content
  end
end