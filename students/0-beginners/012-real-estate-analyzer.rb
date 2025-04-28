class Property 
  attrb_accessor :number_of_rooms, :size_in_m2, :number_of_bathrooms
end


class Flat < Property
  attrb_accessor :house_neighbors, :floor
end

class House < Property
  attrb_accessor :garden_size, :house_insurance_costs
end
