const express = require("express");
const postRouter = require("./routes/post.routes");
const userRouter = require("./routes/users.routes");
const env = require("dotenv").config();

const port = process.env.PORT || 5000;
const app = express();
app.use(express.json());
app.use("/api", postRouter)
app.use("/api", userRouter)
app.get("/", (req, res) => {
  res.send("welcome to the server");
});

app.listen(port, () =>
  console.log(`our server is running on http://localhost:${port}`)
);
