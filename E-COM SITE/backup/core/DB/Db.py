import mysql.connector

def view_table_values(database_name, table_name):
    try:
        # Establish connection to the MySQL database
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="9047",
            database=database_name
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # Execute the query to retrieve all rows and columns
            cursor.execute(f"SELECT * FROM {table_name}")

            # Fetch all the rows
            rows = cursor.fetchall()

            # Print the column names
            print("Columns in the table:")
            for column in cursor.description:
                print(column[0], end="\t")
            print("\n----------------------------------------------")

            # Print the values
            for row in rows:
                for value in row:
                    print(value, end="\t")
                print()

    except mysql.connector.Error as error:
        print("Error:", error)

    finally:
        if 'connection' in locals() and connection.is_connected():
            cursor.close()
            connection.close()

# Provide your database and table names
database_name = "u967353045_root"
table_name = "users"

# Call the function
view_table_values(database_name, table_name)
