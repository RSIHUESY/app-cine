from flask import Flask, request
from flask_jwt_extended import (
    # jwt_manager
    JWTManager
)
from src.controllers.userController import UserController

app = Flask(__name__)
app.secret_key = "any random string"
app.config['JWT_SECRET_KEY'] = 'cambiar_no_olvidar' 
app.config["IMAGE_UPLOADS"] = "/tmp"
jwt = JWTManager(app)

# Read leer listar obtener  -> GET
@app.route('/users', methods=['GET'])
def get_users():
    return UserController().get_user()

# CREAR INSERTAR Insert   -> POST request
@app.route('/user-add', methods=['POST'])
def add_user():
    return UserController().add_user(request)

# MODIFICAR UPDATE ACTUALIZAR    -> PUT request
@app.route('/user-update', methods=['PUT'])
def update_user():
    return UserController().update_user(request)

# Eliminar delete    -> DELETE
# url/user/
@app.route('/user/<index>', methods=['DELETE'])
#@jwt_required
def delete_user(index):
    return UserController().delete_user(index)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)

