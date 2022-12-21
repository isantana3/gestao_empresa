class Contato {
    constructor(num_contrato, parte_cotrato, grupo_compra,
    nota_fiscal, aditivo, supervisor) {
        this.num_contrato = num_contrato;
        this.parte_cotrato = parte_cotrato;
        this.grupo_compra = grupo_compra;
        this.nota_fiscal = nota_fiscal; 
        this.aditivo = aditivo; 
        this.supervisor = supervisor; 
    }

    getNumContrato() {
        return this.num_contrato; 
    }
    setNumContrato(value) {
        this.num_contrato = value; 
    }
    getParteContrato() {
        return this.parte_cotrato;   
    }
    setParteContrato(value) {
        this.parte_cotrato = value; 
    }
    getGrupoCompra() {
        return this.grupo_compra; 
    }
    setGrupoCompra(value) {
        this.grupo_compra = value; 
    }
    getNotaFiscal() {
        return this.nota_fiscal; 
    }
    setNotaFiscal(value) {
        this.nota_fiscal = value; 
    }
    getAditivo() {
        return this.aditivo; 
    }
    setAditivo(value) {
        this.aditivo = value; 
    }
    getSupervisor() {
        return this.supervisor; 
    }
    getSupervisor(value) {
        this.supervisor = value; 
    }
}
module.exports = Contato;