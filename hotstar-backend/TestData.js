export default function TestData(app, client) {
    app.get("/test", async (req,res) => {

        const database = await client.db("actualData")

        const collection = await database.collection("testdata")

        const data = await collection.find({}).toArray()
        
        res.json(data)

    })
}