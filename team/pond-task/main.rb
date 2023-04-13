require_relative 'pond'
require_relative 'fish'
require_relative 'carp'
require_relative 'sheat_fish'


@pond = Pond.new

loop do
    puts "\nMenu:"
    puts "1. View capacity"
    puts "2. View state of Pond"
    puts "3. Add fish (Carp or SheatFish)"
    puts "4. Catch fish"
    puts "5. Finish the game"
    
    choice = gets.chomp.to_i
    
    case choice
    when 1
        @pond.showCapacity
    when 2
        @pond.showState
    when 3
        add_fish_menu
    when 4
        catch_fish_menu
    when 5
        puts "Thanks for playing!"
    break
    else
        puts "Invalid choice. Please choose again."
    end
end

def add_fish_menu
    puts "\nChoose fish type:"
    puts "1. Carp"
    puts "2. SheatFish"

    fish_type = gets.chomp.to_i

    case fish_type
    when 1
        add_carp
    when 2
        add_sheat_fish
    else
        puts "Invalid choice. Please choose again."
    end
end

def add_carp
    carp = Carp.new()
    @pond.obtainFish(carp)
    puts "Carp with color #{color} and weight #{weight} added to the pond."
end

def add_sheat_fish
    sheat_fish = SheatFish.new()
    @pond.obtainFish(sheat_fish)
    puts "A SheatFish with weight #{weight} and whiscker length #{whiscker_length} has been added to the pond."
end

#to-do catch the fish