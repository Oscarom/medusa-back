import mysql from 'mysql2';

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'gerardo',
    password: 'a7xgera',
    database: 'db_medusa',
});

connection.connect((err) => {
    if (err) throw err;
});

export default connection;