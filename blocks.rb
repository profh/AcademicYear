characters = { kirk: :TOS, spock: :TOS, picard: :TNG, janeway: :VOY, scotty: :TOS, sisko: :DS9, 
               kira: :DS9, chakotay: :VOY, seven: :VOY, dax: :DS9, tuvok: :VOY, tpol: :ENT, 
               riker: :TNG, troi: :TNG}

series = { TOS: "The Original Series", NTG: "The Next Generation", DS9: "Deep Space 9", 
         VOY: "Voyager", ENT: "Enterprise" }  
           
runtimes = { TOS: [1966, 1969], NTG: [1987, 1994], DS9: [1993, 1999], 
             VOY: [1995, 2001], ENT: [2001, 2004] }

captains = { kirk: :ncc1701, sisko: :nx74205, janeway: :ncc74656, picard: :ncc1701d }

first_officers = [:spock, :kira, :chakotay, :riker, :tpol]

vulcans = [:spock, :tuvok, :tpol]

humans = [:sisko, :kirk, :picard, :chakotay, :janeway, :riker, :seven]

females = [:kira, :dax, :tpol, :janeway, :troi, :seven]

ships = { ncc1701: "Enterprise", nx74205: "Defiant", ncc1701d: "Enterprise", ncc74656: "Voyager", 
          nx01: "Enterprise" }


puts "-----------------"

  p ships.select{ |s| !captains.values.include?(s) }
  
  

puts "-----------------"

  p characters.select{|c| females.include?(c)}.select{|c| !humans.include?(c)}.sort
  
  

puts "-----------------"
  
  series.each do |show|
    puts "#{show[1]}: #{(runtimes[show[0]][1] - runtimes[show[0]][0])}"
  end
  
