from src.cn.data_base_connection import Database
from src.models.dbModel import dbModel
from src.entities.userEntity import UserEntity

class UserModel(dbModel):
    def __init__(self):
        dbModel.__init__(self)

    def get_user(self):
        _db = None
        _data = []

        try:
            _db = Database()
            _db.connect(self.host, self.port, self.user, self.password, self.database)
            print('Se conecto a la bd')
            _con_client = _db.get_client()
            
            _sql = """SELECT c.id, 
                    c.names,
                    c.lastnames,
                    c.mail,
                    c.username,
                    c.password
                FROM    main.user c; """   
            
            _cur = _con_client.cursor()
            _cur.execute(_sql,)
            _rows = _cur.fetchall()

            for row in _rows:
                _entity  = UserEntity()
                _entity.id = row[0]
                _entity.names = row[1]
                _entity.lastnames = row[2]
                _entity.mail = row[3]
                _entity.username = row[4]
                _entity.password = row[5]
                _data.append(_entity)

            _cur.close()
        
        except(Exception) as e:
            print(str(e))
            #self.add_log(str(e),type(self).__name__)
            
        finally:
            if _db is not None:
                _db.disconnect()
                print("Se cerro la conexion")
        
        return _data

    def add_user(self,entity):
        _db = None
        _data = []

        try:
            _db = Database()
            _db.connect(self.host, self.port, self.user, self.password, self.database)
            print('Se conecto a la bd')
            _con_client = _db.get_client()
            
            _sql = """INSERT INTO main.user (names, lastnames, mail, username, password)
                    VALUES (%s, %s, %s, %s, %s); """  
            
            _cur = _con_client.cursor()
            _cur.execute(_sql, (entity.names, entity.lastnames, entity.mail, entity.username, entity.password))
            _con_client.commit()
            _cur.close()
        
        except(Exception) as e:
            print(str(e))
            #self.add_log(str(e),type(self).__name__)
        
        finally:
            if _db is not None:
                _db.disconnect()
                print("Se cerro la conexion")
        return entity

    def update_user(self,entity):
        _db = None
        _data = []
        
        try:
            print(12)
            _db = Database()
            _db.connect(self.host,self.port,self.user,self.password,self.database)
            print('Se conecto a la bd')
            _con_client = _db.get_client()

            _sql = """UPDATE main.customer
                    SET names = %s, lastnames = %s, mail = %s, username = %s, password = %s,
                    WHERE name = %s; """  

            _cur = _con_client.cursor()
            _cur.execute(_sql, (entity.names, entity.lastnames, entity.mail, entity.username, entity.password))
            _con_client.commit()
            _cur.close()
        
        except(Exception) as e:
            print(str(e))
            #self.add_log(str(e),type(self).__name__)
        
        finally:
            if _db is not None:
                _db.disconnect()
                print("Se cerro la conexion")
        
        return entity