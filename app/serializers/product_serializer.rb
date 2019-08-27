class ProductSerializer
  def self.serialize(product)
    prod = '{'
    prod += '"name": "' + (product.name ? product.name : "") + '", '
    prod += '"price": ' + (product.price ? product.price.to_s : "") + ', '
    if product.inventory
      prod += '"inventory": ' + product.inventory.to_s + ', '
    else
      prod += '"inventory:" "", '
    end
    prod += '"description": "' + (product.description ? product.description.to_s : "") + '" }'
  end
end
