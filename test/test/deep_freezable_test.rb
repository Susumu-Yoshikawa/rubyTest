require 'minitest/autorun'
require "../lib/deep_freezable"
require "../lib/bank"
require "../lib/team"

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の位置は正しいのか
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    
    # 配列自身がfreezeされているか？
    assert Team::COUNTRIES.frozen?
    
    # 配列の要素がすべてfreezeされているか？
    assert Team::COUNTRIES.all?{|country| country.frozen?}
  end
  
  def test_deep_freeze_to_hash
    assert_equal(
      {'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end


