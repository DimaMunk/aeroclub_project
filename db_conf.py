from sqlalchemy import Column, Integer, String, Date, ForeignKey, Text
from sqlalchemy.orm import relation
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Airline(Base):
    __tablename__= 'Airline'

    id = Column('id', Integer, primary_key = True)
    Airline_name = Column('Airline_name', Text)

class Class(Base):
    __tablename__ = 'Class'

    id = Column('id', Integer, primary_key = True)
    Class_name = Column('Class_name', Text)

class Customer(Base):
    __tablename__ = 'Customer'

    id = Column('id', Integer, primary_key = True)
    Customer_name = Column('Customer_name', Text)

class Destination(Base):
    __tablename__ = 'Destination'

    id = Column('id', Integer, primary_key = True)
    Destination_name = Column('Destination_name', Text)

class Region(Base):
    __tablename__ = 'Region'

    id = Column('id', Integer, primary_key = True)
    Region_name = Column('Region_name', Text)

class Route(Base):
    __tablename__ = 'Route'

    id = Column('id', Integer, primary_key = True)
    Route_name = Column('Route_name', Text)

class State(Base):
    __tablename__ = 'State'

    id = Column('id', Integer, primary_key = True)
    State_name = Column('State_name', Text)

class FOP(Base):
    __tablename__ = 'fop_id'

    id = Column('id', Integer, primary_key = True)
    FOP_name = Column('fop_name', Text)


class Calendar(Base):
    __tablename__ = 'calendar'

    date = Column('id', Date, primary_key=True)
    year = Column('year', Integer)
    month = Column('month', Integer)
    monthname = Column('monthname', String(20))
    day = Column('day', Integer)
    dayofyear = Column('dayofyear', Integer)
    weekdayname = Column('weekdayname', Integer)
    calendarweek = Column('calendarweek', Integer)
    quartal = Column('quartal', Integer)
    half = Column('half', Integer)


class Fact(Base):
    __tablename__ = 'facts'

    id = Column('id', Integer, nullable = False)
    Device = Column('Device', Integer, nullable = False)
    State_id = Column('State_id', Integer, ForeignKey('State.id'), nullable = False)
    Customer_id = Column('Customer_id', Integer, ForeignKey('Customer.id'), nullable = False)
    Passenger = Column('Passenger', Text, nullable = False)
    DateInv = Column('DateInv', Date)
    Region_id = Column('Region_id', Integer, ForeignKey('Region.id'))
    Airline_id = Column('Airline_id', Integer, ForeignKey('Airline.id'))
    Destination_id = Column('Destination_id', Integer, ForeignKey('Destination.id'))
    Route_id = Column('Route_id', Integer, ForeignKey('Route.id'))
    Fare = Column('Fare', Integer)
    Price = Column('Price', Integer)
    FOP_id = Column('FOP_id', Integer, ForeignKey('fop_id.id'))
    Class_id = Column('Class_id', Integer, ForeignKey('Class.id'))
    Time_req_id = Column('Time_req_id', Text)
    Division = Column('Division', Text)
    Online_offline = Column('Online_offline', Text)
    Cost_centre = Column('Cost Centre', Text)
    Cost_Center = Column('Cost Center', Text)
    PBU = Column('PBU', Text)
    Client_billcode = Column('Client billcode', Text)
    RST = Column('RST', Text)
    AC_REQ_Person_ID = Column('AC REQ Person ID', Text)
    Employee_ID = Column('Employee ID', Text)
    Personal_ID = Column('Personal ID', Text)
    MSP = Column('MSP', Text)
    Department_code = Column('Department code', Text)
    Purpose_of_the_trip = Column('Purpose of the trip', Text)
    APN = Column('APN', Text)
    Business_trip_order = Column('Business trip order', Text)
    Purchase_order = Column('Purchase order', Text)
    CCT = Column('CCT', Text)
    EMP = Column('EMP', Text)
    DPT = Column('DPT', Text)
    Project_code = Column('Project code', Text)
    email = Column('e-mail customer', Text)
    TST = Column('TST', Text)
    ID = Column('ID', Text)

    calendar = relation(Calendar)
    state = relation(State)
    customer = relation(Customer)
    region = relation(Region)
    airline = relation(Airline)
    destination = relation(Destination)
    route = relation(Route)
    fop = relation(fop_id)
    airclass = relation(Class)