CREATE TABLE fields(
  "field_id" INTEGER PRIMARY KEY,
  "title" TEXT,
  "availability" INTEGER,
  "stability" INTEGER,
  "private" INTEGER,
  "value_type_id" INTEGER, /* In the original table this column is called "value_type" */
  "base_type" INTEGER,
  "item_type" INTEGER,
  "strata" INTEGER,
  "instanced" INTEGER,
  "arrayed" INTEGER,
  "sexed" INTEGER,
  "units" TEXT,
  "main_category" INTEGER,
  "encoding_id" INTEGER,
  "instance_id" INTEGER,
  "instance_min" INTEGER,
  "instance_max" INTEGER,
  "array_min" INTEGER,
  "array_max" INTEGER,
  "notes" TEXT,
  "debut" DATE,
  "version" DATE,
  "num_participants" INTEGER,
  "item_count" INTEGER,
  "showcase_order" INTEGER
);
CREATE TABLE encodings(
  "encoding_id" INTEGER PRIMARY KEY,
  "title" TEXT,
  "availability" INTEGER,
  "value_type_id" INTEGER, /* In the original table this column is called "coded_as" */
  "structure" INTEGER,
  "num_members" INTEGER,
  "descript" TEXT
);
CREATE TABLE categories(
  "category_id" INTEGER PRIMARY KEY,
  "title" TEXT,
  "availability" INTEGER,
  "group_type" INTEGER,
  "descript" TEXT,
  "notes" TEXT
);
CREATE TABLE archives(
  "archive_id" INTEGER PRIMARY KEY,
  "application_id" INTEGER,
  "title" TEXT,
  "availability" INTEGER,
  "personal" INTEGER,
  "notes" TEXT
);
CREATE TABLE esimpint(
  "encoding_id" INTEGER,
  "value" INTEGER,
  "meaning" TEXT,
  "showcase_order" INTEGER,
  PRIMARY KEY ("encoding_id", "value")
);
CREATE TABLE esimpstring(
  "encoding_id" INTEGER,
  "value" TEXT,
  "meaning" TEXT,
  "showcase_order" INTEGER,
  PRIMARY KEY ("encoding_id", "value")
);
CREATE TABLE esimpreal(
  "encoding_id" INTEGER,
  "value" INTEGER,
  "meaning" TEXT,
  "showcase_order" INTEGER,
  PRIMARY KEY ("encoding_id", "value")
);
CREATE TABLE esimpdate(
  "encoding_id" TEXT,
  "value" TEXT,
  "meaning" TEXT,
  "showcase_order" INTEGER,
  PRIMARY KEY ("encoding_id", "value")
);
CREATE TABLE instances(
  "instance_id" INTEGER PRIMARY KEY,
  "descript" TEXT,
  "num_members" INTEGER
);
CREATE TABLE insvalues(
  "instance_id" INTEGER,
  "index" INTEGER,
  "title" TEXT,
  "descript" TEXT,
  PRIMARY KEY ("instance_id", "index")
);
CREATE TABLE ehierint(
  "encoding_id" INTEGER,
  "code_id" INTEGER,
  "parent_id" INTEGER,
  "value" INTEGER,
  "meaning" TEXT,
  "selectable" INTEGER,
  "showcase_order" INTEGER,
  PRIMARY KEY ("encoding_id", "code_id")
);
CREATE TABLE ehierstring(
  "encoding_id" INTEGER,
  "code_id" INTEGER,
  "parent_id" INTEGER,
  "value" TEXT,
  "meaning" TEXT,
  "selectable" INTEGER,
  "showcase_order" INTEGER,
  PRIMARY KEY ("encoding_id", "code_id")
);
CREATE TABLE catbrowse(
  "parent_id" INTEGER,
  "child_id" INTEGER PRIMARY KEY,
  "showcase_order" INTEGER
);
CREATE TABLE recommended(
  "category_id" INTEGER,
  "field_id" INTEGER
);
