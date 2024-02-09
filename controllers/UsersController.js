// controllers/ListController.js
import UsersModel from '../models/UsersModel.js';

const UsersController = {
  getAllUsers: async () => {
    try {
      const users = await UsersModel.getAllUsers();
      return users;
    } catch (error) {
      throw error;
    }
  },
  addUser: async (nombre, email, password, token) => {
    try {
      const result = await UsersModel.addUser(nombre, email, password, token);
      return result;
    } catch (error) {
      throw error;
    }
  },
};

export default UsersController;
