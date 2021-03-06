# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  belongs_to :course
  has_many :homeworks

  validates :age, presence: true
end
