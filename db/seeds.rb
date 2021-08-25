puts "Cleaning database..."
Cocktail.destroy_all

puts "Creating cocktails..."
margarita = { name: "Margarita", ingredients: "5 cl of Tequila, 2 cl of Cointreau, 1 cl of lemon juice", stars: 4, image_url: 'https://unsplash.com/photos/ov7wVWCma2c', recipe: 'Add all the ingredients into a cocktail shaker, shake well and strain into the glass. You can optionnnally add crushed ice to obtain a "Frozen Margarita".'}
mojito = { name: "Mojito", ingredients: "4 cl of Rum old, 1 half of lime, 10 leaves of mint, 2 tablespoon of soft brown sugar, 3 drops of Angostura Bitters, soda, crushed ice", stars: 3, image_url: 'https://unsplash.com/photos/gtDYwUIr9Vg', recipe: 'cut lime in chunks. add the leaves of fresh mint. Muddle gently mint sprigs with sugar and lime chunks. You can adjust the sugar quantity to your tastes. Add rum, ice cubes or crushed ice and top up with soda water and a few drops of Angostura Bitters. Serve with a straw.'}
colada = { name: "Piña Colada", ingredients: "5 cl of Rum old, 5 cl of pineapple juice, 4 cl of Cream coconut, 1 cl of sugar syrup", stars: 4, image_url: 'https://unsplash.com/photos/BtdMFRwbqbA', recipe: 'Add all the ingredients into a cocktail shaker, shake well and strain into the glass.'}
gin = { name: "Gin Tonic", ingredients: "4 cl of Gin, 7 cl of tonic", stars: 3, image_url: 'https://unsplash.com/photos/fqlySC9fXP4', recipe: 'Pour all ingredients directly in the glass and serve chilled.'}

[margarita, mojito, colada, gin].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end
puts "Finished!"
