from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Cats, and Kittens, and Dogs and Puppies, oh my!?</p>"

# --[ KITTENS ]---------------

@app.route("/api/kittens", methods=['GET', 'POST'])
def kittens():
    return "GET: return all kittens -- POST: create new kitten"

@app.route("/api/kittens/<int:kitten_id>", methods=['GET', 'PUT', 'PATCH'])
def get_kitten_by_id(kitten_id):
    return "GET: return single kitten -- PUT/PATCH: update a single kitten"

# --[ CATS ]---------------

@app.route("/api/cats", methods=['GET', 'POST'])
def cats():
    return "GET: return all cats -- POST: create new cat"

@app.route("/api/cats/<int:cat_id>", methods=['GET', 'PUT', 'PATCH'])
def cat_by_id(cat_id):
    return "GET: return single cat -- PUT/PATCH: update a single cat"

# --[ PUPPIES ]---------------

@app.route("/api/puppies", methods=['GET', 'POST'])
def puppies():
    return "GET: return all puppies -- POST: create new puppy"

@app.route("/api/puppies/<int:puppy_id>", methods=['GET', 'PUT', 'PATCH'])
def puppy_by_id(puppy_id):
    return "GET: return single puppy -- PUT/PATCH: update a single puppy"

# --[ DOGS ]---------------

@app.route("/api/dogs", methods=['GET', 'POST'])
def dogs():
    return "GET: return all dogs -- POST: create new dog"

@app.route("/api/dogs/<int:dog_id>", methods=['GET', 'PUT', 'PATCH'])
def dog_by_id(dog_id):
    return "GET: return single dog -- PUT/PATCH: update a single dog"
