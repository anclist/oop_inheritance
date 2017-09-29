require_relative 'multilinguist'

class QuoteCollector < Multilinguist

    def initialize
      super
      @quotes = []
    end

    def quotes
      @quotes
    end

    def quotes=(quotes)
      @quotes = quotes
    end

    def add_quote(quote)
      @quotes << quote
    end

  def ramdom_quote
    msg = quotes.sample
    say_in_local_language(msg)
  end

end


me = QuoteCollector.new
me.add_quote("You can do anything, but not everything.")
me.add_quote("The richest man is not he who has the most, but he who needs the least.")
me.add_quote("You miss 100 percent of the shots you never take.")
me.add_quote("You must be the change you wish to see in the world.")
me.add_quote("Do not seek to follow in the footsteps of the men of old; seek what they sought.")
me.add_quote("Always forgive your enemies; nothing annoys them so much.")

p me.ramdom_quote

me.travel_to("India")
p me.ramdom_quote

me.travel_to("Italy")
p me.ramdom_quote

me.travel_to("Spain")
p me.ramdom_quote
