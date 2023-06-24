const db = require("../services/db");

const validateDeleteProduct = (req, res, next) => {
  const id = req.params.id;
  const index = db.findIndex((item) => item.id === id);

  if (index === -1) {
    return res.status(404).json({ message: "To-do not found" });
  }

  req.index = index;
  next();
};

module.exports = validateDeleteProduct;
