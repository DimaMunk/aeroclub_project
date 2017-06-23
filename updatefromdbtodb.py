import psycopg2

connection = psycopg2.connect(""" dbname = Aeroclub user = postgres host = 192.168.47.153 password = 12345678 """)
cursor = connection.cursor()

id = 79

while id < 106:
    cursor.execute(""" SELECT division.division_name FROM division WHERE "id" =  {}""".format(id))
    dbresponse = cursor.fetchall()
    key = dbresponse

    cursor.execute(""" UPDATE division SET division_name_copy = {} WHERE id = {}""".format(key[0][0],id))
    connection.commit()

    id += 1