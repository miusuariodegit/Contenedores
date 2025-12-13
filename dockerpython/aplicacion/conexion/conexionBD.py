# Importando Libreria mysql.connector para conectar Python con MySQL
import mysql.connector
from mysql.connector import Error

config = {
    'user': 'usuario',
    'password': 'mipassword',
    'host': 'mysql_db_python_single',  
    'port': 3310,         
    'database': 'crud_python',
}

def connectionBD():
    try:
        # connection = mysql.connector.connect(
        connection = mysql.connector.connect(**config)
        #connection = mysql.connector.connect(
        #    host="mysql_db_python",
        #    user="usuario",
        #    passwd="mipassword",
        #    database="crud_python",
        #    charset='utf8mb4',
        #    collation='utf8mb4_unicode_ci',
        #    raise_on_warnings=True
        #)
        
        if connection.is_connected():
            # print("Conexión exitosa a la BD")
            return connection

    except mysql.connector.Error as error:
        print(f"No se pudo conectar: {error}")
