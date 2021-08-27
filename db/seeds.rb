puts "Cleaning database..."
Cocktail.destroy_all

puts "Creating cocktails..."
margarita = { name: "Margarita", ingredients: "5 cl of Tequila, 2 cl of Cointreau, 1 cl of lemon juice", stars: 4, image_url: 'https://images.unsplash.com/photo-1544145945-b4744b209fc2', recipe: 'Add all the ingredients into a cocktail shaker, shake well and strain into the glass. You can optionnnally add crushed ice to obtain a "Frozen Margarita".'}
mojito = { name: "Mojito", ingredients: "4 cl of Rum old, 1 half of lime, 10 leaves of mint, 2 tablespoon of soft brown sugar, 3 drops of Angostura Bitters, soda, crushed ice", stars: 3, image_url: 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd', recipe: 'cut lime in chunks. add the leaves of fresh mint. Muddle gently mint sprigs with sugar and lime chunks. You can adjust the sugar quantity to your tastes. Add rum, ice cubes or crushed ice and top up with soda water and a few drops of Angostura Bitters. Serve with a straw.'}
colada = { name: "Piña Colada", ingredients: "5 cl of Rum old, 5 cl of pineapple juice, 4 cl of Cream coconut, 1 cl of sugar syrup", stars: 4, image_url: 'https://images.unsplash.com/photo-1607446045710-d5a8fd9bc1db', recipe: 'Add all the ingredients into a cocktail shaker, shake well and strain into the glass.'}
gin = { name: "Gin Tonic", ingredients: "4 cl of Gin, 7 cl of tonic", stars: 3, image_url: 'https://images.unsplash.com/photo-1597960194480-fc6b5e3181fd', recipe: 'Pour all ingredients directly in the glass and serve chilled.'}
aperol = { name: "Aperol Spritz", ingredients: "Ice, 100ml Aperol, 75 ml Prosecco and sparkling water", stars: 5, image_url: 'https://images.unsplash.com/photo-1585975776023-29a0dbc51407', recipe: 'Put a couple of cubes of ice into the glass and add the Aperol. Add the prosecco and then top up with sparkling water.'}
jager = { name: "Jäger Bomb", ingredients: "4 cl of Jägermeister, 9 cl of energy drink", stars: 2, image_url: 'https://images.unsplash.com/photo-1584526663341-2274881c5d7e', recipe: 'You need 2 glasses: a highball glass and a shot glass. Pour the energy drink into the highball glass. Pour the Jägermeister into the shoot glass. Drop the whole shoot glass into the highball glass and drink bottom up!'}
martini = { name: "Martini", ingredients: "2 1/2 ounces gin or vodka, 1/2 ounce dry vermouth, Ice, Lemon peel twist or olives for garnish", stars: 3, image_url: 'https://images.unsplash.com/photo-1602011019530-255c0a830af1', recipe: 'Place the gin or vodka and dry vermouth in a mixing glass. Stir and strain: Add cubed ice and stir for 30 seconds until the Martini is chilled. Strain the drink into your chilled Martini glass. Garnish the drink: Pare a lemon peel, and express (pinch) the back of the lemon peel over the martini. Rub the lemon peel around the rim of the glass and drop it into the glass. Alternatively, garnish with speared olives.'}

[margarita, mojito, colada, gin, aperol, jager, martini].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end
puts "Finished!"
