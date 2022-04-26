from datetime import date
import psycopg2
import psycopg2.extras as e

# Iniciar la conexión a la base de datos
conn = psycopg2.connect(
    host='localhost',
    database='sara',
    user='postgres',
    password='toor'
)

# Crear un cursor
cursor = conn.cursor(cursor_factory=e.DictCursor)

# Sección de queries

# Obtener los registros de la tabla Domino_Tags
sql = 'SELECT id, demand, vocabulary, id_image FROM domino."Domino_Tags" ORDER BY id ASC'
cursor.execute(sql)
rows = cursor.fetchall()

# Eliminar los registros de la tabla Domino_Answers
sql = 'DELETE FROM domino."Domino_Answers"'
cursor.execute(sql)

# Insertar los nuevos registros en la tabla Domino_Answers
sql = """
INSERT INTO domino."Domino_Answers"(
    id, 
    order_phrase, 
    word, 
    "createdAt", 
    "updatedAt", 
    id_tag
) VALUES(%s, %s, %s, %s, %s, %s)
"""

today = date.today()
id_ans = 1
for row in rows:
    # Por cada registro realizar las siguientes acciones:
    # 1. Obtener el id y la demanda
    id_tag = row['id']
    demand = row['demand'] 
    
    # 2. Dividir la demanda por medio del punto
    demand = demand.split('.')[0]

    # 3. Dividir la demanda obtenida para obtener la lista de sus palabras
    words = demand.split(' ')

    # 4. Por cada palabra guardar un registro
    order = 1  
    for word in words:
        args = (id_ans, order, word, today, today, id_tag)
        cursor.execute(sql, args)

        id_ans += 1
        order += 1


conn.commit()

# Cerrar el cursor
cursor.close()

# Cerrar la conexión
conn.close()