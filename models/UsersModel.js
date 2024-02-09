// models/ListsModel.js
import connection from '../config/database.js';

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
  addUser: (nombre, email, password, token) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO usuarios (nombre, email, password, token) VALUES (?, ?, ?, ?)', [nombre, email, password, token], (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
};

export default UsersModel;