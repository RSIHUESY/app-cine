from src.models.userModel import UserModel
from src.entities.responseEntity import responseEntity
from src.controllers.responseController import responseController
from src.entities.userEntity import UserEntity

class UserController(responseController):
    def get_user(self):
        _message = None
        _status = self.interruption
        _data= None

        try:
            _model = UserModel()
            _data = _model.get_user()
            _status = self.OK
            _message = self.messageOK

        except(Exception) as e:
            _status = self.interruption
            _message = self.messageInterruption + str(e)
            print('error: '+ str(e))

        return responseEntity(_status, _message,_data).toJSON()

    def add_user(self,request):
        _message = None
        _status = self.interruption
        _data= None

        try:
            print(1)
            _entity = UserEntity()
            _entity.requestToClass(request)
            print(_entity)

            _model = UserModel()
            _data = _model.add_user(_entity)
            _status = self.OK
            _message = self.messageOK

        except(Exception) as e:
            _status = self.interruption
            _message = self.messageInterruption + str(e)

        return responseEntity(_status,_message,_data).toJSON()

    def update_user(self,request):
        _message = None
        _status = self.interruption
        _data= None

        try:
            print(1)
            _entity = UserEntity()
            _entity.requestToClass(request)
            print(_entity)

            _model = UserModel()
            _data = _model.update_user(_entity)
            _status = self.OK
            _message = self.messageOK

        except(Exception) as e:
            _status = self.interruption
            _message = self.messageInterruption + str(e)

        return responseEntity(_status,_message,_data).toJSON()

    def delete_user(self,index):
        return ''