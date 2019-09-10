class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'
    serialized_product += '"name": "' +  (product.name || 'NULL').to_s + '", '
    serialized_product += '"price": "' + (product.price || 'NULL').to_s + '", '
    serialized_product += '"inventory": ' + (product.inventory || '"NULL"').to_s + ', '
    serialized_product += '"description": "' + (product.description || 'NULL').to_s + '"'
    serialized_product += '}'
  end
end
