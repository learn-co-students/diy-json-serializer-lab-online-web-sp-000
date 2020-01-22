class ProductSerializer 
    def self.serialize(product)
        serialized_product = '{'
     
        serialized_product += '"id": ' + product.id.to_s + ', '
        serialized_product += '"name": "' + (product.name if product.name).to_s + '", '
        serialized_product += '"price": ' + (product.price if product.price).to_s + ', '
        serialized_product += '"inventory": ' + (product.inventory if product.inventory).to_s + ', '
        serialized_product += '"description": "' + (product.description if product.description).to_s + '"'

        serialized_product += '}'
      end
end