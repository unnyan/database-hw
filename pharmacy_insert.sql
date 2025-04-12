INSERT INTO categories (name) VALUES
  ('Obezbolivayushchie'),
  ('Zharoponizhayushchie'),
  ('Protivovospalitelnye'),
  ('Antibiotiki'),
  ('Protivovirusnye'),
  ('Antigistaminnye'),
  ('Serdechno-sosudistye'),
  ('Gormonalnye'),
  ('Protivodiabeticheskie'),
  ('Protivosudorozhnye'),
  ('Antipsikhoticheskie'),
  ('Antidepressanty'),
  ('Protivoyazvennye'),
  ('Bronkholitiki'),
  ('Diuretiki');

INSERT INTO medications (name, dosage_form, dosage, expiration_date, current_price, stock_quantity) VALUES
  ('Nurofen', 'Tabletki', '200 mg', '01.01.2026', 120.5, 100),
  ('Analgin', 'Tabletki', '500 mg', '15.03.2025', 45.0, 200),
  ('Paracetamol', 'Tabletki', '500 mg', '20.05.2026', 60.0, 150),
  ('Ibuprofen', 'Kapsuly', '400 mg', '12.12.2025', 90.0, 120),
  ('Citramon', 'Tabletki', '240 mg', '01.07.2026', 75.0, 180),
  ('Aspirin', 'Tabletki', '500 mg', '01.09.2025', 55.0, 90),
  ('Amoksiklav', 'Tabletki', '875 mg', '10.11.2025', 300.0, 60),
  ('Azitromicin', 'Kapsuly', '500 mg', '25.08.2026', 250.0, 80),
  ('Ceftriakson', 'Injekcii', '1 g', '30.09.2025', 400.0, 50),
  ('Arbidol', 'Kapsuly', '100 mg', '05.05.2026', 310.0, 70),
  ('Kagocel', 'Tabletki', '12 mg', '18.06.2025', 290.0, 65),
  ('Aciklovir', 'Maz', '5%', '20.02.2026', 180.0, 40),
  ('Suprastin', 'Tabletki', '25 mg', '31.01.2026', 100.0, 130),
  ('Loratadin', 'Tabletki', '10 mg', '22.07.2026', 95.0, 140),
  ('Cetrin', 'Tabletki', '10 mg', '14.12.2025', 110.0, 125);


INSERT INTO suppliers (organization_name, contact_person, phone, address, country) VALUES
  ('Farmstandart', 'Lavr Ilyasovich Kondratev', '+7 611 696 45 67', 'Essentuki, bulvar Prosveshcheniya, dom 95', 'Rossiya'),
  ('R-Farm', 'Faina Robertovna Shilova', '8 (103) 532-55-74', 'Tosno, naberezhnaya Slobodskaya, dom 416', 'Rossiya'),
  ('Biokad', 'Ilarion Kharlamovich Voronov', '8 (563) 945-89-18', 'Beloreck, shosse Stavropolskoe, dom 9', 'Rossiya'),
  ('Ozon Farmacevtika', 'Shcherbakova Veronika Leonidovna', '+7 (544) 060-3345', 'Akhtubinsk, pereulok Irkutskiy, dom 58', 'Rossiya'),
  ('Binnofarm Grupp', 'Terenteva Agafya Tarasovna', '+7 375 958 93 15', 'Kamyshlov, ulitsa Proletarskaya, dom 9', 'Rossiya'),
  ('Farmasintez', 'Merkushev Nikon Georgievich', '8 635 009 20 28', 'Nevinnomyssk, prospekt Blyuhera, dom 223', 'Rossiya'),
  ('Nizhfarm', 'Belousova Aleksandra Zhdanovna', '8 (964) 290-2903', 'Nazran, naberezhnaya Stroitelnaia, dom 2', 'Rossiya'),
  ('Gerofarm', 'Simon Adrianovich Kolobov', '8 (654) 424-48-20', 'Sortavala, ulitsa Pozharskogo, dom 90', 'Rossiya'),
  ('Promomed', 'Fedorov Prov Izmailovich', '81431854439', 'Rubtsovsk, bulvar Yubileynyy, dom 2', 'Rossiya'),
  ('Generium', 'Feofan Vyacheslavovich Sidorov', '8 (970) 663-98-84', 'Serpukhov, alleya Altayskaya, dom 8', 'Rossiya'),
  ('Evalar', 'Yakovleva Evgeniya Ruslanovna', '89736223025', 'Orekhovo-Zuevo, ulitsa Turgeneva, dom 35', 'Rossiya'),
  ('Soteks', 'Stanislav Viktorovich Odintsov', '8 132 437 5703', 'Krasnouralsk, bulvar Soyuznyy, dom 85', 'Rossiya'),
  ('Katren', 'Konon Anisimovich Dyachkov', '8 (192) 436-7814', 'Azov, pereulok Makarenko, dom 58', 'Rossiya'),
  ('Kanonfarma', 'Lytkin Ippolit Vladislavovich', '+7 (716) 337-4864', 'Kovrov, shosse Veseloe, dom 383', 'Rossiya'),
  ('Verofarm', 'Nikolay Iosipovich Ilin', '87057832034', 'Nizhniy Tagil, pereulok Gertsena, dom 242', 'Rossiya');


