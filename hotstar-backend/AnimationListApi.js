export default function AnimationListApi(app, client) {

    app.get('/animation', async (req, res) => {
        const database = await client.db('sample_mflix')
        const collection = await database.collection('ottlist')

        const data = await collection.find({genre: 'Animation'}).toArray()

        res.json(data)
    })

}