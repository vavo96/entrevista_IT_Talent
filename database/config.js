require('dotenv').config();

const user = process.env.DB_USER;
const password = process.env.DB_PASSWORD;
const database = process.env.DB_DATABASE;
const host = process.env.HOST;
const node_env = process.env.NODE_ENV;

const config = {
    dev: {
        db: {
            user,
            password,
            database,
            host
        }
    },
    test: {},
    prod: {}
}

module.exports = config[node_env];