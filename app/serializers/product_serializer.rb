class ProductSerializer
  def self.serialize(product)
    serialized = '{'
    serialized += '"id": "' + product.id.to_s + '", '
    serialized += '"name": "' + product.name + '", '
    serialized += '"price": ' + product.price.to_s + ' '
    if product.inventory
      serialized += ', "inventory": ' + product.inventory.to_s + ' '
    end
    if product.description
      serialized += ', "description": "' + product.description + '"'
    end
    serialized += '}'

  end
end