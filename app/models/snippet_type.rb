class SnippetType < ActiveRecord::Base
  has_many :snippets
  
  validates :name, :uniqueness => true
  
end