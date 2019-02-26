class Player

  def play_turn(warrior)
    if @health.nil?
      @health = 20
    end
    
    if @health > warrior.health
      # damaged
      if warrior.feel.empty?
        warrior.walk!
      elsif warrior.feel.enemy?
        warrior.attack!
      end
    elsif warrior.feel.enemy?
      warrior.attack!
    else
      if warrior.health < 15
        warrior.rest!
      elsif warrior.feel.empty?
        warrior.walk!
      elsif warrior.feel.captive?
        warrior.rescue!
      end
    end
    
    @health = warrior.health
  end
end