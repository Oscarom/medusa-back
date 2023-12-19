import express from 'express';
import cors from 'cors';

import productsRoutes from './routes/ProductsRoutes.js';

const app = express();
const port = 3000;

app.use(cors({ origin: '*' }));

// Ruta para obtener todos los usuarios
app.use('/api', productsRoutes);

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor Express en http://localhost:${port}`);
});




