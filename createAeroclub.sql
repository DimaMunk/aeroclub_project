-- Table: "Airline"

-- DROP TABLE "Airline";

CREATE TABLE "Airline"
(
  id integer NOT NULL,
  "Airline_name" text,
  CONSTRAINT airline_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Airline"
  OWNER TO postgres;
-- Table: "Class"

-- DROP TABLE "Class";

CREATE TABLE "Class"
(
  id integer NOT NULL,
  "Class_name" text,
  "Class_name_en" text,
  CONSTRAINT class_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Class"
  OWNER TO postgres;
-- Table: "Destination"

-- DROP TABLE "Destination";

CREATE TABLE "Destination"
(
  id integer NOT NULL,
  "Destination_name" text,
  latitude double precision,
  longitude double precision,
  country_key text,
  CONSTRAINT dest_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Destination"
  OWNER TO postgres;
-- Table: "DestinationRu"

-- DROP TABLE "DestinationRu";

CREATE TABLE "DestinationRu"
(
  id integer NOT NULL,
  "Destination_name" text,
  latitude double precision,
  longitude double precision,
  country_key text,
  CONSTRAINT destru_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "DestinationRu"
  OWNER TO postgres;
-- Table: "Region"

-- DROP TABLE "Region";

CREATE TABLE "Region"
(
  id integer NOT NULL,
  "Region_name" text,
  CONSTRAINT region_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Region"
  OWNER TO postgres;
-- Table: "RegionRu"

-- DROP TABLE "RegionRu";

CREATE TABLE "RegionRu"
(
  id integer NOT NULL,
  "Region_name" text,
  CONSTRAINT regionid PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "RegionRu"
  OWNER TO postgres;
-- Table: "Route"

-- DROP TABLE "Route";

CREATE TABLE "Route"
(
  id integer NOT NULL,
  "Route_name" text,
  CONSTRAINT route_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Route"
  OWNER TO postgres;
-- Table: "State"

-- DROP TABLE "State";

CREATE TABLE "State"
(
  id integer NOT NULL,
  "State_name" text,
  CONSTRAINT state_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "State"
  OWNER TO postgres;
-- Table: "StateRu"

-- DROP TABLE "StateRu";

CREATE TABLE "StateRu"
(
  id integer NOT NULL,
  "State_name" text,
  CONSTRAINT stateru_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "StateRu"
  OWNER TO postgres;
-- Table: acreqpersonid

-- DROP TABLE acreqpersonid;

CREATE TABLE acreqpersonid
(
  id integer NOT NULL,
  acreqpersonid_name text,
  CONSTRAINT acreqpers PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE acreqpersonid
  OWNER TO postgres;
-- Table: calendar

-- DROP TABLE calendar;

CREATE TABLE calendar
(
  date date NOT NULL,
  year integer,
  month integer,
  monthname text,
  day integer,
  dayofyear integer,
  weekdayname text,
  calendarweek integer,
  quartal text,
  half text,
  CONSTRAINT calendarr_pkey PRIMARY KEY (date)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE calendar
  OWNER TO postgres;
-- Table: calendarru

-- DROP TABLE calendarru;

CREATE TABLE calendarru
(
  "Дата" date NOT NULL,
  year integer,
  month integer,
  monthname text,
  day integer,
  dayofyear integer,
  weekdayname text,
  calendarweek integer,
  quartal text,
  half text,
  CONSTRAINT calendarru_pkey PRIMARY KEY ("Дата")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE calendarru
  OWNER TO postgres;
-- Table: cost_center

-- DROP TABLE cost_center;

CREATE TABLE cost_center
(
  id integer NOT NULL,
  costcenter_name integer,
  CONSTRAINT costcenter PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cost_center
  OWNER TO postgres;
-- Table: cost_centre

-- DROP TABLE cost_centre;

CREATE TABLE cost_centre
(
  id integer NOT NULL,
  costcentre_name text,
  CONSTRAINT costcentre_prim PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cost_centre
  OWNER TO postgres;
-- Table: division

-- DROP TABLE division;

CREATE TABLE division
(
  id integer NOT NULL,
  division_name integer,
  CONSTRAINT div PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE division
  OWNER TO postgres;
-- Table: employeeid

-- DROP TABLE employeeid;

CREATE TABLE employeeid
(
  id integer NOT NULL,
  employeeid_name text,
  CONSTRAINT employeeid_prim PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE employeeid
  OWNER TO postgres;
-- Table: fop_id

-- DROP TABLE fop_id;

CREATE TABLE fop_id
(
  id integer NOT NULL,
  fop_name text,
  CONSTRAINT fop_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fop_id
  OWNER TO postgres;
-- Table: online_offline

-- DROP TABLE online_offline;

CREATE TABLE online_offline
(
  id integer NOT NULL,
  onlineoffline_name text,
  CONSTRAINT onnlineoffline_primkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE online_offline
  OWNER TO postgres;
-- Table: passengers

-- DROP TABLE passengers;

CREATE TABLE passengers
(
  id integer NOT NULL,
  passenger_name text,
  CONSTRAINT pass PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE passengers
  OWNER TO postgres;
-- Table: pbu

-- DROP TABLE pbu;

CREATE TABLE pbu
(
  id integer NOT NULL,
  pbu_name integer,
  CONSTRAINT pbukey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE pbu
  OWNER TO postgres;
-- Table: personalid

-- DROP TABLE personalid;

CREATE TABLE personalid
(
  id integer NOT NULL,
  personalid_name text,
  CONSTRAINT persid PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE personalid
  OWNER TO postgres;
-- Table: purchaseorder

-- DROP TABLE purchaseorder;

CREATE TABLE purchaseorder
(
  id integer NOT NULL,
  purchaseorder_name text,
  CONSTRAINT purchaseorder_prim PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE purchaseorder
  OWNER TO postgres;
-- Table: purposeofthetrip

-- DROP TABLE purposeofthetrip;

CREATE TABLE purposeofthetrip
(
  id integer NOT NULL,
  purposeofthetrip_name integer,
  CONSTRAINT purposeofthetrip_prim PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE purposeofthetrip
  OWNER TO postgres;
-- Table: timereqid

-- DROP TABLE timereqid;

CREATE TABLE timereqid
(
  id integer NOT NULL,
  timereq_name text,
  CONSTRAINT timereq PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE timereqid
  OWNER TO postgres;
-- Table: clientl

-- DROP TABLE clientl;

CREATE TABLE clientl
(
  id integer NOT NULL,
  "Device" integer NOT NULL,
  "State_id" integer NOT NULL,
  "DateInv" date,
  "Region_id" integer,
  "Airline_id" integer,
  "Destination_id" integer,
  "Route_id" integer,
  "Fare" integer,
  "Price" integer,
  "FOP_id" integer,
  "Class_id" integer,
  "Cost Centre" text,
  "Client billcode" text,
  "RST" text,
  "Employee ID" text,
  "MSP" text,
  "Department code" text,
  "APN" text,
  "Business trip order" text,
  "Purchase order" text,
  "CCT" text,
  "EMP" text,
  "DPT" text,
  "Project code" text,
  "e-mail customer" text,
  "TST" text,
  "ID_id" integer,
  timereq_id integer,
  onlineoffline_id integer,
  costcenter_id integer,
  pbu_id integer,
  acreqpersonid_id integer,
  personalid_id integer,
  division_id integer,
  purposeofthetrip text,
  passenger_id integer,
  CONSTRAINT airline_key FOREIGN KEY ("Airline_id")
      REFERENCES "Airline" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT class_forn_key FOREIGN KEY ("Class_id")
      REFERENCES "Class" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientc_for_state FOREIGN KEY ("State_id")
      REFERENCES "State" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_cal FOREIGN KEY ("DateInv")
      REFERENCES calendar (date) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_pass FOREIGN KEY (passenger_id)
      REFERENCES passengers (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_acreqpersonid FOREIGN KEY (acreqpersonid_id)
      REFERENCES acreqpersonid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_costcenter FOREIGN KEY (costcenter_id)
      REFERENCES cost_center (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_division FOREIGN KEY (division_id)
      REFERENCES division (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_onlineoffline FOREIGN KEY (onlineoffline_id)
      REFERENCES online_offline (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_pbu FOREIGN KEY (pbu_id)
      REFERENCES pbu (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_personalid FOREIGN KEY (personalid_id)
      REFERENCES personalid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_timereqid FOREIGN KEY (timereq_id)
      REFERENCES timereqid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT dest_forn_id FOREIGN KEY ("Destination_id")
      REFERENCES "Destination" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fop_key_foreign FOREIGN KEY ("FOP_id")
      REFERENCES fop_id (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT reg_forn_key FOREIGN KEY ("Region_id")
      REFERENCES "Region" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT route_forn_key FOREIGN KEY ("Route_id")
      REFERENCES "Route" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE clientl
  OWNER TO postgres;

-- Index: fki_clientc_for_state

-- DROP INDEX fki_clientc_for_state;

CREATE INDEX fki_clientc_for_state
  ON clientl
  USING btree
  ("State_id");

-- Index: fki_clientl_data

-- DROP INDEX fki_clientl_data;

CREATE INDEX fki_clientl_data
  ON clientl
  USING btree
  ("DateInv");

-- Index: fki_clientl_pass

-- DROP INDEX fki_clientl_pass;

CREATE INDEX fki_clientl_pass
  ON clientl
  USING btree
  (passenger_id);

-- Index: fki_clientp_acreqpersonid

-- DROP INDEX fki_clientp_acreqpersonid;

CREATE INDEX fki_clientp_acreqpersonid
  ON clientl
  USING btree
  (acreqpersonid_id);

-- Index: fki_clientp_costcenter

-- DROP INDEX fki_clientp_costcenter;

CREATE INDEX fki_clientp_costcenter
  ON clientl
  USING btree
  (costcenter_id);

-- Index: fki_clientp_division

-- DROP INDEX fki_clientp_division;

CREATE INDEX fki_clientp_division
  ON clientl
  USING btree
  (division_id);

-- Index: fki_clientp_onlineoffline

-- DROP INDEX fki_clientp_onlineoffline;

CREATE INDEX fki_clientp_onlineoffline
  ON clientl
  USING btree
  (onlineoffline_id);

-- Index: fki_clientp_pbu

-- DROP INDEX fki_clientp_pbu;

CREATE INDEX fki_clientp_pbu
  ON clientl
  USING btree
  (pbu_id);

-- Index: fki_clientp_personalid

-- DROP INDEX fki_clientp_personalid;

CREATE INDEX fki_clientp_personalid
  ON clientl
  USING btree
  (personalid_id);

-- Index: fki_clientp_timereqid

-- DROP INDEX fki_clientp_timereqid;

CREATE INDEX fki_clientp_timereqid
  ON clientl
  USING btree
  (timereq_id);

-- Table: clientlru

-- DROP TABLE clientlru;

CREATE TABLE clientlru
(
  id integer NOT NULL,
  "Device" integer NOT NULL,
  "State_id" integer NOT NULL,
  "DateInv" date,
  "Region_id" integer,
  "Airline_id" integer,
  "Destination_id" integer,
  "Route_id" integer,
  "Fare" integer,
  "Price" integer,
  "FOP_id" integer,
  "Class_id" integer,
  "Cost Centre" text,
  "Client billcode" text,
  "RST" text,
  "Employee ID" text,
  "MSP" text,
  "Department code" text,
  "APN" text,
  "Business trip order" text,
  "Purchase order" text,
  "CCT" text,
  "EMP" text,
  "DPT" text,
  "Project code" text,
  "e-mail customer" text,
  "TST" text,
  "ID_id" integer,
  timereq_id integer,
  onlineoffline_id integer,
  costcenter_id integer,
  pbu_id integer,
  acreqpersonid_id integer,
  personalid_id integer,
  division_id integer,
  purposeofthetrip text,
  passenger_id integer,
  CONSTRAINT airline_key FOREIGN KEY ("Airline_id")
      REFERENCES "Airline" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT class_forn_key FOREIGN KEY ("Class_id")
      REFERENCES "Class" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientlru_clendrru FOREIGN KEY ("DateInv")
      REFERENCES calendarru ("Дата") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientlru_pass FOREIGN KEY (passenger_id)
      REFERENCES passengers (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientlru_regionru FOREIGN KEY ("Region_id")
      REFERENCES "RegionRu" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_acreqpersonid FOREIGN KEY (acreqpersonid_id)
      REFERENCES acreqpersonid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_costcenter FOREIGN KEY (costcenter_id)
      REFERENCES cost_center (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_division FOREIGN KEY (division_id)
      REFERENCES division (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_onlineoffline FOREIGN KEY (onlineoffline_id)
      REFERENCES online_offline (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_pbu FOREIGN KEY (pbu_id)
      REFERENCES pbu (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_personalid FOREIGN KEY (personalid_id)
      REFERENCES personalid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_timereqid FOREIGN KEY (timereq_id)
      REFERENCES timereqid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientpru_destinationru FOREIGN KEY ("Destination_id")
      REFERENCES "DestinationRu" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientpru_stateru FOREIGN KEY ("State_id")
      REFERENCES "StateRu" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fop_key_foreign FOREIGN KEY ("FOP_id")
      REFERENCES fop_id (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT route_forn_key FOREIGN KEY ("Route_id")
      REFERENCES "Route" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE clientlru
  OWNER TO postgres;

-- Index: fki_clientlru_data

-- DROP INDEX fki_clientlru_data;

CREATE INDEX fki_clientlru_data
  ON clientlru
  USING btree
  ("DateInv");

-- Index: fki_clientlru_pass

-- DROP INDEX fki_clientlru_pass;

CREATE INDEX fki_clientlru_pass
  ON clientlru
  USING btree
  (passenger_id);

-- Index: fki_clientlru_regionru

-- DROP INDEX fki_clientlru_regionru;

CREATE INDEX fki_clientlru_regionru
  ON clientlru
  USING btree
  ("Region_id");

-- Index: fki_clientpru_destinationru

-- DROP INDEX fki_clientpru_destinationru;

CREATE INDEX fki_clientpru_destinationru
  ON clientlru
  USING btree
  ("Destination_id");

-- Index: fki_clientpru_stateru

-- DROP INDEX fki_clientpru_stateru;

CREATE INDEX fki_clientpru_stateru
  ON clientlru
  USING btree
  ("State_id");

-- Table: clientp

-- DROP TABLE clientp;

CREATE TABLE clientp
(
  id integer NOT NULL,
  "Device" integer NOT NULL,
  "State_id" integer NOT NULL,
  "DateInv" date,
  "Region_id" integer,
  "Airline_id" integer,
  "Destination_id" integer,
  "Route_id" integer,
  "Fare" integer,
  "Price" integer,
  "FOP_id" integer,
  "Class_id" integer,
  "Time_req_id" text,
  "Division" text,
  "Cost Center" text,
  "PBU" text,
  "Client billcode" text,
  "RST" text,
  "AC REQ Person ID" text,
  "Personal ID" text,
  "MSP" text,
  "Department code" text,
  "APN" text,
  "Business trip order" text,
  "CCT" text,
  "EMP" text,
  "DPT" text,
  "Project code" text,
  "e-mail customer" text,
  "TST" text,
  "ID_id" integer,
  online_offline_id integer,
  cost_centre_id integer,
  employeeid_id integer,
  purposeofthetrip_id integer,
  purchaseorder_id integer,
  passenger_id integer,
  CONSTRAINT airline_key FOREIGN KEY ("Airline_id")
      REFERENCES "Airline" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT class_forn_key FOREIGN KEY ("Class_id")
      REFERENCES "Class" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientd_for_state FOREIGN KEY ("State_id")
      REFERENCES "State" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_forn_costcentre FOREIGN KEY (cost_centre_id)
      REFERENCES cost_centre (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_forn_employeeid FOREIGN KEY (employeeid_id)
      REFERENCES employeeid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_purchaseorder FOREIGN KEY (purchaseorder_id)
      REFERENCES purchaseorder (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_ron_onofline FOREIGN KEY (online_offline_id)
      REFERENCES online_offline (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_cal FOREIGN KEY ("DateInv")
      REFERENCES calendar (date) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_pass FOREIGN KEY (passenger_id)
      REFERENCES passengers (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientp_purposeofthetrip FOREIGN KEY (purposeofthetrip_id)
      REFERENCES purposeofthetrip (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT dest_forn_id FOREIGN KEY ("Destination_id")
      REFERENCES "Destination" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fop_key_foreign FOREIGN KEY ("FOP_id")
      REFERENCES fop_id (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT reg_forn_key FOREIGN KEY ("Region_id")
      REFERENCES "Region" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT route_forn_key FOREIGN KEY ("Route_id")
      REFERENCES "Route" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE clientp
  OWNER TO postgres;

-- Index: fki_clientd_for_state

-- DROP INDEX fki_clientd_for_state;

CREATE INDEX fki_clientd_for_state
  ON clientp
  USING btree
  ("State_id");

-- Index: fki_clientl_forn_costcentre

-- DROP INDEX fki_clientl_forn_costcentre;

CREATE INDEX fki_clientl_forn_costcentre
  ON clientp
  USING btree
  (cost_centre_id);

-- Index: fki_clientl_forn_employeeid

-- DROP INDEX fki_clientl_forn_employeeid;

CREATE INDEX fki_clientl_forn_employeeid
  ON clientp
  USING btree
  (employeeid_id);

-- Index: fki_clientl_purchaseorder

-- DROP INDEX fki_clientl_purchaseorder;

CREATE INDEX fki_clientl_purchaseorder
  ON clientp
  USING btree
  (purchaseorder_id);

-- Index: fki_clientl_ron_onofline

-- DROP INDEX fki_clientl_ron_onofline;

CREATE INDEX fki_clientl_ron_onofline
  ON clientp
  USING btree
  (online_offline_id);

-- Index: fki_clientp

-- DROP INDEX fki_clientp;

CREATE INDEX fki_clientp
  ON clientp
  USING btree
  ("DateInv");

-- Index: fki_clientp_pass

-- DROP INDEX fki_clientp_pass;

CREATE INDEX fki_clientp_pass
  ON clientp
  USING btree
  (passenger_id);

-- Index: fki_clientp_purposeofthetrip

-- DROP INDEX fki_clientp_purposeofthetrip;

CREATE INDEX fki_clientp_purposeofthetrip
  ON clientp
  USING btree
  (purposeofthetrip_id);

-- Table: clientpru

-- DROP TABLE clientpru;

CREATE TABLE clientpru
(
  id integer NOT NULL,
  "Device" integer NOT NULL,
  "State_id" integer NOT NULL,
  "DateInv" date,
  "Region_id" integer,
  "Airline_id" integer,
  "Destination_id" integer,
  "Route_id" integer,
  "Fare" integer,
  "Price" integer,
  "FOP_id" integer,
  "Class_id" integer,
  "Time_req_id" text,
  "Division" text,
  "Cost Center" text,
  "PBU" text,
  "Client billcode" text,
  "RST" text,
  "AC REQ Person ID" text,
  "Personal ID" text,
  "MSP" text,
  "Department code" text,
  "APN" text,
  "Business trip order" text,
  "CCT" text,
  "EMP" text,
  "DPT" text,
  "Project code" text,
  "e-mail customer" text,
  "TST" text,
  "ID_id" integer,
  online_offline_id integer,
  cost_centre_id integer,
  employeeid_id integer,
  purposeofthetrip_id integer,
  purchaseorder_id integer,
  passenger_id integer,
  CONSTRAINT airline_key FOREIGN KEY ("Airline_id")
      REFERENCES "Airline" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT class_forn_key FOREIGN KEY ("Class_id")
      REFERENCES "Class" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_forn_costcentre FOREIGN KEY (cost_centre_id)
      REFERENCES cost_centre (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_forn_employeeid FOREIGN KEY (employeeid_id)
      REFERENCES employeeid (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_purchaseorder FOREIGN KEY (purchaseorder_id)
      REFERENCES purchaseorder (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientl_ron_onofline FOREIGN KEY (online_offline_id)
      REFERENCES online_offline (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientlru_destinationru FOREIGN KEY ("Destination_id")
      REFERENCES "DestinationRu" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientlru_stateru FOREIGN KEY ("State_id")
      REFERENCES "StateRu" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientpru_calendarru FOREIGN KEY ("DateInv")
      REFERENCES calendarru ("Дата") MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientpru_pass FOREIGN KEY (passenger_id)
      REFERENCES passengers (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientpru_purposeofthetrip FOREIGN KEY (purposeofthetrip_id)
      REFERENCES purposeofthetrip (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clientpru_regionru FOREIGN KEY ("Region_id")
      REFERENCES "RegionRu" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fop_key_foreign FOREIGN KEY ("FOP_id")
      REFERENCES fop_id (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT route_forn_key FOREIGN KEY ("Route_id")
      REFERENCES "Route" (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE clientpru
  OWNER TO postgres;

-- Index: fki_clientlru_destinationru

-- DROP INDEX fki_clientlru_destinationru;

CREATE INDEX fki_clientlru_destinationru
  ON clientpru
  USING btree
  ("Destination_id");

-- Index: fki_clientlru_stateru

-- DROP INDEX fki_clientlru_stateru;

CREATE INDEX fki_clientlru_stateru
  ON clientpru
  USING btree
  ("State_id");

-- Index: fki_clientpru

-- DROP INDEX fki_clientpru;

CREATE INDEX fki_clientpru
  ON clientpru
  USING btree
  ("DateInv");

-- Index: fki_clientpru_pass

-- DROP INDEX fki_clientpru_pass;

CREATE INDEX fki_clientpru_pass
  ON clientpru
  USING btree
  (passenger_id);

-- Index: fki_clientpru_purposeofthetrip

-- DROP INDEX fki_clientpru_purposeofthetrip;

CREATE INDEX fki_clientpru_purposeofthetrip
  ON clientpru
  USING btree
  (purposeofthetrip_id);

-- Index: fki_clientpru_regionru

-- DROP INDEX fki_clientpru_regionru;

CREATE INDEX fki_clientpru_regionru
  ON clientpru
  USING btree
  ("Region_id");

