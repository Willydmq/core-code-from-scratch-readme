const express = require("express");
const server = express();
const port = 4000;
const db = require("./services/db");
const validateProduct = require("./middlewares/validateProduct");
const validateDeleteProduct = require("./middlewares/validateDeleteProduct");
const validateUpdateProduct = require("./middlewares/validateUpdateProduct");
const uuid = require("uuid");

server.use(express.json());

/** Obtener Productos */
server.get("/api", (req, res, next) => {
  try {
    res
      .status(200)
      .json({ message: "To-dos retrieved successfully", data: db });
  } catch (error) {
    next(error);
  }
});

/** Crear Producto */
server.post("/api", validateProduct, (req, res, next) => {
  try {
    const { title, description } = req.body;

    const newProduct = {
      id: uuid.v4(),
      title,
      description,
      isDone: false,
    };
    db.push(newProduct);

    res
      .status(201)
      .json({ message: "To-do created successfully", toDo: newProduct });
  } catch (error) {
    next(error);
  }
});

/** Eliminar Producto */
server.delete("/api/:id", validateDeleteProduct, (req, res, next) => {
  try {
    const id = req.id;
    const deletedProduct = db.splice(id, 1);

    res.status(200).json({
      message: "To-do deleted successfully",
      toDo: deletedProduct,
    });
  } catch (error) {
    next(error);
  }
});

/** Actualizar Producto */
server.patch("/api/:id", validateUpdateProduct, (req, res, next) => {
  try {
    const productIndex = req.productIndex;
    const product = db[productIndex];

    const { title, description, isDone } = req.body;

    product.title = title || product.title;
    product.description = description || product.description;
    product.isDone = isDone !== undefined ? Boolean(isDone) : product.isDone;

    res
      .status(200)
      .json({ message: "To-do updated successfully", toDo: product });
  } catch (error) {
    next(error);
  }
});

/** Manejo de errores */
server.use((error, req, res, next) => {
  res.status(500).json({
    message: "Something went wrong",
    error: error.message,
  });
});

/** Port */
server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
