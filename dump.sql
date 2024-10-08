CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY SERIAL, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" TIMESTAMP NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2024-08-22 20:18:52.425831');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2024-08-22 20:18:52.447608');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2024-08-22 20:18:52.462066');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2024-08-22 20:18:52.478052');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2024-08-22 20:18:52.487058');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2024-08-22 20:18:52.510277');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2024-08-22 20:18:52.545538');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2024-08-22 20:18:52.557826');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2024-08-22 20:18:52.565664');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2024-08-22 20:18:52.579492');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2024-08-22 20:18:52.581186');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2024-08-22 20:18:52.593417');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2024-08-22 20:18:52.609244');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2024-08-22 20:18:52.622654');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2024-08-22 20:18:52.637214');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2024-08-22 20:18:52.649682');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2024-08-22 20:18:52.665737');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2024-08-22 20:18:52.673627');
INSERT INTO django_migrations VALUES(19,'customers','0001_initial','2024-08-23 18:39:50.447370');
INSERT INTO django_migrations VALUES(20,'books','0001_initial','2024-08-23 19:09:29.721618');
INSERT INTO django_migrations VALUES(21,'sales','0001_initial','2024-08-23 19:09:29.727690');
INSERT INTO django_migrations VALUES(22,'salespersons','0001_initial','2024-08-23 19:09:29.736564');
INSERT INTO django_migrations VALUES(23,'books','0002_book_author_name_book_book_type_book_genre_and_more','2024-08-23 20:48:11.317834');
INSERT INTO django_migrations VALUES(24,'customers','0002_customer_pic','2024-08-26 23:04:18.952408');
INSERT INTO django_migrations VALUES(25,'books','0003_book_pic','2024-08-26 23:29:09.123828');
INSERT INTO django_migrations VALUES(26,'sales','0002_alter_sale_id','2024-09-06 18:33:40.014624');
INSERT INTO django_migrations VALUES(27,'sales','0003_alter_sale_date_created_alter_sale_id','2024-09-06 18:35:28.250497');
INSERT INTO django_migrations VALUES(28,'sales','0004_rename_date_created_sale_created_at_alter_sale_price_and_more','2024-09-16 18:46:22.133582');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY SERIAL, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY SERIAL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY SERIAL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY SERIAL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" TIMESTAMP NOT NULL);
INSERT INTO django_admin_log VALUES(1,'1','Test Customer',1,'[{"added": {}}]',7,1,'2024-08-23 18:41:59.153084');
INSERT INTO django_admin_log VALUES(2,'1','Test Customer',2,'[]',7,1,'2024-08-26 23:06:26.984664');
INSERT INTO django_admin_log VALUES(3,'1','Test Customer',2,'[]',7,1,'2024-08-26 23:06:46.610294');
INSERT INTO django_admin_log VALUES(4,'1','Test Customer',2,'[{"changed": {"fields": ["Pic"]}}]',7,1,'2024-08-26 23:08:55.254444');
INSERT INTO django_admin_log VALUES(5,'1','Pride and Prejudice',1,'[{"added": {}}]',8,1,'2024-08-26 23:37:58.460341');
INSERT INTO django_admin_log VALUES(6,'1','Pride and Prejudice',2,'[]',8,1,'2024-08-26 23:38:02.478943');
INSERT INTO django_admin_log VALUES(7,'1','Pride and Prejudice',2,'[{"changed": {"fields": ["Pic"]}}]',8,1,'2024-08-26 23:45:51.540071');
INSERT INTO django_admin_log VALUES(8,'2','Lord of the Rings',1,'[{"added": {}}]',8,1,'2024-08-27 00:14:23.364397');
INSERT INTO django_admin_log VALUES(9,'2','Lord of the Rings',2,'[{"changed": {"fields": ["Pic"]}}]',8,1,'2024-08-27 00:14:33.307571');
INSERT INTO django_admin_log VALUES(10,'1','ajsorbello',2,'[{"changed": {"fields": ["First name", "Last name"]}}]',4,1,'2024-08-30 19:08:32.704986');
INSERT INTO django_admin_log VALUES(11,'1','id: 1, book: Pride and Prejudice, quantity: 10',1,'[{"added": {}}]',9,1,'2024-09-06 19:25:26.045038');
INSERT INTO django_admin_log VALUES(12,'2','id: 2, book: Lord of the Rings, quantity: 10',1,'[{"added": {}}]',9,1,'2024-09-06 19:25:37.858271');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY SERIAL, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'customers','customer');
INSERT INTO django_content_type VALUES(8,'books','book');
INSERT INTO django_content_type VALUES(9,'sales','sale');
INSERT INTO django_content_type VALUES(10,'salespersons','salesperson');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY SERIAL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_customer','Can add customer');
INSERT INTO auth_permission VALUES(26,7,'change_customer','Can change customer');
INSERT INTO auth_permission VALUES(27,7,'delete_customer','Can delete customer');
INSERT INTO auth_permission VALUES(28,7,'view_customer','Can view customer');
INSERT INTO auth_permission VALUES(29,8,'add_book','Can add book');
INSERT INTO auth_permission VALUES(30,8,'change_book','Can change book');
INSERT INTO auth_permission VALUES(31,8,'delete_book','Can delete book');
INSERT INTO auth_permission VALUES(32,8,'view_book','Can view book');
INSERT INTO auth_permission VALUES(33,9,'add_sale','Can add sale');
INSERT INTO auth_permission VALUES(34,9,'change_sale','Can change sale');
INSERT INTO auth_permission VALUES(35,9,'delete_sale','Can delete sale');
INSERT INTO auth_permission VALUES(36,9,'view_sale','Can view sale');
INSERT INTO auth_permission VALUES(37,10,'add_salesperson','Can add salesperson');
INSERT INTO auth_permission VALUES(38,10,'change_salesperson','Can change salesperson');
INSERT INTO auth_permission VALUES(39,10,'delete_salesperson','Can delete salesperson');
INSERT INTO auth_permission VALUES(40,10,'view_salesperson','Can view salesperson');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY SERIAL, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY SERIAL, "password" varchar(128) NOT NULL, "last_login" TIMESTAMP NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" TIMESTAMP NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$870000$ZlyWhrOvma4iQuhM476QZn$4OPLX1ZonRpNpoX0kIRV5jzJ0p11MLucHBhI12yowrQ=','2024-09-17 17:05:45.330061',1,'ajsorbello','Sorbello','ajsorbello@gmail.com',1,1,'2024-08-22 20:23:37','AJ');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" TIMESTAMP NOT NULL);
INSERT INTO django_session VALUES('b0an14gv4avoy7y3enx2ayu7pveqrd82','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1shEMg:4X5hD0SV44MUcjUU9jSOGO4QcFjNxQNoOEMZoI3tuvA','2024-09-05 20:25:02.991445');
INSERT INTO django_session VALUES('84nxnxka9pt348inwk8iw3duno5suxim','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1shZDM:DJGCHW79h1NLzYB3RcPFTcYLDvcxrd43NAnUg-eoAk0','2024-09-06 18:40:48.286816');
INSERT INTO django_session VALUES('0tbivv5u58cpqga7lqa2mxjp92wb7hpc','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1siiln:MWa4EsUFQnQ4H-u2EN3dFIXxVAzFfbSc3yuq-GW_7p8','2024-09-09 23:05:07.361715');
INSERT INTO django_session VALUES('gol6jzvdbr26bg9y80qyjbjvsaa0n9b6','e30:1smcPF:SdRoiKXjOwCgaeD7VcVzEv4lc4jKvMhi1G4DGA93UgQ','2024-09-20 17:05:57.501986');
INSERT INTO django_session VALUES('fv2mli4fa4zqz1cq2lh2xj1uwhxjvgqi','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1smeoq:T1PPDePOlqZEgBw0mT2nUpTGgFcAIg0-uWtEicGDGfM','2024-09-20 19:40:32.168488');
INSERT INTO django_session VALUES('obd67258cpmje4350tffqzlb7cd9xdvp','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1spDpB:-92ZE4U3pWR8iM65BBI3-Kz9TnFViejh732twCQIrsQ','2024-09-27 21:27:29.428919');
INSERT INTO django_session VALUES('f9h293m8pe0cuqrw78qacagja1oj7o32','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1sqILD:YuzrnQ6pi99rK6eNEtOljHi6Aai1xCLvyoLxg0naXo8','2024-09-30 20:28:59.034213');
INSERT INTO django_session VALUES('ww6yz0vl9wbgmirlloi1bltfodfiujhd','.eJxVjEEOgjAURO_StWmgv7-tLt1zBvLbKRY1kFBYGe-uJCx0O--9ealetrX0W81LP0JdVKtOv1uU9MjTDnCX6TbrNE_rMka9K_qgVXcz8vN6uH8HRWr51hSSeOeZM589oncgawwDgRsHbhEM0zBY2EaSoQGUSYwT8rAWPqv3B8-3N6w:1sqJID:LSJuCruxrqyHa6eibKjJIpi-bqU2pIKkuaVBsVlFDZc','2024-09-30 21:29:57.570108');
INSERT INTO django_session VALUES('dctdthupfz4r5zyugjw3ljffc7sy2r9s','.eJxVjEsOAiEQBe_C2hAYoGlcuvcMpGlARg2TzGdlvLtOMgvdvqp6LxFpW1vcljLHMYuz0OL0uyXiR-k7yHfqt0ny1Nd5THJX5EEXeZ1yeV4O9--g0dK-tQdm54GIg_IMZCoGhxmSrUhWVTPYbKoGX0H57JApUBgQAEljsVq8P-SaN5I:1sqbe5:7zWCrmWCM0UU6iXNqmLm7AFCfaffaVqlkbisTe2aIK8','2024-10-01 17:05:45.338591');
CREATE TABLE IF NOT EXISTS "salespersons_salesperson" ("id" integer NOT NULL PRIMARY KEY SERIAL, "bio" text NOT NULL, "username_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "customers_customer" ("id" integer NOT NULL PRIMARY KEY SERIAL, "name" varchar(120) NOT NULL, "notes" text NOT NULL, "pic" varchar(100) NOT NULL);
INSERT INTO customers_customer VALUES(1,'Test Customer','1st customer','customers/129421295_l_normal_none.jpg');
CREATE TABLE IF NOT EXISTS "books_book" ("id" integer NOT NULL PRIMARY KEY SERIAL, "name" varchar(120) NOT NULL, "author_name" varchar(120) NOT NULL, "book_type" varchar(12) NOT NULL, "genre" varchar(12) NOT NULL, "price" real NOT NULL, "pic" varchar(100) NOT NULL);
INSERT INTO books_book VALUES(1,'Pride and Prejudice','Jane Austen','hardcover','classic',23.710000000000000853,'books/pride_and_prejudice.jpg');
INSERT INTO books_book VALUES(2,'Lord of the Rings','J.R.R. Tolkien','hardcover','classic',47.0,'books/LOFTR.jpg');
CREATE TABLE IF NOT EXISTS "sales_sale" ("id" integer NOT NULL PRIMARY KEY SERIAL, "price" decimal NOT NULL, "book_id" bigint NOT NULL REFERENCES "books_book" ("id") DEFERRABLE INITIALLY DEFERRED, "created_at" TIMESTAMP NOT NULL, "quantity" integer NOT NULL);
INSERT INTO sales_sale VALUES(1,237.09999999999999431,1,'2024-09-06 19:25:26.041361',10);
INSERT INTO sales_sale VALUES(2,470,2,'2024-09-06 19:25:37.856915',10);
INSERT INTO sqlite_sequence VALUES('django_migrations',28);
INSERT INTO sqlite_sequence VALUES('django_admin_log',12);
INSERT INTO sqlite_sequence VALUES('django_content_type',10);
INSERT INTO sqlite_sequence VALUES('auth_permission',40);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('customers_customer',1);
INSERT INTO sqlite_sequence VALUES('books_book',2);
INSERT INTO sqlite_sequence VALUES('sales_sale',2);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "sales_sale_book_id_9895f161" ON "sales_sale" ("book_id");

