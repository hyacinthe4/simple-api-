const mysql = require("mysql");
const { v4: uuid } = require("uuid");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "post1",
});

const savePost = async (req, res) => {
    const { firstname, lastname, gender, address } = req.body;
    const id = uuid();
    // res.status(200).json({data: content, id: id})
    // res.send(`firstname:${firstname}\n lastname:${lastname}\n gender:${gender}\n address:${address}\n id:${id}`);
    connection.connect(() => {
        console.log("connected");
        let sql = `INSERT INTO posts VALUES('','${id}','${firstname}','${lastname}','${gender}','${address}')`;
        connection.query(sql, (erro, result) => {
            if (erro) throw erro;
            res.json({ id: id, message: req.body, status: 200 });
        });
    });
}
const viwePostById = async (req, res) => {
    let { id } = req.params;
    connection.connect(() => {
        console.log("connected");
        let sql = `SELECT * FROM posts WHERE student_id= '${id}'`;
        connection.query(sql, (error, response) => {
            if (error) throw error;
            console.log(response);
            res.json({status: 200,
            data:response });
        });
    });
}
const viewAllPost = async (req, res) => {
    connection.connect(() => {
        console.log("connected");
        let sql = `SELECT * FROM posts`;
        connection.query(sql, (err, response) => {
            let all = [response];

            //   console.log(response);
            res.send(all);
        });
    });
}
const updatePost = async (req, res) => {
    const { firstname, lastname, gender, address } = req.body;

    const { id } = req.params;
    connection.connect(() => {
        console.log("connected")
        let sql = `UPDATE posts SET firstname='${firstname}',lastname='${lastname}',gender='${gender}',address='${address}' WHERE student_id='${id}'`;
        connection.query(sql, (response) => {
            res.status(200).json({ message: "updated well!!!", data: req.body, status:200 });
        });
    });
}
const deletePostById = async (req, res) => {
    const { id } = req.params;
    connection.connect(() => {
        console.log("connected");
        let sql = `DELETE FROM posts WHERE student_id='${id}'`;
        connection.query(sql, (response) => {
            res.status(200).json({ message: "deleted well" });
        });
    });
}
module.exports = { savePost, viwePostById, viewAllPost, updatePost, deletePostById }