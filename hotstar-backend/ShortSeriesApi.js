export default function ShortSeriesApi(app, client) {
    
    app.get('/short', async(req, res) => 
    {
        
        const database = await client.db('sample_mflix')
        const collection = await database.collection('movies')

        const data = await collection.find({ genres : 'Short'}).skip(20).limit(10).toArray()

        res.json(data)

    })
}