const mysql = require("mysql");
const bcrypt = require("bcrypt")
const jwt = require("jsonwebtoken")
const { v4: uuid } = require("uuid");
const { response } = require("express");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "post1",
});

const register = async (req, res) => {
    // if (!req.body.username || !req.body.password) {
    //     return res.status(400).json({message: "please provide username and password"})
    // }
    const { username, password } = req.body
    const slat = await bcrypt.genSalt(10)
    const hashedpassword = await bcrypt.hash(password, slat)
    console.log("hashed password register", hashedpassword);
    try {
        await connection.connect(() => {
            console.log("connected");
            const query = `INSERT INTO users VALUES('','${username}','${hashedpassword}' )`
            console.log("query: ", query);
            connection.query(query, (error, response) => {
                if (error) throw error
                console.log(`original password: ${password} and hashed one is ${hashedpassword}`);
                res.status(201).json({
                    message: "user created successfully",
                    data: req.body
                })
            })
        })
    } catch (error) {
        console.log("error", error);
        return res.status(500).json({ message: error.message })
    }

}


const login = async (req, res) => {
    const { username, password } = req.body
    connection.connect(async () => {
        console.log("database connected");

        const query = `SELECT * FROM users WHERE username = '${username}'`;
        connection.query(query, async (error, response) => {
            if (error) throw error
            const hashedpassword = response[0].password
            const userPassword = await bcrypt.compare(password, hashedpassword)
            console.log(userPassword);
            if (!userPassword) {
                return res.status(404).json({
                    message: "password does not match"
                })
            }
            const userId = response[0].id
            const names = response[0].username
            const token = jwt.sign({id: userId, names: names}, process.env.JWT_SECRETE,{expiresIn: "2h"})
            console.log(token);
            console.log("hashed password", hashedpassword);
            return res.status(200).json({
                message: "user loged in successfully",
                access_token: token,
                data: response[0]
            })
        })

    })
}

module.exports = { register, login }