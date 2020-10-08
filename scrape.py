from recipe_scrapers import scrape_me
import requests
import sys
import json

if len(sys.argv) > 2 and sys.argv[2] == '-p':
 api_url = 'http://localhost:3000/api/v1/recipes' #change when app working on heroku
else:
 api_url = 'http://localhost:3000/api/v1/recipes'
class JsonRecipe:
    def __init__(self, t, tt, y, ing, ins, im, ho):
        self.title = t
        self.total_time = tt
        self.yields = y
        self.ingredients = ing
        self.instructions = ins
        self.image = im
        self.host = ho
api_url = 'http://localhost:3000/api/v1/recipes'
recipe_urls = open(sys.argv[1]).readlines()
for recipe_url in recipe_urls:
    recipe = scrape_me(recipe_url.strip())
    jr = JsonRecipe(recipe.title(), recipe.total_time(),
                recipe.yields(), recipe.ingredients(),
                recipe.instructions(), recipe.image(),
                recipe.host())
    x = requests.post(api_url, json.dumps(jr.__dict__))
    print(x)