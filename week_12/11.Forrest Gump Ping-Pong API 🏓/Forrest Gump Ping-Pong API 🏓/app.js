const express = require('express')
const app = express()
const port = 3000

app.use(express.json())

app.get('/api/buba-gump/ping', (req, res) => {
  res.json({ message: 'pong' })
})

app.post('/api/buba-gump', (req, res) => {
  const { move } = req.body

  if (move === 'ping') {
    res.json({ message: 'pong' })
  } else if (move === 'pong') {
    res.json({ message: 'ping' })
  } else {
    res.status(400).json({ error: 'Invalid move' })
  }
})

app.listen(port, () => {
  console.log(`La aplicación está corriendo en http://localhost:${port}`)
})