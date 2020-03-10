# números reais
# números inteiros
# operadores de soma
# operadores de multiplicação
# abre parênteses
# fecha parênteses 

estrutura = gets.chomp.to_s
i = 0
caso = 'A'
while i < estrutura.bytesize do
    if estrutura[i] =~ /\A[+-]?\d+(\.\d+)?\z/ #arrumar, ele identifica um numero 
        puts 'Tipo do simbolo: numero, simbolo: ' + estrutura[i]
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