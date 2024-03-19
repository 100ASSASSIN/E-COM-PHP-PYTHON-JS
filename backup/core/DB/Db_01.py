import mysql.connector
db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="9047",
  database="u967353045_root"
)
cursor = db.cursor()
cursor.execute("SELECT * FROM users")
rows = cursor.fetchall()
for row in rows:
  print(row)
cursor.close()
db.close()