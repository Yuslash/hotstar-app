export default function ActualReferenceData(app, client) {

    app.get('/actual', async(req, res) => {

        const database = await client.db("actualData")

        const collection = await database.collection('hotstarData')

        const data = await collection.find({}).toArray()

        res.json(data)

    })

}