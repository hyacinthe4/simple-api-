const { savePost, viwePostById, viewAllPost, updatePost, deletePostById } = require("../Controllers/post.controller") 
const tokenVerify = require("../middleware/verfiyLogin")

const postRouter = require("express").Router()

postRouter.post("/save",tokenVerify, savePost)
postRouter.get("/view-one-post/:id",viwePostById)
postRouter.get("/viewall", viewAllPost)
postRouter.put("/update/:id", updatePost)
postRouter.delete("/delete/:id",deletePostById)

module.exports= postRouter
