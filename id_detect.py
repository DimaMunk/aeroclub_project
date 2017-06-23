

def detectid(table_name, column_name, value, cursor, connection):


    cursor.execute("""SELECT "{}".id FROM
                    public."{}" WHERE "{}" = '{}';""".format(table_name,table_name,column_name,value));
    dbresponse = cursor.fetchall()

    if len(dbresponse) == 0:
        cursor.execute("""SELECT max(id) FROM public."{}";""".format(table_name))
        dbresponse = cursor.fetchall()
        if dbresponse[0][0] == None:
            id_cur = 1
        else:
            id_cur = dbresponse[0][0] + 1
        cursor.execute("""INSERT INTO public."{}"(id, "{}") VALUES ({},'{}');""".format(table_name,column_name,id_cur, value))
        connection.commit()
    else:
        id_cur = dbresponse[0][0]

    return id_cur


def mainid(cursor):
    cursor.execute("""SELECT max(id) FROM facts""")
    dbresponse = cursor.fetchall()
    if dbresponse[0][0] != None: id_cur = dbresponse[0][0] + 1
    else: id_cur = 1
    return id_cur

def mainid4cubes(cursor, cube):
    cursor.execute("""SELECT max(id) FROM {}""".format(cube))
    dbresponse = cursor.fetchall()
    if dbresponse[0][0] != None: id_cur = dbresponse[0][0] + 1
    else: id_cur = 1
    return id_cur
