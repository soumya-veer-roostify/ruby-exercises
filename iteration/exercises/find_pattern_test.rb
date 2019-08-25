gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_1
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    assert_equal 29, younger_than_thirty
  end

  def test_2
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    assert_equal :ladonna, younger_than_thirty
  end

  def test_3
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      if age > 50
        older_than_fifty = age
      end
    end

    assert_nil older_than_fifty
  end

  def test_4
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = nil
    ages.each do |name, age|
      if age > 50
        older_than_fifty = age
      end
    end

    assert_nil older_than_fifty
  end

  def test_5
    ages = [39, 45, 29, 24, 50]
    # Your Code Here
    multiple_of_three = nil
    multiple_of_three = ages.find do |age|
      age % 3 == 0
    end
    assert_equal 39, multiple_of_three
  end

  def test_6
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil

    multiple_of_three = ages.find do |name, age|
      name if age % 3 == 0
    end

    multiple_of_three = multiple_of_three[0]
    assert_equal :abdi, multiple_of_three
  end

  def test_7
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    carmen = people[1]
    assert_equal "Carmen Sandiego", carmen
  end

  def test_8
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }

    where_is_carmen_sandiego = places.each do |key, value|
      return key if value == 'Carmen Sandiego'
    end

    assert_equal :Santa_Fe, where_is_carmen_sandiego
  end

  def test_9
    numbers = [3, 7, 13, 11, 10, 2, 17]

    even = numbers.find{ |number| number.even? }
    assert_equal 10, even
  end

  def test_10
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }

    pending = purchases.find{ |comodity, purchase_status| comodity if purchase_status == :pending}[0].to_sym
    assert_equal :books, pending
  end

  def test_11
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here

    starts_with_b = purchases.keys.find {|key| key if key[0] == 'b'}
    assert_equal "backpack", starts_with_b
  end
end
