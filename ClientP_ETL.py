import pandas as pd
import psycopg2
import id_detect as id

#192.168.47.153 pas 12345678

df = pd.ExcelFile("D:\\PYTHON_PROJECTS\\aviaclub\\data.xlsx")
sheet = df.parse(0)
dbname = 'Aeroclub'
connection = psycopg2.connect(""" dbname = {} user = postgres host = 192.168.47.153 password = 12345678""".format(dbname))
cursor = connection.cursor()



for row in sheet.iterrows():

    val_id = row[1]['ID']
    val_device = row[1]['Device']
    val_state = row[1]['State']
    val_customer = row[1]['Customer']
    val_passenger = row[1]['Passenger']
    val_dateinv = row[1]['DateInv']
    val_region = row[1]['Region']
    val_airline = row[1]['Airline']
    val_dest = row[1]['Destination']
    val_route = row[1]['ROUTE']
    val_fare = row[1]['Fare']
    val_price = row[1]['Price']
    val_fop = row[1]['FOP']
    val_class = row[1]['Class']
    val_timereqid = row[1]['TIME REQ ID']
    val_division = row[1]['Division']
    val_onlineoffline = row[1]['ONLINE OFFLINE']
    val_costcentre = row[1]['Cost Centre']
    val_costcenter = row[1]['Cost Center']
    val_pbu = row[1]['PBU']
    val_clientbill = row[1]['Client Billcode']
    val_rst = row[1]['RST']
    val_acreqpersonid = row[1]['AC REQ PERSON ID']
    val_employeeid = row[1]['Employee ID']
    val_personalid = row[1]['Personal ID']
    val_msp = row[1]['MSP']
    val_departmentcode = row[1]['DEPARTMENT CODE']
    val_purposeofthetrip = row[1]['Purpose of the trip']
    val_apn = row[1]['APN']
    val_businesstriporder = row[1]['Business trip order']
    val_purchaseorder = row[1]['Purchase order']
    val_cct = row[1]['CCT']
    val_emp = row[1]['EMP']
    val_dpt = row[1]['DPT']
    val_projectcode = row[1]['Project Code']
    val_email = row[1]['e-mail Заказчика']
    val_tst = row[1]['TST']

    if val_customer == 'Client L': continue
    if val_customer == 'Client P': cubeSelect = 'clientp'
    if val_customer == 'Client C': continue
    if val_customer == 'Client D': continue

#----------------------------------------
    id_airline = id.detectid('Airline','Airline_name',val_airline, cursor, connection)

    id_class = id.detectid('Class','Class_name',val_class, cursor, connection)



    id_destination = id.detectid('Destination','Destination_name',val_dest, cursor, connection)

    id_region = id.detectid('Region','Region_name',val_region, cursor, connection)

    id_route = id.detectid('Route','Route_name',val_route, cursor, connection)

    id_state = id.detectid('State','State_name',val_state, cursor, connection)

    id_fop = id.detectid('fop_id','fop_name',val_fop, cursor, connection)

    id_onlineoffline = id.detectid('online_offline','onlineoffline_name', val_onlineoffline,cursor,connection)

    id_costcentre = id.detectid('cost_centre', 'costcentre_name',val_costcentre,cursor,connection)

    id_employeeid = id.detectid('employeeid','employeeid_name',val_employeeid,cursor,connection)

    id_purposeofthetrip = id.detectid('purposeofthetrip','purposeofthetrip_name',val_purposeofthetrip,cursor,connection)

    id_purchaseorder = id.detectid('purchaseorder','purchaseorder_name',val_purchaseorder,cursor,connection)

    id_passenger = id.detectid('passengers','passenger_name',val_passenger,cursor,connection)

    id_fact = id.mainid4cubes(cursor,cubeSelect)

#----------------------------------------

    cursor.execute("""INSERT INTO public.{}(id, "Device", "State_id",
                         "passenger_id", "DateInv", "Region_id",
                         "Airline_id", "Destination_id", "Route_id",
                         "Fare", "Price", "FOP_id", "Class_id", "Time_req_id",
                         "Division", "online_offline_id", "cost_centre_id", "Cost Center",
                         "PBU", "Client billcode", "RST", "AC REQ Person ID",
                         "employeeid_id", "Personal ID", "MSP", "Department code",
                         "purposeofthetrip_id", "APN", "Business trip order",
                         "purchaseorder_id", "CCT", "EMP", "DPT", "Project code",
                         "e-mail customer", "TST", "ID_id")
                          VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,
                          %s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);""".format(cubeSelect),(
    id_fact,
    val_device,
    id_state,
    id_passenger,
    val_dateinv,
    id_region,
    id_airline,
    id_destination,
    id_route,
    val_fare,
    val_price,
    id_fop,
    id_class,
    val_timereqid,
    val_division,
    id_onlineoffline,
    id_costcentre,
    val_costcenter,
    val_pbu,
    val_clientbill,
    val_rst,
    val_acreqpersonid,
    id_employeeid,
    val_personalid,
    val_msp,
    val_departmentcode,
    id_purposeofthetrip,
    val_apn,
    val_businesstriporder,
    id_purchaseorder,
    val_cct,
    val_emp,
    val_dpt,
    val_projectcode,
    val_email,
    val_tst,
    val_id,))
    connection.commit()
    id_fact += 1

connection.close()



