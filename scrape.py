from recipe_scrapers import scrape_me
import requests
import sys
import json

class JsonRecipe:
    def __init__(self, t, tt, y, ing, ins, im, ho):
        self.title = t
        self.total_time = tt
        self.yields = y
        self.ingredients = ing
        self.instructions = ins
        self.image = im
        self.host = ho
        
recipe_url = sys.argv[1]
recipe = scrape_me(recipe_url)
url = 'http://localhost:3000/api/v1/recipes'
jr = JsonRecipe(recipe.title(), recipe.total_time(),
                recipe.yields(), recipe.ingredients(),
                recipe.instructions(), recipe.image(),
                recipe.host())
x = requests.post(url, json.dumps(jr.__dict__))

print(x)