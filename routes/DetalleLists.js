// routes/DetalleList.js
import express from 'express';
import DetalleListsController from '../controllers/DetalleListController.js';

const router = express.Router();

// Ruta para obtener todos los productos
router.get('/', async (req, res) => {
  try {
    const dlistas = await DetalleListsController.getAllList();
    res.json(dlistas);
  } catch (error) {
    console.error('Error al obtener listas: ', error);
    res.status(500).json({ error: 'Error al obtener listas' });
  }
});

export default router;
