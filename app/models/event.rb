class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :start_time, presence: { message: "開始時間を入力してください" }
  validates :end_time, presence:  { message: "終了時間を入力してください" }
  validate :end_time_after_start_time
  validates :memo, length: { maximum: 500 }
  

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "は開始日以降の日付にしてください")
    end
  end
end
