class TicketVendingMachine
  def initialize
    @movies = []
  end

  def movies
    @movies
  end

  def movies=(movies)
    @movies = movies
  end

  def display_menu
    puts "どの映画をみますか？"
    i = 0
    self.movies.each do |movie|
      puts "#{i} #{movie.title}: #{movie.fee}円"
      i += 1
    end
  end
end