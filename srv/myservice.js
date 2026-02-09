module.exports = (srv) => {
    
    srv.on('helloworld',(req,res)=>{
        return `Hello ${req.data.input}`
    })
}