INSERT INTO customers (name, birth_date, phone, benefit_status) VALUES
  ('Galina Igorevna Arhipova', '1960-08-24', '8 242 579 98 48', TRUE),
  ('Markova Tatyana Matveevna', '1981-03-04', '+7 (256) 976-88-75', FALSE),
  ('Gromova Anzhela Natanovna', '1953-11-22', '+7 (490) 109-33-30', TRUE),
  ('Eliseev Izmail Efimovich', '1991-07-14', '+76493546169', FALSE),
  ('Zuev Isidor Iosifovich', '2006-12-31', '+7 017 110 72 23', TRUE),
  ('Artemev Afanasiy Yakovlevich', '1968-06-03', '+7 054 013 36 62', TRUE),
  ('Raisa Vyacheslavovna Kudryashova', '1970-05-17', '8 (574) 518-22-44', TRUE),
  ('Odintsova Olimpiada Vasilevna', '1941-02-01', '8 (351) 230-1882', TRUE),
  ('Yakovlev Filimon Borislavovich', '1996-04-13', '+7 (696) 611-14-75', TRUE),
  ('Oktyabrina Efimovna Fedoseeva', '1987-01-20', '+7 (968) 471-9672', TRUE),
  ('Odintsov Feoktist Aksenovich', '2003-10-21', '+7 (238) 337-3798', FALSE),
  ('Shubina Kira Leonidovna', '1988-06-21', '8 048 601 2069', FALSE),
  ('Kulagina Faina Naumovna', '1982-05-13', '+7 (385) 947-1345', FALSE),
  ('Kudryavtsev Sevastyan Evstigneeviсh', '1950-06-26', '8 (208) 512-84-00', TRUE),
  ('Efimova Lora Svyatoslavovna', '1997-11-14', '+7 539 627 7441', TRUE);


INSERT INTO sales (customer_id, sale_date) VALUES
  (8, '18.04.2024'),
  (4, '04.12.2024'),
  (7, '03.05.2024'),
  (5, '11.08.2024'),
  (10, '05.10.2024'),
  (7, '20.03.2025'),
  (4, '10.06.2024'),
  (9, '10.02.2025'),
  (2, '14.06.2024'),
  (5, '17.08.2024'),
  (10, '16.07.2024'),
  (3, '07.11.2024'),
  (2, '25.12.2024'),
  (9, '10.09.2024'),
  (5, '13.12.2024');

