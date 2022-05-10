class User < ApplicationRecord
    
    validates :title, presence:true
    validates :start, presence:true
    validates :endday, presence:true
    
    validate :date_before_start
    validate :date_before_finish

    def date_before_start
        return if start.blank?
        errors.add(:start, "は今日以降のものを選択してください") if start < Date.today
      end
    
      def date_before_finish
        return if endday.blank? || start.blank?
        errors.add(:endday, "は開始日以降のものを選択してください") if endday < start
      end

end
