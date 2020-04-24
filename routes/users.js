const Router = require('express-promise-router')
const router = new Router();
const usersApi = require('../api/users')
router.get('/', usersApi.getUsers)

module.exports = router