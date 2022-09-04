class Blog < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_check
  validates :memo, length: { maximum: 500 }
  
  def end_check
    return if self.end_date == nil
    errors.add(:end_date, "は今日以降の日付で選択してください") if self.end_date < Date.today
  end
end