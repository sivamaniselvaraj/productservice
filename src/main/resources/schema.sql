CREATE TABLE IF NOT EXISTS categories (
                            id BIGINT AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(255) NOT NULL UNIQUE,
                            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE products (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          price DECIMAL(10,2) NOT NULL,
                          description TEXT,
                          image VARCHAR(500),

                          category_id BIGINT NOT NULL,

                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

                          CONSTRAINT fk_category
                              FOREIGN KEY (category_id)
                                  REFERENCES categories(id)
                                  ON DELETE CASCADE
);