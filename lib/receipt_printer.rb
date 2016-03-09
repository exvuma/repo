class ReceiptPrinter
  COST = {
    'meat' => 5,
    'milk' => 3,
    'candy' => 1,
  }

  TAX = 0.05

  def initialize(output: $stdout, items:)
    @output = output
    @items = items
  end

  def print
    subtotal = items.reduce(0) do |sum, item| #|sum, item| is the elements we can no DO stuff with
      item_cost = COST[item]
    #  output.puts "#{item}: #{sprintf('$%.2f', item_cost)}"
      print_item(item, item_cost)
      sum + item_cost.to_i # converts to INT and adds to subtotal
    end

    output.puts divider
  #  output.puts "subtotal: #{sprintf('$%.2f', subtotal)}"
    print_subtot(subtotal)
    output.puts "tax: #{sprintf('$%.2f', subtotal * TAX)}"
    output.puts divider
    output.puts "total: #{sprintf('$%.2f', subtotal + (subtotal * TAX))}"
  end
  def print_subtot(subtotal)
    output.puts "subtotal: #{sprintf('$%.2f', subtotal)}"
  end
  def calc_subtotal()

  end
  def print_item(item, item_cost)
      output.puts "#{item}: #{sprintf('$%.2f', item_cost)}"
  end
  private

  attr_reader :output, :items

  def divider
    '-' * 13
  end
end
