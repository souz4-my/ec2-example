const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.json({
    title: 'Olá!',
    body: 'Esta é uma aplicação containerizada no ECS!',
    footer: 'Deployed by Devopness',
    timestamp: new Date()
  });
});

app.listen(port, '0.0.0.0', () => {
  console.log(`Aplicação rodando na porta ${port}`);
});
