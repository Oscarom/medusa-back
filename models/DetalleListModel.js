// models/DetalleListsModel.js
import connection from '../config/database.js';

const DetalleListsModel = {
  getAllDetalleList: () => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM detalles_lista', (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
};

export default DetalleListsModel;

