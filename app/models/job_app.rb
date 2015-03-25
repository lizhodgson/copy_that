class JobApp < ActiveRecord::Base
  belongs_to :job
  belongs_to :writer, class_name: ‘User’
end
