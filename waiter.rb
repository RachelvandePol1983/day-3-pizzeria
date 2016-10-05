class Waiter

  def greet_guest
    p "Good day. Welcome to our lovely restaurant."
  end

  def serve_guest
    p "How can i be of service"
    p "1. Woud you like to order a pizza?"
    p "2. Would you like to leave?"
    @choice = gets.chomp.to_i
    take_order(@choice)
  end

  def take_order(menu)
    case menu
      when 1
      p "Let me get the menu"
      "Let me get the menu"
      list_menu
      order_food(gets.chomp.to_i)
      when 2
      p "Thank you for your visit"
      else
      p "I really don't understand"
    end
  end

  def initialize(menu)
    @menu = menu
  end

  def contents
    @menu
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      p "#{index}. #{dish.name}"
    end
  end

  def order_food(choice)
    dish = @menu.contents[ choice ]
  end

end
