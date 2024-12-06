import mysql.connector

# Database connection settings
db_config = {
    'host': 'localhost',  # or the IP address of your database server
    'user': 'root',       # Your username for phpMyAdmin (root in this case)
    'password': '',       # Password (empty if you haven't set one)
    'database': 'leena_port'  # Database name
}

# Function to get database connection
def get_db_connection():
    try:
        conn = mysql.connector.connect(**db_config)
        print("Database connection established successfully!")  # Print connection success message
        return conn
    except mysql.connector.Error as err:
        print(f"Error: {err}")  # Print any connection error
        return None
