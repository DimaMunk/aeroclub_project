import psycopg2

connection = psycopg2.connect(""" dbname = Aeroclub user = postgres host = 192.168.47.153 password = 12345678 """)
cursor = connection.cursor()


coordinates = open("D:\\PYTHON_PROJECTS\\aviaclub\\coorcityru.txt","r")

for row in coordinates:
    row = row.split()

    id_city = row[0]

    name_city = row[1]

    latitude_city = row[-2]
    longitude_city = row[-1]

    cursor.execute(""" UPDATE public."DestinationRu" SET "Destination_name" = '{}' WHERE id = {}""".format(name_city,id_city))
    connection.commit()

    cursor.execute(""" UPDATE public."DestinationRu" SET latitude = {} WHERE id = {}""".format(latitude_city,id_city))
    connection.commit()

    cursor.execute(""" UPDATE public."DestinationRu" SET longitude = {} WHERE id = {}""".format(longitude_city,id_city))
    connection.commit()




    if id_city == 175: break