INSERT INTO medication_categories (medication_id, category_id) VALUES
  (1, 1),
  (1, 2),
  (2, 1),
  (3, 1),
  (3, 2),
  (4, 1),
  (4, 3),
  (5, 1),
  (6, 1),
  (7, 4),
  (8, 4),
  (9, 4),
  (10, 5),
  (11, 5),
  (12, 5),
  (13, 6),
  (14, 6),
  (15, 6),
  (2, 2),
  (5, 3),
  (6, 3),
  (7, 2),
  (8, 3),
  (9, 3),
  (10, 6),
  (11, 2),
  (12, 1),
  (13, 1),
  (14, 3),
  (15, 2);

INSERT INTO supplier_medications (supplier_id, medication_id, purchase_price, contract_date) VALUES
  (4, 6, 78.41, '17.06.2023'),
  (3, 8, 180.73, '21.04.2024'),
  (12, 2, 146.21, '29.06.2024'),
  (2, 13, 146.14, '21.12.2024'),
  (8, 10, 137.52, '12.11.2023'),
  (1, 5, 178.57, '31.10.2024'),
  (3, 3, 180.75, '04.07.2023'),
  (12, 7, 105.87, '05.11.2023'),
  (9, 13, 147.52, '16.08.2023'),
  (6, 7, 129.07, '06.01.2025'),
  (14, 10, 134.99, '30.06.2024'),
  (7, 1, 40.4, '30.07.2024'),
  (10, 3, 144.39, '19.07.2024'),
  (5, 10, 97.0, '01.01.2025'),
  (3, 5, 154.13, '05.11.2024'),
  (3, 13, 42.03, '13.01.2024'),
  (11, 15, 108.74, '16.01.2025'),
  (13, 14, 73.29, '29.08.2023'),
  (4, 12, 58.03, '11.09.2024'),
  (15, 11, 55.41, '16.09.2023'),
  (15, 15, 68.23, '11.03.2025'),
  (15, 3, 75.97, '21.11.2023'),
  (8, 5, 168.5, '05.10.2024'),
  (2, 1, 135.99, '26.08.2023'),
  (13, 13, 87.8, '26.05.2023'),
  (12, 12, 119.39, '15.10.2024'),
  (12, 14, 74.36, '13.01.2024'),
  (15, 2, 102.61, '29.07.2023'),
  (12, 8, 87.93, '03.10.2024'),
  (5, 11, 112.45, '2025-03-12');

INSERT INTO deliveries (supplier_medication_id, delivery_date, quantity, purchase_price) VALUES
  (2, '28.01.2025', 96, 108.39),
  (24, '14.08.2024', 95, 202.76),
  (27, '11.09.2024', 72, 147.18),
  (9, '02.10.2024', 55, 70.79),
  (29, '29.11.2024', 48, 197.4),
  (22, '23.04.2024', 89, 201.61),
  (19, '24.07.2024', 20, 169.43),
  (1, '16.10.2024', 72, 96.05),
  (15, '28.05.2024', 87, 43.56),
  (25, '14.06.2024', 95, 96.19),
  (24, '07.12.2024', 89, 67.31),
  (23, '27.11.2024', 38, 80.17),
  (23, '31.05.2024', 80, 131.27),
  (26, '07.08.2024', 58, 106.01),
  (24, '23.11.2024', 25, 117.01),
  (2, '10.02.2025', 61, 216.13),
  (25, '19.08.2024', 28, 146.97),
  (25, '22.01.2025', 23, 122.7),
  (2, '16.08.2024', 83, 85.57),
  (28, '25.12.2024', 15, 152.51),
  (26, '28.04.2024', 78, 116.85),
  (23, '18.05.2024', 93, 138.08),
  (4, '01.04.2025', 39, 66.8),
  (12, '14.11.2024', 89, 117.98),
  (24, '19.07.2024', 64, 185.98),
  (7, '29.01.2025', 60, 73.44),
  (29, '28.08.2024', 33, 138.96),
  (5, '30.06.2024', 29, 163.39),
  (4, '08.04.2025', 57, 108.75),
  (18, '01.10.2024', 77, 76.93);

