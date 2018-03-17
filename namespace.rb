module Baseball
  # BaseBallモジュールのsecond
  class Second
    def initialize(player, uniform_number)
     @player = player
     @uniform_number = uniform_number
    end
  end
end

module Clock
  # Clockモジュールのsecond
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# 野球のAliceを作成する
Baseball::Second.new('Alice', 13)

# 時計の秒数を作成する
Clock::Second.new(25)

