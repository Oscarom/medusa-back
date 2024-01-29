// app.js
import express from 'express';
import cors from 'cors';
import productsRoutes from './routes/ProductsRoutes.js';
import listsRoutes from './routes/ListsRoutes.js';
import UsersRoutes from './routes/UsersRoutes.js';

const app = express();
const port = 3000;

app.use(cors({ origin: '*' }));

// Utilizar las rutas para productos
app.use('/api/productos', productsRoutes);
app.use('/api/lists', listsRoutes);
app.use('/api/users', UsersRoutes);

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor Express en http://localhost:${port}`);
});

