class ProductSerializer

  def self.serialize(p)
    serialized_post = '{'
    serialized_post += '"id": ' + p.id.to_s + ', '
    serialized_post += '"name": "' + p.name+ '", '
    serialized_post += '"price": "' + p.price.to_s+ '",'
    serialized_post += '"inventory": ' + p.inventory.to_s + ', '
    serialized_post += '"description": "' + p.description + '"'
    serialized_post += '}'

    #p.as_json
  end
end