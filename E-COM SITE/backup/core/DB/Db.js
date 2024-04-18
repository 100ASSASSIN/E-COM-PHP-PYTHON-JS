const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '9047',
    database: 'u967353045_root'
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL database:', err);
        return;
    }

    console.log('Connected to MySQL database');

    viewTableValues('users');
});

function viewTableValues(tableName) {
    const query = `SELECT * FROM ${tableName}`;

    connection.query(query, (err, rows) => {
        if (err) {
            console.error('Error executing query:', err);
            return;
        }

        console.log(`Values in the table '${tableName}':`);
        for (let i = 0; i < rows.length; i++) {
            const row = rows[i];
            console.log(row);
        }

        connection.end(); // Close connection after retrieving values
    });
}
