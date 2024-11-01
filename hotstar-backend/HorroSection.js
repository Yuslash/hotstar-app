export default function HorrorSection(app, client) {
    
    app.get('/horror', async (req, res) => {
        const database = await client.db('sample_mflix')
        const collection = await database.collection('ottlist')

        const data = await collection.find({genre : 'Horror'}).toArray()

        res.json(data)
    })

}