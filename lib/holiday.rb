require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season,holiday|
    if season == :winter
      holiday.each do |holiday2, supplies|
      supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday, supplies|
      if holiday==:memorial_day
        supplies << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
output=[]
  holiday_hash.each do |season, holiday|
    if season == :winter
      output << holiday.values
    end
  end
  output.flatten
end

def all_supplies_in_holidays(holiday_hash)
output= ""
  holiday_hash.each do |season, holiday|
    cap_season=season.capitalize
    puts "#{cap_season}:"
    holiday.each do |holiday,supplies|

      cap_holiday=holiday.capitalize
        counter=0
        while counter<cap_holiday.size
          if cap_holiday[counter] == "_"
            cap_holiday[counter] = " "
            counter+=1
          end
        end
      supplies_str=supplies.join(", ")

      puts "  #{cap_holiday}: #{supplies_str}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

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
  output=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday,supplies|
      if supplies.include?("BBQ")
        output << holiday
      end
    end
  end
  output
end
