require 'pry'
# given that holiday_hash looks like this:
# {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }
# return the second element in the 4th of July array

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  total = []
  holiday_hash[:winter].each do |holiday, supplies|
    total << supplies
  end
  total.flatten!
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, supplies|
      if holiday.to_s.split("").include?("_")
        puts "  #{holiday.to_s.split("_").each{|x| x.capitalize!}.join(" ")}: #{supplies.join(", ")}"
      else
        puts "  #{holiday.to_s.capitalize!}: #{supplies.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbqday =[]
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |x|
        if x == "BBQ"
          bbqday << holiday
        end
      end
    end
  end
  bbqday
end
