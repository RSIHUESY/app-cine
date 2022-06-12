import json
from collections import namedtuple

class UserEntity:
    def __init__(self, id=None, names=None, lastnames=None, mail=None, username=None, password=None):
        self.id = id
        self.names = names
        self.lastnames = lastnames
        self.mail = mail
        self.username = username
        self.password = password

    def toJSON(self):
        return json.dumps(self, default=lambda o: o.__dict__, sort_keys=True, indent=4)

    def requestToClass(self, resquest):
        data = resquest.get_json()
        data = json.dumps(data)
        values = json.loads(data, object_hook=lambda d: namedtuple(
            'X', d.keys())(*d.values()))
        self.id = values.id
        self.names = values.names
        self.lastnames = values.lastnames
        self.mail = values.mail
        self.username = values.username
        self.password = values.password
