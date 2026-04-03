INSERT INTO categories (category_id, category_name) VALUES
    (1, 'Core Components'),
    (2, 'Power & Cooling'),
    (3, 'Build & Structure'),
    (4, 'Peripherals (Optional)'),
    (5, 'Networking & Extras');


INSERT INTO products (id, name, price, description, image, category_id) VALUES

-- Core Components (category_id = 1)
(1, 'CPU (Processor)', 25000, 'Main processing unit of the computer', 'assets/images/cpu.png', 1),
(2, 'Motherboard', 15000, 'Connects all components together', 'assets/images/motherboard.png', 1),
(3, 'RAM (Memory)', 8000, 'Temporary memory for running applications', 'assets/images/ram.png', 1),
(4, 'Storage (SSD/HDD)', 6000, 'Permanent data storage', 'assets/images/storage.png', 1),
(5, 'GPU (Graphics Card)', 30000, 'Handles graphics and rendering', 'assets/images/gpu.png', 1),

-- Power & Cooling (category_id = 2)
(6, 'Power Supply Unit (PSU)', 5000, 'Supplies power to all components', 'assets/images/psu.png', 2),
(7, 'CPU Cooler', 3000, 'Keeps processor temperature under control', 'assets/images/cooler.png', 2),
(8, 'Case Fans', 1500, 'Improves airflow inside the cabinet', 'assets/images/fans.png', 2),

-- Build & Structure (category_id = 3)
(9, 'Computer Case (Cabinet)', 4000, 'Houses all internal components', 'assets/images/case.png', 3),
(10, 'Thermal Paste', 500, 'Improves heat transfer between CPU and cooler', 'assets/images/thermal.png', 3),

-- Peripherals (category_id = 4)
(11, 'Monitor', 12000, 'Display screen', 'assets/images/monitor.png', 4),
(12, 'Keyboard', 1000, 'Input device for typing', 'assets/images/keyboard.png', 4),
(13, 'Mouse', 800, 'Pointing device', 'assets/images/mouse.png', 4),
(14, 'Speakers / Headphones', 2000, 'Audio output devices', 'assets/images/audio.png', 4),
(15, 'Webcam', 1500, 'Video input device', 'assets/images/webcam.png', 4),

-- Networking & Extras (category_id = 5)
(16, 'Wi-Fi Card / Adapter', 1200, 'Wireless internet connectivity', 'assets/images/wifi.png', 5),
(17, 'Ethernet Cable', 300, 'Wired internet connection', 'assets/images/ethernet.png', 5),
(18, 'Operating System (OS)', 10000, 'Software like Windows or Linux', 'assets/images/os.png', 5);