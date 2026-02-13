const cds = require('@sap/cds')
module.exports = cds.service.impl ( async function(){ 
    //objects of entities we can read
    //console.log(this.entities)
    const { EmployeeSet } = this.entities;

    this.before('UPDATE',EmployeeSet,(req,res)=>{
        console.log('---before update---',req.data)
        const {salaryAmount} = req.data
        if(parseFloat(salaryAmount) >= 100000){
            req.error(500,"Hello Mate! Salary cannot be above 1 million")
        }
    })
 }) 