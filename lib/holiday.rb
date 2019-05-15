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



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_hash.map do |season,days|
    days.map do |day,supply|
      
      supply.include?("BBQ") ? day : nil
        
    end
  end.flatten.compact
end



def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, days|
    
    puts "#{season.to_s.capitalize!}:"
    
    days.each do |day, array|
   
      puts "  #{day.to_s.split("_").collect {
        |cap| cap.capitalize}.join(" ")
      }: #{array.join(", ")}"
    
    end
  end
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  new_supplies = []
  holiday_hash.each do |season, days|
    if season == :winter
     days.each do |day, supplies|
     new_supplies << supplies 
    end
  end
end  
     new_supplies.flatten
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # output_hash[item.name] = value
  
  holiday_hash.each do |key,value|
    if key == season
      holiday_hash[season][holiday_name] = supply_array
    end
  end
  return holiday_hash
end



def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |key,value|
    value.each do |day, stuff|
      stuff << supply
  end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |key,value|
    value.each do |day, stuff|
      if day == :memorial_day
        stuff << supply
      end
    end
   end
 end
end











