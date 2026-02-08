module.exports = (srv) => {
    
    srv.on('helloworld',(req,res)=>{
        console.log(req.data)
        return `Hello ${req.data.input}`
    })
}