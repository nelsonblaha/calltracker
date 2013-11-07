class Report < ActiveRecord::Base
  before_save :csv_magic
  serialize :users, Array
  serialize :departments, Array
  def csv_magic
    self.departments = self.departments.split(",").map{|x| x.strip }
    self.users= self.users.split(",").map{|x| x.strip }
  end
end
