require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "product attributes should not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:tittle].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:laboratory].any?
    assert product.errors[:price].any?
  end

  test "Product price should not accept invalid value" do
    product = Product.new(tittle:            "Algun puto producto",
                          description:       "SOme description",
                          image_url:         'zzz.jpg',
                          laboratory:        'SFL')

    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.99"], product.errors[:price]

    product.price = 0.00
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.99"], product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(tittle:             "Un producto X",
                description:        'Lorem Ipsun dolor sequitur',
                laboratory:         'XLabs',
                price:              1,
                image_url:          image_url)
  end

  test "valid image URL" do
    ok = %w{ fred.gif fred.jpg fred.jpeg FRED.JPG FRED.png http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      assert new_product(name).valid?, "#{name} should be invalid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} should be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(tittle:           products(:complan).tittle,
                          description:      "yyy",
                          price:            1,
                          image_url:        'fred.gif',
                          laboratory:       'Some')
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], product.errors[:tittle]
  end

end
