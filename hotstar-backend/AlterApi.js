export default function AlterApi(app, fetch, client) {

    app.get('/rapidapi', async (req, res) => {

        const database = await client.db('sample_mflix')
        const collection = await database.collection('ottlist')

        const url = 'https://ott-details.p.rapidapi.com/advancedsearch?start_year=1970&end_year=2020&min_imdb=6&max_imdb=7.8&genre=action&language=english&type=movie&sort=latest&page=1';
        const options = {
            method: 'GET',
            headers: {
                'x-rapidapi-key': '613d541c5cmsh151f4e8ca2318fdp1bbdd1jsn2b1e4c7cbc1d',
                'x-rapidapi-host': 'ott-details.p.rapidapi.com'
            }
        };

        try {
            const response = await fetch(url, options);
            const result = await response.json();
            await collection.insertMany(result.results)
            res.json(result.results)
        } catch (error) {
            console.error(error);
        }
    })

}