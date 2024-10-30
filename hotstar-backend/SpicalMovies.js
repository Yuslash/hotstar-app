export default function SpcialMovies(app, client) {

    app.get('/spa', async (req, res) => {

        const database = await client.db('sample_mflix')
        const collection = await database.collection('movies')

        const data = await collection.find().skip(63).limit(10).toArray()

        res.json(data)

    })

}