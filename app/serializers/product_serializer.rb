class ProductSerializer
  def self.serialize(product)
    # name, price, inventory, description
    sp = '{'

    sp += '"id": ' + product.id.to_s + ', '
    sp += '"name": "' + product.name + '", '
    sp += '"price": ' + product.price.to_s + ', '
    sp += '"inventory": ' + product.inventory.to_s + ', '
    sp += '"description": "' + product.description + '"'

    sp += '}'
  end
end
