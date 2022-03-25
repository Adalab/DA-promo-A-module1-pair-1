USE Northwind;

RENAME TABLE Categories TO categories;
ALTER TABLE categories,
RENAME COLUMN CategoryID TO category_id,
RENAME COLUMN  CategoryName TO category_name,
RENAME COLUMN  `Description` TO `description`,
RENAME COLUMN  Picture TO picture;

RENAME TABLE Customers TO customers;
ALTER TABLE Customers
RENAME COLUMN CustomerID TO customer_id,
RENAME COLUMN  CompanyName TO company_name,
RENAME COLUMN  ContactName TO contact_name,
RENAME COLUMN  ContactTitle TO contact_title,
RENAME COLUMN  Address TO address,
RENAME COLUMN City TO city,
RENAME COLUMN  Region TO region,
RENAME COLUMN  PostalCode TO postal_code,
RENAME COLUMN  Country TO country,
RENAME COLUMN Phone TO phone,
RENAME COLUMN  Fax TO fax;

RENAME TABLE CustomerCustomerDemo TO customercustomerdemo;
ALTER TABLE customercustomerdemo
RENAME COLUMN CustomerID TO customer_id,
RENAME COLUMN  CustomerTypeID TO customertype_id;

RENAME TABLE EmployeeTerritories TO employeeterritories;
ALTER TABLE employeeterritories
RENAME COLUMN EmployeeID TO employee_id,
RENAME COLUMN  TerritoryID TO territory_id;

RENAME TABLE CustomerDemographics TO customerdemographics;
ALTER TABLE CustomerDemographics
RENAME COLUMN CustomerTypeID TO customer_type_id,
RENAME COLUMN  CustomerDesc TO customer_desc;

RENAME TABLE Employees TO employees;
ALTER TABLE Employees
RENAME COLUMN EmployeeID TO employee_id,
RENAME COLUMN  LastName TO last_name,
RENAME COLUMN  FirstName TO first_name,
RENAME COLUMN  Title TO title,
RENAME COLUMN  TitleOfCourtesy TO title_of_courtesy,
RENAME COLUMN BirthDate TO birth_date,
RENAME COLUMN  HireDate TO hire_date,
RENAME COLUMN  Address TO address,
RENAME COLUMN  City TO city,
RENAME COLUMN Region TO region,
RENAME COLUMN  PostalCode TO postal_code,
RENAME COLUMN Country TO country,
RENAME COLUMN  HomePhone TO home_phone,
RENAME COLUMN  Extension TO extension,
RENAME COLUMN  Photo TO photo,
RENAME COLUMN Notes TO notes,
RENAME COLUMN  ReportsTo TO reports_to,
RENAME COLUMN PhotoPath TO photo_path;

ALTER TABLE OrderDetails
RENAME COLUMN OrderID TO order_id,
RENAME COLUMN  ProductID TO product_id,
RENAME COLUMN  UnitPrice TO unit_price,
RENAME COLUMN  Quantity TO quantity,
RENAME COLUMN  Discount TO discount;

ALTER TABLE Orders
RENAME COLUMN OrderID TO order_id,
RENAME COLUMN  CustomerID TO customer_id,
RENAME COLUMN  EmployeeID TO employee_id,
RENAME COLUMN  OrderDate TO order_date,
RENAME COLUMN  RequiredDate TO required_date,
RENAME COLUMN ShippedDate TO shipped_date,
RENAME COLUMN  ShipVia TO ship_via,
RENAME COLUMN  Freight TO freight,
RENAME COLUMN  ShipName TO ship_name,
RENAME COLUMN ShipAddress TO ship_address,
RENAME COLUMN  ShipCity TO ship_city,
RENAME COLUMN ShipRegion TO ship_region,
RENAME COLUMN  ShipPostalCode TO ship_postal_code,
RENAME COLUMN  ShipCountry TO ship_country;

RENAME TABLE Products TO products;
ALTER TABLE Products
RENAME COLUMN ProductID TO product_id,
RENAME COLUMN  ProductName TO product_name,
RENAME COLUMN  SupplierID TO supplier_id,
RENAME COLUMN  CategoryID TO category_id,
RENAME COLUMN  QuantityPerUnit TO quantity_per_unit,
RENAME COLUMN UnitPrice TO unit_price,
RENAME COLUMN  UnitsInStock TO units_in_stock,
RENAME COLUMN  UnitsOnOrder TO units_on_order,
RENAME COLUMN  ReorderLevel TO reorder_level,
RENAME COLUMN Discontinued TO discontinued;

RENAME TABLE Region TO region;
ALTER TABLE region
RENAME COLUMN RegionID TO region_id,
RENAME COLUMN  RegionDescription TO region_description;
RENAME TABLE Shippers TO shippers;

ALTER TABLE shippers
RENAME COLUMN ShipperID TO shipper_id,
RENAME COLUMN  CompanyName TO company_name,
RENAME COLUMN  Phone TO phone;

RENAME TABLE Suppliers TO suppliers;
ALTER TABLE Suppliers
RENAME COLUMN SupplierID TO supplier_id,
RENAME COLUMN  CompanyName TO company_name,
RENAME COLUMN  ContactName TO contact_name,
RENAME COLUMN  ContactTitle TO contact_title,
RENAME COLUMN  Address TO adress,
RENAME COLUMN City TO city,
RENAME COLUMN  Region TO region,
RENAME COLUMN  PostalCode TO postal_code,
RENAME COLUMN  Country TO country,
RENAME COLUMN Phone TO phone,
RENAME COLUMN  Fax TO fax,
RENAME COLUMN HomePage TO home_page;

RENAME TABLE Territories TO territories;
ALTER TABLE territories
RENAME COLUMN TerritoryID TO territory_id,
RENAME COLUMN  TerritoryDescription TO territory_description,
RENAME COLUMN RegionID TO region_id;