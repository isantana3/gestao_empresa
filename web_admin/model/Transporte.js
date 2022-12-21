class Transporte {
    constructor(origem_carga, destino_carga, transportador,
    veiculo, posto_abastecimento, motorista) {
        this.origem_carga = origem_carga;
        this.destino_carga = destino_carga;
        this.transportador = transportador;
        this.veiculo = veiculo; 
        this.posto_abastecimento = posto_abastecimento; 
        this.motorista = motorista; 
    }

    getOrigemCarga() {
        return this.origem_carga; 
    }
    setOrigemCarga(value) {
        this.origem_carga = value; 
    }
    getDestinoCarga() {
        return this.destino_carga;   
    }
    setDestinoCarga(value) {
        this.destino_carga = value; 
    }
    getTransportador() {
        return this.transportador; 
    }
    setTransportador(value) {
        this.transportador = value; 
    }
    getVeiculo() {
        return this.veiculo; 
    }
    setVeiculo(value) {
        this.veiculo = value; 
    }
    getPostoAbastecimento() {
        return this.posto_abastecimento; 
    }
    setPostoAbastecimento(value) {
        this.posto_abastecimento = value; 
    }
    getMotorista() {
        return this.motorista; 
    }
    getMotorista(value) {
        this.motorista = value; 
    }
}
module.exports = Transporte;