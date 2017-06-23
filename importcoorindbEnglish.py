import psycopg2

connection = psycopg2.connect(""" dbname = Aeroclub user = postgres host = 192.168.47.153 password = 12345678 """)
cursor = connection.cursor()

id = 1
coordinates = open("D:\\PYTHON_PROJECTS\\aviaclub\\coorcity.txt","r")

for row in coordinates:


    id_city = row.split()[0]
    latitude_city = row.split()[-2]
    longitude_city = row.split()[-1]
    print(latitude_city)

    cursor.execute(""" UPDATE public."Destination" SET latitude = {0} WHERE id = {1}""".format(latitude_city,id_city))
    connection.commit()

    cursor.execute(""" UPDATE public."Destination" SET longitude = {0} WHERE id = {1}""".format(longitude_city,id_city))
    connection.commit()

    if id_city == 175: break

