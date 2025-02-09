import express from 'express'
import { MongoClient } from 'mongodb'
import dotenv from 'dotenv'
import CheckDatabase from './CheckDatabase.js'
import ShortSeriesApi from './ShortSeriesApi.js'
import FantasyListApi from './FantasyListApi.js'
import DramaShowListApi from './DramaShowListApi.js'
import SpcialMovies from './SpicalMovies.js'
import AlterApi from './AlterApi.js'
import AnimationListApi from './AnimationListApi.js'
import HorrorSection from './HorroSection.js'
import MysterySeries from './MysterySeries.js'
import ActualReferenceData from './ActualReferenceData.js'
import TestData from './TestData.js'
import NewsData from './NewsData.js'
dotenv.config()


const app = express()
const port = 3000
const uri = process.env.MONGO_URI
const client = new MongoClient(uri)


app.use(express.json())

app.get('/api', (req, res) => {

    res.json({message: "Alpha Radio Check"})

})

CheckDatabase(app, client)
ShortSeriesApi(app, client)
FantasyListApi(app, client)
DramaShowListApi(app, client)
SpcialMovies(app, client)
// AlterApi(app, fetch, client)
AnimationListApi(app, client)
HorrorSection(app, client)
MysterySeries(app, client, 'Mystery', 'mystery')
MysterySeries(app, client, 'Action', 'action')
ActualReferenceData(app, client)
TestData(app, client)
NewsData(app, client)

app.listen(port, '0.0.0.0', () => {
    console.log(`Server is Running at http://192.168.90.19:${port}`)
})