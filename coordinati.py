import psycopg2

connection = psycopg2.connect(""" dbname = Visiology_Aviaclub user = postgres host  = 192.168.47.153 password = 12345678 """)
cursor = connection.cursor()

id = 1


while id < 176:
    cursor.execute(""" SELECT "Destination"."latitude" FROM "Destination" WHERE "id" =  {}""".format(id))
    dbresponse = cursor.fetchall()
    latitude = dbresponse

    cursor.execute(""" SELECT "Destination"."longitude" FROM "Destination" WHERE "id" =  {}""".format(id))
    dbresponse = cursor.fetchall()
    longitude = dbresponse


    cursor.execute(""" UPDATE public."DestinationRu" SET latitude = {} WHERE id = {}""".format(latitude[0][0],id))
    connection.commit()

    cursor.execute(""" UPDATE public."DestinationRu" SET longitude = {} WHERE id = {}""".format(longitude[0][0],id))
    connection.commit()


    id += 1