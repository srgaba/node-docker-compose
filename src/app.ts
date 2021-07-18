import express from 'express'
import 'dotenv'

const server = express()

server.get('/', (req, res) => {
    return res.send('hello world')
})

server.listen(3333)