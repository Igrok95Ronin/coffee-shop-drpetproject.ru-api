-- Вставка 10 тестовых пользователей
INSERT INTO users (phone_number, password_hash) VALUES
                                                                      ('+79990000001', 'hash1'),
                                                                      ('+79990000002', 'hash2'),
                                                                      ('+79990000003', 'hash3'),
                                                                      ('+79990000004', 'hash4'),
                                                                      ('+79990000005', 'hash5'),
                                                                      ('+79990000006', 'hash6'),
                                                                      ('+79990000007', 'hash7'),
                                                                      ('+79990000008', 'hash8'),
                                                                      ('+79990000009', 'hash9'),
                                                                      ('79320581041', 'hash8');

-- SQL-запрос для вставки 6 записей
INSERT INTO products (name, img_src, description, price, characteristics, imgs_src, in_basket)
VALUES
    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    ),

    ('Coffee Machine Pro 300',
     '/products/coffeemachinepro300/main.jpg',
     'Профессиональная кофемашина с автоматической настройкой температуры и давления.',
     2499.99,
     '{"brand": "BaristaTech", "power": "1500W", "pressure": "15 bar", "water_tank": "2L"}',
     '["/products/coffeemachinepro300/1.jpg", "/products/coffeemachinepro300/2.jpg", "/products/coffeemachinepro300/3.jpg", "/products/coffeemachinepro300/4.jpg", "/products/coffeemachinepro300/5.jpg"]',
     FALSE
    ),

    ('Espresso Grinder X5',
     '/products/espressoGrinderX5/main.jpg',
     'Профессиональная кофемолка с 40 степенями помола для эспрессо.',
     799.99,
     '{"brand": "GrindMaster", "grind_levels": "40", "capacity": "500g", "motor": "200W"}',
     '["/products/espressoGrinderX5/1.jpg", "/products/espressoGrinderX5/2.jpg", "/products/espressoGrinderX5/3.jpg", "/products/espressoGrinderX5/4.jpg", "/products/espressoGrinderX5/5.jpg"]',
     FALSE
    ),

    ('Milk Frother S2',
     '/products/milkFrotherS2/main.jpg',
     'Автоматический вспениватель молока с подогревом.',
     149.99,
     '{"brand": "LatteArt", "capacity": "350ml", "heating": "Yes", "foam_modes": "3"}',
     '["/products/milkFrotherS2/1.jpg", "/products/milkFrotherS2/2.jpg", "/products/milkFrotherS2/3.jpg", "/products/milkFrotherS2/4.jpg", "/products/milkFrotherS2/5.jpg"]',
     FALSE
    ),

    ('Commercial Coffee Brewer B10',
     '/products/coffeeBrewerB10/main.jpg',
     'Промышленная кофеварка для ресторанов и кафе, поддержка до 10 литров кофе.',
     1899.99,
     '{"brand": "BrewMaster", "capacity": "10L", "programmable": "Yes", "filters": "Paper & Permanent"}',
     '["/products/coffeeBrewerB10/1.jpg", "/products/coffeeBrewerB10/2.jpg", "/products/coffeeBrewerB10/3.jpg", "/products/coffeeBrewerB10/4.jpg", "/products/coffeeBrewerB10/5.jpg"]',
     FALSE
    ),

    ('Barista Scale P1',
     '/products/baristaScaleP1/main.jpg',
     'Высокоточная бариста-весы с таймером и USB зарядкой.',
     129.99,
     '{"brand": "PrecisionBarista", "accuracy": "0.1g", "max_weight": "3kg", "battery": "USB rechargeable"}',
     '["/products/baristaScaleP1/1.jpg", "/products/baristaScaleP1/2.jpg", "/products/baristaScaleP1/3.jpg", "/products/baristaScaleP1/4.jpg", "/products/baristaScaleP1/5.jpg"]',
     FALSE
    ),

    ('Automatic Tamper T3',
     '/products/automaticTamperT3/main.jpg',
     'Автоматический темпер для кофейного порошка с регулируемым давлением.',
     499.99,
     '{"brand": "ProTamp", "pressure_range": "10-30kg", "diameter": "58mm", "power": "50W"}',
     '["/products/automaticTamperT3/1.jpg", "/products/automaticTamperT3/2.jpg", "/products/automaticTamperT3/3.jpg", "/products/automaticTamperT3/4.jpg", "/products/automaticTamperT3/5.jpg"]',
     FALSE
    );
