class ProductSerializer
  def self.serialize(product)
    attributes = {
      name: product.name,
      price: product.price,
      inventory: product.inventory,
      description: product.description
    }
    atts = attributes.map do |(k,v)|
      val = (/\A[-+]?\d+\z/ === v.to_s) ? "#{v}" : %("#{v}")
      %("#{k.to_s}": #{val})
    end
    "{ #{atts.join(',')} }"
  end
end