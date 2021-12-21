DROP DATABASE IF EXISTS webbanhang;
CREATE DATABASE webbanhang;
use webbanhang;

-- create tables
CREATE TABLE categories (
  category_id INT PRIMARY KEY ,
  category_name VARCHAR (255) NOT NULL
);

CREATE TABLE brands (
  brand_id INT  PRIMARY KEY ,
  brand_name VARCHAR (255) NOT NULL
);

CREATE TABLE products (
  product_id INT  PRIMARY KEY ,
  product_name VARCHAR (255) NOT NULL,
  brand_id INT NOT NULL,
  category_id INT NOT NULL,
  model_year SMALLINT NOT NULL,
  list_price varchar(20) NOT NULL,
  pic TEXT NOT NULL,
  mota text,
  FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO brands(brand_id,brand_name) VALUES(1,'Apple');
INSERT INTO brands(brand_id,brand_name) VALUES(2,'Samsung');
INSERT INTO brands(brand_id,brand_name) VALUES(3,'Xiaomi');
INSERT INTO brands(brand_id,brand_name) VALUES(4,'OPPO');
INSERT INTO brands(brand_id,brand_name) VALUES(5,'Dell');
INSERT INTO brands(brand_id,brand_name) VALUES(6,'HP');
INSERT INTO brands(brand_id,brand_name) VALUES(7,'Asus');

INSERT INTO categories(category_id,category_name) VALUES(1,'Phone');
INSERT INTO categories(category_id,category_name) VALUES(2,'Tablet');
INSERT INTO categories(category_id,category_name) VALUES(3,'Laptop');
INSERT INTO categories(category_id,category_name) VALUES(4,'Accessories');


INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 1, 'Iphone 12 Pro Max 512GB', 1, 1, 2020, '41.490.000 vnd', './images/1.jpg','Iphone 12 Pro Max 512GB được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 2, 'Iphone 12 Pro 512GB', 1, 1, 2020, '36.990.000 vnd', './images/2.jpg','Iphone 12 Pro 512GB được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 3, 'Iphone 12 128GB', 1, 1, 2020, '23.990.000 vnd', './images/3.jpg','Iphone 12 128GB được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 4, 'Iphone SE 256GB', 1, 1, 2020, '14.490.000 vnd', './images/4.jpg','Iphone SE 256GB được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 5, 'Iphone XR 128GB', 1, 1, 2019, '14.490.000 vnd', './images/5.jpg','Iphone XR 128GB được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 6, 'Iphone XR 128GB', 1, 1, 2019, '19.690.000 vnd', './images/6.jpg','Iphone XR 128GB được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 7, 'Samsung Galaxy S21+ 5G 256GB', 2, 1, 2020, '28.990.000 vnd', './images/7.jpg','Samsung Galaxy S21+ 5G 256GB được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 8, 'Samsung Galaxy S21 Ultra 5G 256GB', 2, 1, 2020, '33.990.000 vnd', './images/8.jpg','Samsung Galaxy S21 Ultra 5G 256GB được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 9, 'Samsung Galaxy Note 20 Ultra 5G', 2, 1, 2020, '23.990.000 vnd', './images/9.jpg','Samsung Galaxy Note 20 Ultra 5G được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 10, 'Samsung Galaxy Z Fold2 5G', 2, 1, 2020, '50.000.000 vnd', './images/10.jpg','Samsung Galaxy Z Fold2 5G được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 11, 'Samsung Galaxy A51 (8GB/128GB)', 2, 1, 2019, '8.390.000 vnd', './images/11.jpg','Samsung Galaxy A51 (8GB/128GB) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 12, 'Samsung Galaxy A21s (3GB/32GB)', 2, 1, 2019, '3.490.000 vnd', './images/12.jpg','Samsung Galaxy A21s (3GB/32GB) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 13, 'Xiaomi POCO X3 NFC', 3, 1, 2019, '5.990.000 vnd', './images/13.jpg','Xiaomi POCO X3 NFC được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 14, 'Xiaomi Mi 11 5G', 3, 1, 2020, '20.990.000 vnd', './images/14.jpg','Xiaomi Mi 11 5G được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 15, 'Xiaomi Redmi Note 10 (6GB/128GB)', 3, 1, 2020, '5.190.000 vnd', './images/15.jpg','Xiaomi Redmi Note 10 (6GB/128GB) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 16, 'Xiaomi Redmi 9C (3GB/64GB)', 3, 1, 2019, '2.790.000 vnd', './images/16.jpg','Xiaomi Redmi 9C (3GB/64GB) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 17, 'Xiaomi Redmi 9A', 3, 1, 2019, '1.990.000 vnd', './images/17.jpg','Xiaomi Redmi 9A được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 18, 'OPPO Reno5', 4, 1, 2020, '8.390.000 vnd', './images/18.jpg','OPPO Reno5 được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 19, 'OPPO Reno5 5G', 4, 1, 2020, '11.990.000 vnd', './images/19.jpg','OPPO Reno5 5G được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 20, 'OPPO A94', 4, 1, 2019, '11.990.000 vnd', './images/20.jpg','OPPO A94 được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 21, 'OPPO A15s', 4, 1, 2019, '3.990.000 vnd', './images/21.jpg','OPPO A15s được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 22, 'OPPO A12', 4, 1, 2019, '2.990.000 vnd', './images/22.jpg','OPPO A12 được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 23, 'iPad Air 4 Wifi 64GB (2020)', 1, 2, 2020, '25.190.000 vnd', './images/23.jpg','iPad Air 4 Wifi 64GB (2020) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 24, 'iPad Pro 11 inch Wifi Cellular 128GB (2020)', 1, 2, 2020, '25.190.000 vnd', './images/24.jpg','iPad Pro 11 inch Wifi Cellular 128GB (2020) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 25, 'iPad Air 4 Wifi Cellular 64GB (2020)', 1, 2, 2020, '20.190.000 vnd', './images/25.jpg','iPad Air 4 Wifi Cellular 64GB (2020) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 26, 'iPad Air 4 Wifi Cellular 256GB (2020)', 1, 2, 2020, '24.990.000 vnd', './images/26.jpg','iPad Air 4 Wifi Cellular 256GB (2020) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 27, 'iPad mini 7.9 inch Wifi 64GB (2019)', 1, 2, 2019, '10.990.000 vnd', './images/27.jpg','iPad mini 7.9 inch Wifi 64GB (2019) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 28, 'Samsung Galaxy Tab A7 (2020)', 2, 2, 2020, '7.390.000 vnd', './images/28.jpg','Samsung Galaxy Tab A7 (2020) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 29, 'Samsung Galaxy Tab S6 Lite', 2, 2, 2019, '9.090.000 vnd', './images/29.jpg','Samsung Galaxy Tab S6 Lite được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 30, 'Samsung Galaxy Tab A8 8" T295 (2019)', 2, 2, 2019, '3.690.000 vnd', './images/30.jpg','Samsung Galaxy Tab A8 8" T295 (2019) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 31, 'Samsung Galaxy Tab S7', 2, 2, 2020, '18.990.000 vnd', './images/31.jpg','Samsung Galaxy Tab S7 được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 32, 'Máy tính bảng Samsung Galaxy Tab with S Pen (P205)', 2, 2, 2019, '6.990.000 vnd', './images/32.jpg','Máy tính bảng Samsung Galaxy Tab with S Pen (P205) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 33, 'Laptop Apple Macbook Pro M1 2020/16GB/1TB SSD (Z11C000CJ)', 1, 3, 2020, '51.990.000 vnd', './images/33.jpg','Laptop Apple Macbook Pro M1 2020/16GB/1TB SSD (Z11C000CJ) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 34, 'MacBook Air M1 2020 256GB (MGN93SA/A)', 1, 3, 2020, '28.990.000 vnd', './images/34.jpg','MacBook Air M1 2020 256GB (MGN93SA/A) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 35, 'MacBook Air 2017 128GB (MQD32SA/A', 1, 3, 2017, '19.990.000 vnd', './images/35.jpg','MacBook Air 2017 128GB (MQD32SA/A được sản xuất 2017');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 36, 'MacBook Air M1 2020 8GB/512GB (MGNE3SA/A)', 1, 3, 2020, '34.990.000 vnd', './images/36.jpg','MacBook Air M1 2020 8GB/512GB (MGNE3SA/A) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 37, 'Dell Inspiron 7306 i5 1135G7 (N3I5202W)', 5, 3, 2020, '27.190.000 vnd', './images/37.jpg','Dell Inspiron 7306 i5 1135G7 (N3I5202W) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 38, 'Dell XPS 13 9310 i5 1135G7 (70234076)', 5, 3, 2020, '38.490.000 vnd', './images/38.jpg','Dell XPS 13 9310 i5 1135G7 (70234076) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 39, 'Dell Inspiron 7400 i5 1135G7 (N4I5206W)', 5, 3, 2020, '27.990.000 vnd', './images/39.jpg','Dell Inspiron 7400 i5 1135G7 (N4I5206W) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 40, 'Dell Vostro 5402 i5 1135G7 (V4I5003W)', 5, 3, 2019, '18.890.000 vnd', './images/40.jpg','Dell Vostro 5402 i5 1135G7 (V4I5003W) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 41, 'HP 14s dk1055AU R3 3250U (171K9PA)', 6, 3, 2019, '9.990.000 vnd', './images/41.jpg','HP 14s dk1055AU R3 3250U (171K9PA) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 42, 'HP 340s G7 i3 1005G1 (224L1PA)', 6, 3, 2020, '12.690.000 vnd', './images/42.jpg','HP 340s G7 i3 1005G1 (224L1PA) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 43, 'HP Pavilion 14 dv0010TU i5 1135G7 (2D7A9PA)', 6, 3, 2019, '19.090.000 vnd', './images/43.jpg','HP Pavilion 14 dv0010TU i5 1135G7 (2D7A9PA) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 44, 'Asus TUF Gaming FX516PM i7 11370H (HN023T)', 7, 3, 2020, '32.990.000 vnd', './images/44.jpg','Asus TUF Gaming FX516PM i7 11370H (HN023T) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 45, 'Asus Gaming Rog Strix G512 i5 10300H/144Hz (IAL013T)', 7, 3, 2020, '24.490.000 vnd', './images/45.jpg','Asus Gaming Rog Strix G512 i5 10300H/144Hz (IAL013T) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 46, 'Asus TUF Gaming FX506LH i5 10300H (HN002T)', 7, 3, 2019, '19.590.000 vnd', './images/46.jpg','Asus TUF Gaming FX506LH i5 10300H (HN002T) được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 47, 'Tai nghe Bluetooth AirPods 2 Apple MV7N2', 1, 4, 2019, '3.790.000 vnd', './images/47.jpg','Tai nghe Bluetooth AirPods 2 Apple MV7N2 được sản xuất 2019');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 48, 'Smart Keyboard iPad Pro 11 (MXNK2ZA/A)', 1, 4, 2020, '5.490.000 vnd', './images/48.jpg','Smart Keyboard iPad Pro 11 (MXNK2ZA/A) được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 49, 'Apple Watch Magnetic MU9K2', 1, 4, 2020, '790.000 vnd', './images/49.jpg','Apple Watch Magnetic MU9K2 được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 50, 'Tai nghe Bluetooth True Wireless Galaxy Buds Pro', 2, 4, 2020, '4.990.000 vnd', './images/50.jpg','Tai nghe Bluetooth True Wireless Galaxy Buds Pro được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 51, 'Bao da Galaxy Note 20 Samsung', 2, 4, 2020, '1.500.000 vnd', './images/51.jpg','Bao da Galaxy Note 20 Samsung được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 52, 'Polymer 20.000mAh Type C PD 25W Samsung EB-P5300', 2, 4, 2020, '1.500.000 vnd', './images/52.jpg','Polymer 20.000mAh Type C PD 25W Samsung EB-P5300 được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 53, 'Tai nghe Bluetooth True Wireless Xiaomi Earbuds Basic 2 BHR4272GL', 3, 4, 2020, '790.000 vnd', './images/53.jpg','Tai nghe Bluetooth True Wireless Xiaomi Earbuds Basic 2 BHR4272GL được sản xuất 2020');

INSERT INTO products(product_id, product_name, brand_id, category_id, model_year, list_price, pic, mota) VALUES( 54, 'Xiaomi VXN4286GL', 3, 4, 2020, '341.000 vnd', './images/54.jpg','Xiaomi VXN4286GL được sản xuất 2020');

