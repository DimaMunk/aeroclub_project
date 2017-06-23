import psycopg2

connection = psycopg2.connect(""" dbname = Aeroclub user = postgres host  = 192.168.47.153 password = 12345678 """)
cursor = connection.cursor()

id = 1
coordinates = open("D:\\PYTHON_PROJECTS\\aviaclub\\coorcity.txt","w+")

while id < 176:
    cursor.execute(""" SELECT "Destination"."latitude" FROM "Destination" WHERE "id" =  {}""".format(id))
    dbresponse = cursor.fetchall()
    latitude = dbresponse

    cursor.execute(""" SELECT "Destination"."longitude" FROM "Destination" WHERE "id" =  {}""".format(id))
    dbresponse = cursor.fetchall()
    longitude = dbresponse

    cursor.execute(""" SELECT "Destination"."Destination_name" FROM "Destination" WHERE "id" =  {}""".format(id))
    dbresponse = cursor.fetchall()
    dest = dbresponse


    cursor.execute(""" SELECT "Destination".country_key FROM "Destination" WHERE id =  {};""".format(id))
    dbresponse = cursor.fetchall()
    key = dbresponse

    coordinates.write('{} {} {} {} {}\n'.format(id, dest[0][0], latitude[0][0], longitude[0][0],key[0][0]))

    id += 1

coordinates.close()