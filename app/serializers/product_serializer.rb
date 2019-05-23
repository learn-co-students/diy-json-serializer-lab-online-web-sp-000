class ProductSerializer
  # attributes :id, :name, :description, :inventory, :price

  def self.serialize(product)
    # product.to_json

    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description.to_s + '", '
    serialized_product += '"inventory": ' + (product.inventory || 0).to_s + ', '
    serialized_product += '"price": ' + product.price.to_s + ""

    serialized_product += '}'

    # complicated mess to just show how product.to_json works

  end

end
