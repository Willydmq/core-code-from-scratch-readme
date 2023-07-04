const express = require('express');
const app = express();

app.get('/api/age/:name', (req, res) => {
  const { name } = req.params;
  if (!name) {
    res.status(400).json({ error: "Missing parameter 'name' was expected." });
  } else {
    const age = Math.floor(Math.random() * 100) + 1;
    const days = age * 365;
    res.json({ name, age, days });
  }
});

app.listen(3000, () => {
  console.log('Server running on port 3000');
});