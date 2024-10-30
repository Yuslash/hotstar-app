export default function DramaShowListApi(app, client) {
    app.get('/drama', async (req, res) => {

        const database = await client.db('sample_mflix')
        const collection = await database.collection('movies')

        const data = await collection.find({genres: 'Drama'}).limit(10).toArray()

        res.json(data)

    }) 
}