// models/ListsModel.js
import connection from '../config/database.js';
import bcrypt from 'bcrypt';
import { v4 as uuidv4 } from 'uuid';


const UsersModel = {
  getAllUsers: () => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM usuarios', (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
  addUser: async (nombre, email, password) => {
    const token = uuidv4();
    const hashedPassword = await bcrypt.hash(password, 10); // El segundo parámetro es el costo del hash

    return new Promise((resolve, reject) => {
      connection.query(
        'INSERT INTO usuarios (nombre, email, password, token) VALUES (?, ?, ?, ?)',
        [nombre, email, hashedPassword, token],
        (err, results) => {
          if (err) {
            reject(err);
          } else {
            resolve(results);
          }
        }
      );
    });
  },
};

export default UsersModel;