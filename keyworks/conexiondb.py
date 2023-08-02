import pymysql

def test_db_connection():
    connection = None
    try:
        # Establecer la conexión a la base de datos
        connection = pymysql.connect(
            host='127.0.0.1',  # Cambiar por el host de tu base de datos
            user='endo',  # Cambiar por tu usuario de base de datos
            password='12345',  # Cambiar por tu contraseña de base de datos
            database='robot'  # Cambiar por el nombre de tu base de datos
        )

        # Crear un cursor para ejecutar consultas
        with connection.cursor() as cursor:
            # Realizar una consulta de prueba
            cursor.execute('SELECT 1')

            # Obtener el resultado de la consulta
            result = cursor.fetchone()

            # Verificar que la conexión se realizó exitosamente
            if result and result[0] == 1:
                print("La conexión a la base de datos es exitosa.")
            else:
                print("La conexión a la base de datos fue exitosa, pero no se obtuvo el resultado esperado.")
    except Exception as e:
        # Si hay algún error, mostrar el mensaje de error
        print(f"Error al intentar conectar a la base de datos: {e}")
    finally:
        # Cerrar la conexión a la base de datos si está abierta
        if connection:
            connection.close()

if __name__ == '__main__':
    test_db_connection()
