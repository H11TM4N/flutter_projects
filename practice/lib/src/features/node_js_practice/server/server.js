const express = require('express');
const cors = require('cors'); // Import the cors middleware

const app = express();
const port = 3000;

// Apply CORS middleware to allow requests from all origins
app.use(cors());

app.get('/', (req, res) => {
    res.send('Hello World!');
});

const books = [
    { id: 1, title: 'Alice in Wonderland', author: 'Lewis Carrol' },
    { id: 2, title: 'Around the World in Eighty Days', author: 'Jules Verne' },
    { id: 3, title: 'Utopia', author: 'Sir Thomas More' },
];

app.get('/api/books', (req, res) => {
    res.json(books);
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
