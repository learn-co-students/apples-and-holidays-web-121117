require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.each do |seasons, holiday|
  if seasons == :winter
    #binding.pry
    holiday.each do |day, supplies|
      supplies.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |seasons, holiday|
    if seasons == :spring
      #binding.pry
      holiday.each do |day, supplies|
        supplies.push(supply)
        end
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons|
    #binding.pry
    if seasons[0] == season
      holiday_hash[season][holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  newArray = []
  holiday_hash.each do |seasons, holiday|
    if seasons == :winter
      #binding.pry
      holiday.each do |day, supplies|
        newArray.push(supplies)
        end
      end
    end
  return newArray.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons,holidays|
    puts "#{seasons.to_s.capitalize}:"
      holidays.each do |day, supplies|
        #binding.pry
        if day.to_s.include?("_")
        words = day.to_s.split("_")
        words.each do |word|
          word.capitalize!
          end
          joined = words.join(" ")
        else
          joined = day.to_s.capitalize
          #binding.pry
        end
          if supplies.length > 1
                str = supplies.join(", ")
                puts "  #{joined}: #{str}"
          else
            puts "  #{joined}: #{supplies[0]}"
          end
        end
      end
    end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |seasons, holiday|
    holiday.each do |day, supplies|
      supplies.each do |supply|
        if supply === "BBQ"
          array.push(day)
        end
      end
    end
  end

  array
end
