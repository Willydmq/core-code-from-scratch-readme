const validateProduct = (req, res, next) => {
  const { title, description } = req.body;
  if (!title || !description) {
    return res
      .status(206)
      .json({ message: "Title and description are required" });
  }
  next();
};

module.exports = validateProduct;
