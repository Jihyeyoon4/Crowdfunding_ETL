CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL PRIMARY KEY,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(200)   NOT NULL
);

CREATE TABLE "Category" (
    "category_id" varchar(50)   NOT NULL PRIMARY KEY,
    "category" varchar(50)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(50)   NOT NULL PRIMARY KEY,
    "subcategory" varchar(50)   NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL PRIMARY KEY,
    "contact_id" int   NOT NULL,
    "company_name" varchar(200)   NOT NULL,
    "description" varchar(200)   NOT NULL,
    "goal" float8   NOT NULL,
    "pledged" float8   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(50)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(50)   NOT NULL,
    "subcategory_id" varchar(50)   NOT NULL,
	FOREIGN KEY ("contact_id") REFERENCES Contacts("contact_id"),
	FOREIGN KEY ("category_id") REFERENCES Category("category_id"),
	FOREIGN KEY ("subcategory_id") REFERENCES Subcategory("subcategory_id")     
);


