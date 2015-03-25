class Job < ActiveRecord::Base
  belongs_to :client, class_name: "User", foreign_key: "client_id"
  belongs_to :writer, class_name: "User", foreign_key: "writer_id"

  has_many :job_apps

end


