export default function MysterySeries(app, client, genre, endpoint) {
    
    app.get(`/${endpoint}`, async(req, res) => {
        const database = await client.db('sample_mflix')
        const collection = await database.collection('ottlist')

        const data = await collection.find({ genre: genre}).toArray()

        res.json(data)
    })

}