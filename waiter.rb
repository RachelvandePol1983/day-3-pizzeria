class Waiter
  def greet_guest
    p "Good day. Welcome to our lovely restaurant."
  end

  def serve_guest
    p "How can i be of service"
    p "1. Woud you like to order a pizza?"
    p "2. Would you like to leave?"
    choice = gets.chomp.to_i
    take_order(choice)
  end

  def take_order(order_number)
    case order_number
    when 1
      p "Let me get the menu"
    when 2
      p "Thank you for your visit"
    else
      p "I really don't understand"
    end
  end
end
