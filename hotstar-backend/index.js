import express from 'express'

const app = express()
const port = 3000

app.use(express.json())

app.get('/api', (req, res) => {

    res.json({message: "yeah wow this is working mate how are you welcome back"})

})

app.listen(port, '0.0.0.0', () => {
    console.log(`Server is Running at http://192.168.210.18:${port}`)
})