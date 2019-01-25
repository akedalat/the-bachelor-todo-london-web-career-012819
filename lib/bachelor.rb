require"pry"
def get_first_name_of_season_winner(data, season)
first_name = ""
  data[season].each do |attribute|
       if attribute["status"] == "Winner"
         first_name = attribute["name"].split.first
       end
         end
return first_name
end

def get_contestant_name(data, occupation)
  name = ""
    data.each do |k, v|
      v.each do |attribute|
        if attribute["occupation"] == occupation
        name = attribute["name"]
        end
      end
    end
return name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |k, v|
      v.each do |attribute|
        if attribute["hometown"] == hometown
        counter += 1
        else
        counter
        end
      end
    end
return counter
end

def get_occupation(data, hometown)
    data.each do |k, v|
      v.each do |attribute|
        if attribute["hometown"] == hometown
      return attribute["occupation"]
        end
      end
    end
end

def get_average_age_for_season(data, season)
  age_array = []
  int_array = []
    data[season].each do |attribute|
        age_array << attribute["age"]
    end
    #binding.pry
  age_array.each do |n|
  int_array << n.to_f
  end
  binding.pry
end