INSERT INTO sale_medications (sale_id, medication_id, quantity, price_at_sale, total_amount) VALUES
  (7.0, 13.0, 1.0, 82.23, 82.23),
  (6.0, 8.0, 1.0, 119.81, 119.81),
  (3.0, 7.0, 1.0, 71.15, 71.15),
  (13.0, 3.0, 4.0, 122.24, 488.96),
  (5.0, 13.0, 5.0, 135.96, 679.8000000000001),
  (13.0, 9.0, 5.0, 78.87, 394.35),
  (12.0, 13.0, 2.0, 111.45, 222.9),
  (13.0, 1.0, 5.0, 120.82, 604.0999999999999),
  (10.0, 9.0, 5.0, 74.56, 372.8),
  (3.0, 8.0, 3.0, 106.52, 319.56),
  (14.0, 3.0, 2.0, 69.69, 139.38),
  (9.0, 4.0, 3.0, 99.61, 298.83),
  (2.0, 2.0, 5.0, 134.05, 670.25),
  (11.0, 14.0, 3.0, 139.34, 418.02),
  (11.0, 13.0, 1.0, 131.94, 131.94),
  (11.0, 4.0, 5.0, 142.38, 711.9),
  (2.0, 4.0, 2.0, 69.14, 138.28),
  (10.0, 3.0, 5.0, 121.74, 608.6999999999999),
  (4.0, 12.0, 2.0, 76.0, 152.0),
  (10.0, 5.0, 2.0, 71.34, 142.68),
  (8.0, 2.0, 3.0, 109.14, 327.42),
  (15.0, 2.0, 3.0, 84.48, 253.44),
  (7.0, 7.0, 4.0, 60.34, 241.36),
  (4.0, 2.0, 1.0, 115.66, 115.66),
  (5.0, 6.0, 2.0, 95.54, 191.08),
  (5.0, 12.0, 2.0, 76.66, 153.32),
  (10.0, 8.0, 1.0, 143.04, 143.04),
  (15.0, 9.0, 1.0, 116.88, 116.88),
  (15.0, 9.0, 3.0, 141.5, 424.5),
  (10.0, 2.0, 1.0, 77.62, 77.62);

INSERT INTO price_history (medication_id, old_price, new_price, effective_date) VALUES
  (1, 81.07, 70.31, '19.02.2024'),
  (8, 109.52, 74.17, '26.06.2024'),
  (3, 68.69, 90.17, '02.08.2024'),
  (8, 67.69, 138.14, '15.01.2024'),
  (2, 88.68, 137.85, '05.11.2024'),
  (5, 74.94, 73.11, '25.12.2023'),
  (10, 89.36, 77.46, '04.04.2024'),
  (9, 96.72, 131.39, '15.03.2025'),
  (6, 56.59, 91.41, '27.12.2024'),
  (15, 112.04, 81.52, '08.12.2024'),
  (1, 89.2, 64.48, '28.02.2025'),
  (5, 105.38, 91.76, '15.09.2024'),
  (4, 66.15, 95.62, '07.10.2024'),
  (2, 87.11, 77.25, '17.08.2024'),
  (1, 118.68, 119.28, '19.08.2024'),
  (3, 109.59, 134.44, '29.01.2025'),
  (3, 59.25, 97.35, '25.09.2023'),
  (5, 98.73, 131.63, '18.12.2024'),
  (13, 85.44, 100.38, '03.03.2025'),
  (9, 100.03, 109.5, '16.03.2025'),
  (5, 54.04, 137.6, '25.11.2023'),
  (6, 97.6, 91.36, '26.07.2024'),
  (4, 63.3, 103.91, '16.06.2024'),
  (3, 100.02, 95.66, '23.06.2024'),
  (11, 104.67, 117.75, '17.04.2024'),
  (1, 119.6, 110.76, '17.09.2023'),
  (4, 56.07, 123.88, '04.05.2024'),
  (12, 79.79, 72.86, '31.08.2024'),
  (10, 58.87, 112.37, '22.11.2024'),
  (14, 116.1, 109.15, '24.05.2024');
