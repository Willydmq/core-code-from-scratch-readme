const db = require("../services/db");

const validateUpdateProduct = (req, res, next) => {
  const productId = req.params.id;
  const productIndex = db.findIndex((product) => product.id === productId);

  if (productIndex === -1) {
    return res.status(404).json({ message: "Product not found" });
  }

  const { title, description, isDone } = req.body;

  if (!title || !description) {
    return res
      .status(400)
      .json({ message: "Title and description are required" });
  }

  if (isDone !== undefined && typeof isDone !== "boolean") {
    return res.status(400).json({ message: "isDone must be a boolean value" });
  }

  req.productIndex = productIndex;
  next();
};

module.exports = validateUpdateProduct;
