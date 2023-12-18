const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');
const app = express();
const port = 3000;




// Configurar la conexión a la base de datos
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'db_medusa',
});

connection.connect(err => {
  if (err) {
    console.error('Error al conectar a la base de datos: ', err);
    return;
  }
  console.log('Conexión a la base de datos establecida');
});

// Definir el modelo y el controlador
const UserModel = {
  getAllUsers: () => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM productos', (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
};

// Ruta para obtener todos los usuarios
app.get('/api/productos', async (req, res) => {
  try {
    const productos = await UserModel.getAllUsers();
    res.json(productos);
  } catch (error) {
    console.error('Error al obtener usuarios: ', error);
    res.status(500).json({ error: 'Error al obtener usuarios' });
  }
});

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor Express en http://localhost:${port}`);
});

app.use(cors({ origin: '*' }));



