function showNext(currentId) {
 let nextId = currentId + 1 
//  debugger
 $.getJSON(`/products/${nextId}/data`, (data) => {
   console.log(data);
   $('.name').text(data['name'])
   $('.price').text(data['price'])
   $('.inventory').text(data['inventory'])
   $('.description').text(data['description'])
 })
}