export default function FantasyListApi(app, client) {

    app.get('/fantasy', async(req,res) => {

        const database = await client.db('sample_mflix')
        const collection = await database.collection('movies')

        const data = await collection.find({genres: 'Fantasy'}).limit(10).toArray()
        res.json(data)
    
    })

}