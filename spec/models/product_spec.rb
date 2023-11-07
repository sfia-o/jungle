require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'saves successfully when all fields are set' do
      product = Product.new(
        name: 'Product',
        description: 'This is a product description',
        price: 10.99,
        quantity: 50,
        category: Category.new(name: 'Category')
      )
      expect(product).to be_valid
    end

    it 'validates the presence of name' do
      product = Product.new(
        name: nil,
        description: 'This is a product',
        price: 10.99,
        category: Category.new(name: 'Example Category')
      )
      expect(product).not_to be_valid
      expect(product.errors.full_messages).not_to be_empty

    end

    it 'validates the presence of description' do
      product = Product.new(
        name: "Product",
        description: nil,
        price: 10.99,
        category: Category.new(name: 'Example Category')
      )
      expect(product).not_to be_valid
      expect(product.errors.full_messages).not_to be_empty
    end

    it 'validates the presence of price' do
      product = Product.new(
        name: "Product",
        description: 'This is a product',
        price: nil,
        category: Category.new(name: 'Example Category')
      )
      expect(product).not_to be_valid
      expect(product.errors.full_messages).not_to be_empty
    end

    it 'validates the presence of category' do
      product = Product.new(
        name: "Product",
        description: 'This is a product',
        price: 10.99,
        category: nil
      )
      expect(product).not_to be_valid
      expect(product.errors.full_messages).not_to be_empty
    end

  end
end
