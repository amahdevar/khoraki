CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,        -- Unique identifier for each user
    Username VARCHAR(50) NOT NULL UNIQUE,         -- Username for the user, must be unique
    Password VARCHAR(255) NOT NULL,               -- Hashed password for security
    MobileNumber VARCHAR(15) UNIQUE,              -- Mobile number, can be NULL, must be unique if present
    EmailAddress VARCHAR(100) NOT NULL UNIQUE,    -- Email address, must be unique
    IsAdmin BOOLEAN NOT NULL DEFAULT FALSE,       -- Indicates if the user is an admin
    Locked BOOLEAN NOT NULL DEFAULT FALSE,        -- Indicates if the account is locked
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp of account creation
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Timestamp of last update
);
CREATE TABLE MonthOrders (
    FoodID INT PRIMARY KEY AUTO_INCREMENT,          -- Unique identifier for each food item
    DayOfMonth INT NOT NULL CHECK (DayOfMonth BETWEEN 1 AND 31), -- Day of the month (1-31)
    DayOfWeek ENUM('شنبه', 'یکشنبه', 'Monday', 'Tuesday', 'Wednesday') NOT NULL, -- Allowed days
    FoodName VARCHAR(100) NOT NULL,                 -- Name of the food item
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for record creation
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Timestamp for record update
    UNIQUE (DayOfMonth, DayOfWeek, FoodName)        -- Ensure no duplicate food entry for a specific day
);
CREATE TABLE FoodNames (
    FoodID INT PRIMARY KEY AUTO_INCREMENT,          -- Unique identifier for each food item
    FoodName VARCHAR(100) NOT NULL UNIQUE,          -- Name of the food item (must be unique)
    IsActive BOOLEAN NOT NULL DEFAULT TRUE,         -- Indicates if the food is currently active or available
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for when the record was created
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Timestamp for when the record was last updated
);

