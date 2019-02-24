class ProductSerializer
  def self.serialize(product)
    attributes = {
      name: product.name,
      price: product.price,
      inventory: product.inventory,
      description: product.description
    }
    atts = attributes.map do |(k,v)|
      %("#{k.to_s}": "#{v}")
    end
    "{ #{atts.join(',')} }"
  end
end