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

