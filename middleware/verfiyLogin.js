const jwt = require("jsonwebtoken")

const tokenVerify = async (req, res, next) => {

    const { authorization } = req.headers
    if (!authorization) {
        return res.status(404).json({
            message: "Token not found"
        })
    }
    const verify = jwt.verify(authorization, process.env.JWT_SECRETE)

    console.log(verify);
    if (verify.names !== "edger") {
        return res.status(401).json({
            message: "you are no allowed to perform this action"
        })
    }
    next()
}

module.exports = tokenVerify