class Section < ActiveRecord::Base
  belongs_to :lesson, optional: true

end
