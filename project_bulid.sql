CREATE TABLE categories(
    CatId BIGSERIAL NOT NULL PRIMARY KEY,
    Cat_Name VARCHAR(200) NOT NULL,
    Cat_Description VARCHAR(500) NULL,
    Cat_Active VARCHAR(1) NOT NULL DEFAULT 'N',
    Cat_Date_Active TIMESTAMP WITH TIME ZONE NULL,
    Cat_Deactive_Date TIMESTAMP WITH TIME ZONE NULL,
    Create_Date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    Create_By VARCHAR(100) NOT NULL,
    Effect_Date TIMESTAMP WITH TIME ZONE NULL,
    Effect_By VARCHAR(100) NULL
);

CREATE TABLE subcategories(
        SubCatId BIGSERIAL NOT NULL PRIMARY KEY,
        SubCat_Name VARCHAR(100) NOT NULL,
        SubCat_Description VARCHAR(500) NULL,
        SubCat_Active VARCHAR(1) NOT NULL DEFAULT 'N',
        SubCat_Date_Active TIMESTAMP WITH TIME ZONE NULL,
        SubCat_Deactive_Date TIMESTAMP WITH TIME ZONE NULL,
        Create_Date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        Create_By VARCHAR(100) NOT NULL,
        Effect_Date TIMESTAMP WITH TIME ZONE NULL,
        Effect_By VARCHAR(100) NULL,
        CatId BIGINT REFERENCES categories(CatId) 
);

CREATE TABLE products(
    ProdId BIGSERIAL NOT NULL PRIMARY KEY,
    Prod_Name VARCHAR(200) NOT NULL,
    Prod_Description VARCHAR(500) NULL,
    Prod_Active VARCHAR(1) NOT NULL DEFAULT 'N',
    Prod_Deactive_Date TIMESTAMP WITH TIME ZONE NULL,
    Create_Date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    Create_By VARCHAR(100) NOT NULL,
    Effect_Date TIMESTAMP WITH TIME ZONE NULL,
    Effect_By VARCHAR(100) NULL,
    SubCatId BIGINT REFERENCES subcategories(SubCatId)
);

CREATE TABLE productitems(
    ProdItemId BIGSERIAL NOT NULL PRIMARY KEY,
    ProdItem_Name VARCHAR(50) NOT NULL,
    ProdItem_Description VARCHAR(100) NOT NULL,
    ProdItem_Active VARCHAR(1) NOT NULL DEFAULT 'N',
    ProdItem_Deactive_Date TIMESTAMP WITH TIME ZONE NULL,
    ProdItem_Image VARCHAR(500) NULL,
    Create_Date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    Create_By VARCHAR(100) NOT NULL,
    Effect_Date TIMESTAMP WITH TIME ZONE NULL,
    Effect_By VARCHAR(100) NULL,
    ProdId BIGINT REFERENCES products(ProdId)

);


INSERT INTO categories (Cat_Name,Cat_Description,Cat_Active,Cat_Date_Active,Create_By)
VALUES('SHOES','This is an Medicines for Physicist.','Y',CURRENT_TIMESTAMP,'Admin');

INSERT INTO categories (Cat_Name,Cat_Description,Cat_Active,Cat_Date_Active,Create_By)
VALUES('FOODS','Variety of Different Foods','Y',CURRENT_TIMESTAMP,'Admin');

INSERT INTO categories (Cat_Name,Cat_Description,Cat_Active,Cat_Date_Active,Create_By)
VALUES('CLOTHES','WARNING: NOT FOR ENGINEERS','Y',CURRENT_TIMESTAMP,'Admin');

INSERT INTO categories (Cat_Name,Cat_Description,Cat_Active,Cat_Date_Active,Create_By)
VALUES('DRINKS','WARNING: NOT FOR ENGINEERS','Y',CURRENT_TIMESTAMP,'Admin');


INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SANDLES','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 1);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SLIPPERS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 1);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('BOOTS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 1);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SNEAKERS','WARNING: DONT GIVE TO ENGINEERS','Y', CURRENT_TIMESTAMP , 'Admin' , 1);


INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('PIZZA','WARNING: DONT GIVE TO ENGINEERS','Y',CURRENT_TIMESTAMP , 'Admin' , 2);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('BURGERS','WARNING: DONT GIVE TO ENGINEERS','Y', CURRENT_TIMESTAMP , 'Admin' , 2);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('VEGETABLE','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 2);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('FRUITS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 2);

INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('FIZZY DRINKS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 3);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SPARKLING DRINKS','WARNING: DONT GIVE TO ENGINEERS','Y', CURRENT_TIMESTAMP , 'Admin' , 3);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SPRING DRINKS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 3);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('MIXED DRINKS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 3);

INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SUITS','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 4);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('SPORTS WEAR','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 4);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('CLOWN WEAR','WARNING: DONT GIVE TO ENGINEERS','Y', CURRENT_TIMESTAMP , 'Admin' , 4);
INSERT INTO subcategories (SubCat_Name,SubCat_Description, SubCat_Active, SubCat_Date_Active, Create_By , CatId)
VALUES('MIXED CLOTHES','WARNING: DONT GIVE TO ENGINEERS','Y' ,CURRENT_TIMESTAMP , 'Admin' , 4);



INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By, SubCatId)
VALUES ('BUNDLE SANDLES 1' , 'SANDLES WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',1);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SANDLES 2' , 'SANDLES WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',1);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SANDLES 3' , 'SANDLES WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',1);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SANDLES 4' , 'SANDLES WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',1);


INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SLIPPERS 1' , 'SLIPPERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',2);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SLIPPERS 2' , 'SLIPPERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',2);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SLIPPERS 3' , 'SLIPPERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',2);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SLIPPERS 4' , 'SLIPPERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',2);


INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BOOTS 1' , 'BOOTS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',3);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BOOTS 2' , 'BOOTS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',3);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BOOTS 3' , 'BOOTS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',3);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BOOTS 4' , 'BOOTS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',3);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SNEAKERS 1' , 'SNEAKERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',4);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SNEAKERS 2' , 'SNEAKERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',4);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SNEAKERS 3' , 'SNEAKERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',4);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SNEAKERS 4' , 'SNEAKERS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',4);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE PIZZA MEAL 1' , 'PIZZA WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',5);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE PIZZA MEAL 2' , 'PIZZA WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',5);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE PIZZA MEAL 3' , 'PIZZA WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',5);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE PIZZA MEAL 4' , 'PIZZA WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',5);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BURGER MEAL 1' , 'BURGER WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',6);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BURGER MEAL 2' , 'BURGER WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',6);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BURGER MEAL 3' , 'BURGER WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',6);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE BURGER MEAL 4' , 'BURGER WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',6);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE VEGETABLE MEAL 1' , 'VEGETABLE WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',7);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE VEGETABLE MEAL 2' , 'VEGETABLE WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',7);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE VEGETABLE MEAL 3' , 'VEGETABLE WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',7);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE VEGETABLE MEAL 4' , 'VEGETABLE WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',7);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE FRUITS MEAL 1' , 'FRUITS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',8);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE FRUITS MEAL 2' , 'FRUITS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',8);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE FRUITS MEAL 3' , 'FRUITS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',8);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE FRUITS MEAL 4' , 'FRUITS WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',8);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SUIT 1' , 'SUIT WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',13);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SUIT 2' , 'SUIT WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',13);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SUIT 3' , 'SUIT WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',13);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SUIT 4' , 'SUIT WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',13);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SPORT WEAR 1' , 'SPORT WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',14);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SPORT WEAR 2' , 'SPORT WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',14);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SPORT WEAR 3' , 'SPORT WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',14);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE SPORT WEAR 4' , 'SPORT WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',14);

INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE CLOWN WEAR 1' , 'CLOWN WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',15);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE CLOWN WEAR 2' , 'CLOWN WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',15);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE CLOWN WEAR 3' , 'CLOWN WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',15);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE CLOWN WEAR 4' , 'CLOWN WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',15);


INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE MIXED WEAR 1' , 'MIXED WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',16);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE MIXED WEAR 2' , 'MIXED WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',16);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE MIXED WEAR 3' , 'MIXED WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',16);
INSERT INTO products (Prod_Name , Prod_Description , Prod_Active , Create_Date , Create_By,SubCatId)
VALUES ('BUNDLE MIXED WEAR 4' , 'MIXED WEAR WITH EXTRA STUFF' , 'Y' , CURRENT_TIMESTAMP , 'Admin',16);




INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 1','Y', CURRENT_TIMESTAMP , 'Admin',1);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',1);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',1);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',1);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',2);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',2);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',2);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',2);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',3);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',3);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',3);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',3);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',4);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',4);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',4);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SANDLES 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SANDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',4);



INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 1','Y',CURRENT_TIMESTAMP , 'Admin',5);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 1','Y',CURRENT_TIMESTAMP , 'Admin',5);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 1','Y',CURRENT_TIMESTAMP , 'Admin',5);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 1','Y',CURRENT_TIMESTAMP , 'Admin',5);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 2','Y',CURRENT_TIMESTAMP , 'Admin',6);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 2','Y',CURRENT_TIMESTAMP , 'Admin',6);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 2','Y',CURRENT_TIMESTAMP , 'Admin',6);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 2','Y',CURRENT_TIMESTAMP , 'Admin',6);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 3','Y',CURRENT_TIMESTAMP , 'Admin',7);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 3','Y',CURRENT_TIMESTAMP , 'Admin',7);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 3','Y',CURRENT_TIMESTAMP , 'Admin',7);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 3','Y',CURRENT_TIMESTAMP , 'Admin',7);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 4','Y',CURRENT_TIMESTAMP , 'Admin',8);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 4','Y',CURRENT_TIMESTAMP , 'Admin',8);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 4','Y',CURRENT_TIMESTAMP , 'Admin',8);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM SLIPPERS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SLIPPERS 4','Y',CURRENT_TIMESTAMP , 'Admin',8);


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 1','Y',CURRENT_TIMESTAMP , 'Admin',9);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 1','Y',CURRENT_TIMESTAMP , 'Admin',9);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 1','Y',CURRENT_TIMESTAMP , 'Admin',9);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 1','Y',CURRENT_TIMESTAMP , 'Admin',9);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 2','Y',CURRENT_TIMESTAMP , 'Admin',10);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 2','Y',CURRENT_TIMESTAMP , 'Admin',10);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 2','Y',CURRENT_TIMESTAMP , 'Admin',10);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 2','Y',CURRENT_TIMESTAMP , 'Admin',10);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 3','Y',CURRENT_TIMESTAMP , 'Admin',11);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 3','Y',CURRENT_TIMESTAMP , 'Admin',11);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 3','Y',CURRENT_TIMESTAMP , 'Admin',11);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 3','Y',CURRENT_TIMESTAMP , 'Admin',11);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 4','Y',CURRENT_TIMESTAMP , 'Admin',12);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 4','Y',CURRENT_TIMESTAMP , 'Admin',12);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 4','Y',CURRENT_TIMESTAMP , 'Admin',12);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM BOOTS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE BOOTS 4','Y',CURRENT_TIMESTAMP , 'Admin',12);


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 1','Y',CURRENT_TIMESTAMP , 'Admin',13);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 1','Y',CURRENT_TIMESTAMP , 'Admin',13);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 1','Y',CURRENT_TIMESTAMP , 'Admin',13);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 1','Y',CURRENT_TIMESTAMP , 'Admin',13);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 2','Y',CURRENT_TIMESTAMP , 'Admin',14);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 2','Y',CURRENT_TIMESTAMP , 'Admin',14);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 2','Y',CURRENT_TIMESTAMP , 'Admin',14);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 2','Y',CURRENT_TIMESTAMP , 'Admin',14);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 3','Y',CURRENT_TIMESTAMP , 'Admin',15);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 3','Y',CURRENT_TIMESTAMP , 'Admin',15);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 3','Y',CURRENT_TIMESTAMP , 'Admin',15);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 3','Y',CURRENT_TIMESTAMP , 'Admin',15);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 4','Y',CURRENT_TIMESTAMP , 'Admin',16);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 4','Y',CURRENT_TIMESTAMP , 'Admin',16);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 4','Y',CURRENT_TIMESTAMP , 'Admin',16);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BUNDLE SNEAKERS 4','Y',CURRENT_TIMESTAMP , 'Admin',16);


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',17);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',17);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',17);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',17);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',18);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',18);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',18);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',18);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',19);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',19);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',19);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',19);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',20);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',20);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',20);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO PIZZA MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',20);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',21);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',21);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',21);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',21);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',22);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',22);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',22);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',22);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',23);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',23);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',23);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',23);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',24);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',24);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',24);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO BURGER MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',24);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',25);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',25);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',25);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',25);


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',26);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',26);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',26);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',26);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',27);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',27);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',27);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',27);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',28);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',28);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',28);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO VEGETABLE MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',28);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',29);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',29);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',29);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 1','Y',CURRENT_TIMESTAMP , 'Admin',29);


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',30);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',30);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',30);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 2','Y',CURRENT_TIMESTAMP , 'Admin',30);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',31);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',31);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',31);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 3','Y',CURRENT_TIMESTAMP , 'Admin',31);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',32);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',32);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',32);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO FRUITS MEAL 4','Y',CURRENT_TIMESTAMP , 'Admin',32);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('FIZZY DRINKS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO FIZZY DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('FIZZY DRINKS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO FIZZY DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('FIZZY DRINKS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO FIZZY DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('FIZZY DRINKS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO FIZZY DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPARKLING DRINKS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SPARKLING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPARKLING DRINKS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SPARKLING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPARKLING DRINKS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SPARKLING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPARKLING DRINKS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SPARKLING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPRING DRINKS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SPRING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPRING DRINKS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SPRING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPRING DRINKS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SPRING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('SPRING DRINKS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SPRING DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('MIXED DRINKS 1', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('MIXED DRINKS 2', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('MIXED DRINKS 3', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By)
VALUES ('MIXED DRINKS 4', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED DRINKS','Y',CURRENT_TIMESTAMP , 'Admin');


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',33);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',33);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',33);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',33);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',34);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',34);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',34);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',34);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',35);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',35);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',35);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',35);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);


INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SUITS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',36);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',37);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',37);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',37);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',37);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',38);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',38);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',38);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',38);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',39);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',39);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',39);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',39);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',40);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',40);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',40);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO SPORTS BUNDLE 4','Y', CURRENT_TIMESTAMP , 'Admin',40);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',41);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',41);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',41);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',41);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',42);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',42);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',42);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',42);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',43);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',43);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',43);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',43);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',44);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',44);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',44);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO CLOWN BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',44);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',45);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',45);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',45);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 1','Y',CURRENT_TIMESTAMP , 'Admin',45);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',46);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',46);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',46);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 2','Y',CURRENT_TIMESTAMP , 'Admin',46);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',47);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',47);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',47);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 3','Y',CURRENT_TIMESTAMP , 'Admin',47);

INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 1', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',48);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 2', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',48);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 3', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',48);
INSERT INTO productitems (ProdItem_Name , ProdItem_Description , ProdItem_Active , Create_Date , Create_By , ProdId)
VALUES ('INDIVIDUAL ITEM 4', 'ITEMS THAT ARE SOLD SEPERELTY TO MIXED BUNDLE 4','Y',CURRENT_TIMESTAMP , 'Admin',48);



















