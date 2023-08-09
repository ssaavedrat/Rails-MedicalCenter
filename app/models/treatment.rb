# == Schema Information
#
# Table name: treatments
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  patient_id  :bigint           not null
#
class Treatment < ApplicationRecord
  belongs_to :patient
end
