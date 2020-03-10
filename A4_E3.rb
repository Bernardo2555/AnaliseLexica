# números reais
# números inteiros
# operadores de soma
# operadores de multiplicação
# abre parênteses
# fecha parênteses 


estrutura = ['1', '1.3', '+', '+', '(', ')', '*', '*']

i = 0
while i < estrutura.length do
    if estrutura[i] =~ /[0-9]/ #arrumar, ele identifica um numero 

        if estrutura[i] =~ /[.]/
            puts 'Tipo do simbolo: real, simbolo: ' + estrutura[i]
        else
            puts 'Tipo do simbolo: numero, simbolo: ' + estrutura[i]
        end

    else
        if estrutura[i] =~ /[+]/
            puts 'Tipo do simbolo: +'
        else
            if estrutura[i] =~ /[*]/
                puts 'Tipo do simbolo: *'
            else
                if estrutura[i] =~ /[(]/ || estrutura[i] =~ /[)]/
                    puts 'Tipo do simbolo: (), simbolo: ' + estrutura[i]
                end
            end
        end
    end
        i += 1
end