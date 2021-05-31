function mascara(o, f) {
    v_obj = o
    v_fun = f
    setTimeout("execmascara()", 1)
}
function execmascara() {
    v_obj.value = v_fun(v_obj.value)
}
function CPF(cpf) {
    cpf = cpf.replace(/\D/g, "")
    cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
    cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
    cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2")
    return cpf
}

function CNPJ(cnpj) {
    cnpj = cnpj.replace(/\D/g, "")
    cnpj = cnpj.replace(/(\d{2})(\d)/, "$1.$2")
    cnpj = cnpj.replace(/(\d{3})(\d)/, "$1.$2")
    cnpj = cnpj.replace(/(\d{3})(\d)/, "$1/$2")
    cnpj = cnpj.replace(/(\d{4})(\d)/, "$1-$2")
    return cnpj
}

function CEP(cep) {
    cep = cep.replace(/\D/g, "")
    cep = cep.replace(/(\d{5})(\d)/, "$1-$2")
    return cep
}

function FONE(fone) {
    fone = fone.replace(/\D/g, "")
    fone = fone.replace(/(\d{2})(\d)/, "$1 $2")
    return fone
}

function DATA(data) {
    data = data.replace(/\D/g, "")
    data = data.replace(/(\d{2})(\d)/, "$1/$2")
    data = data.replace(/(\d{2})(\d)/, "$1/$2")
    data = data.replace(/(\d{4})(\d)/, "$1/$2")
    return data
}