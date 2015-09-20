
def nyc_pigeon_organizer(data)
   nyc_pigeons = {}

   data.each do |key, value|
     value.each do |description, pigeons|
       pigeons.each do |pigeon|
         nyc_pigeons[pigeon] ||= {}
         nyc_pigeons[pigeon][key] ||= []
         nyc_pigeons[pigeon][key] << description.to_s
       end
     end
   end
   nyc_pigeons
 end

