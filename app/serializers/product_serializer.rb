class ProductSerializer
    def self.serialize(product)
        serialized_product = '{'

        serialized_product += '"id": ' + product.id.to_s + ', '
        serialized_product += '"name": "' + product.name + '", '
        # binding.pry
        serialized_product += '"price": "' + product.price.to_s + '", '
        if !product.inventory.nil?
            serialized_product += '"inventory": ' + product.inventory.to_s + ', '
        else
            serialized_product += '"inventory": ' + "0" + ', '
        end
        if !product.description.nil?
            serialized_product += '"description": "' + product.description + '"}'
        else
            serialized_product += '"description": "' + "nil" + '"}'
        end
    end
end