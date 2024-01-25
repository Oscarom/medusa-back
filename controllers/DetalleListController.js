// controllers/productsController.js
import DetalleListsModel from '../models/DetalleListModel.js';

const DetalleListsController = {
  getAllList: async () => {
    try {
      const dlistas = await DetalleListsModel.getAllDetalleList();
      return dlistas;
    } catch (error) {
      throw error;
    }
  },
};

export default DetalleListsController;
