const express = require('express')
const app = express()

app.get('/api/delay/:ms?', (req, res) => {
  const delay = req.params.ms || 1000

  setTimeout(() => {
    res.send(`La respuesta después de ${delay} milisegundos`)
  }, delay)
})

app.listen(3000, () => {
  console.log('La aplicación está corriendo en el puerto 3000')
})