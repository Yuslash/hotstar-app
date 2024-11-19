export default function NewsData(app, client) {
    app.get("/news", async (req, res) => {
        
        const database = await client.db("actualData")

        const collection = await database.collection("newsdata")

        const data = await collection.find({}).toArray()

        res.json(data)

    })
}