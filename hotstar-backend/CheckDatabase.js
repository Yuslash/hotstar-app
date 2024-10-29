export default function CheckDatabase(app, client) {

    app.get('/data', async(req, res) => {

        const database = client.db('sample_mflix')
        const collection = database.collection('movies')

        const data = await collection.find({}).limit(100).toArray()

        res.json(data)

    })

}