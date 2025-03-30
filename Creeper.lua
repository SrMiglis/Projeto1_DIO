




os.execute("chcp 65001")


-- Criatura
local NomeMonstro = "Creeper"
local Descricao = "Um monstro furtivo que espere o exato momento quando voce esta distraido para atacar"
local Emoji = "💣"
local Som = "TSSS BOOM"
local Hour = "Noite"
-- Atributos
local Vida = 10
local Ataque = 8
local Defesa = 3
local Velocidade = 6
local Inteligencia = 1

-- Função que recebe um atributo e nos retorna uma barra de progresso

local function BarradeProgresso(atributo)
    local fullChar = "▰"
    local emptyChar = "▱"
    local result = ""
    for i = 1, 10, 1 do
        if i <= atributo then
            result = result .. fullChar
            --quadradinho cheio
        else
            result = result .. emptyChar
            --quadradinho vazio
        end
    end

    return result 
end
-- Cartão
-- Implementei está função que vai representar o verso da frente do RG
local function ExibirFrente()
    print ("▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃")
    print(" ▮")
    print(" ▮" ..   NomeMonstro)
    print(" ▮  Tipo monstro explosivo"..Emoji)
    print(" ▮    Sua foto:")
    print(" ▮")
    print(" ▮⠀ ⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿")
    print(" ▮⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿")
    print(" ▮⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿")
    print(" ▮⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿")
    print(" ▮⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀ ⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀ ⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀")
    print(" ▮⠀⠀⠀⠀⠀ ⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀ ⢸⣿⣿⣿⡇     ")
    print(" ▮")
    print(" ▮")
    print(" ▮")
    print(" ▮")
     print ("▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃")
end

--Verso do cartão
--Função que vai exibir o verso de trás do RG
local function ExibirVerso()
    


    print ("▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃")
    print(" ▮")
    print(" ▮   Informações sobre Creepper")
    print(" ▮" .. Descricao..Emoji)
    print(" ▮")
    print(" ▮   Onde o mostro nasce: Qualquer lugar exceto o Oceano e a dimensão do End")
    print(" ▮")
    print(" ▮   Comportamento: Hosti😈")
    print(" ▮")
    print(" ▮  Sua fraqueza: Gatos😼")
    print(" ▮")
    print(" ▮  Seu som: "..Som)
    print(" ▮")
    print ("▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃▃")

end
-- Variável de controle do lado do RG
local ladoRG = "frente"

-- Loop para permitir alternar entre frente e verso
while true do
    os.execute("cls") -- Limpa o terminal (Windows)
    
    if ladoRG == "frente" then
        ExibirFrente()
    else
        ExibirVerso()
    end

    -- Pergunta ao usuário
    print("\nDigite [1] para virar o RG ou [0] para sair:")
    local opcao = io.read()

    if opcao == "1" then
        -- Alternar entre frente e verso
        if ladoRG == "frente" then
            ladoRG = "verso"
        else
            ladoRG = "frente"
        end
    elseif opcao == "0" then
        break -- Sai do loop
    else
        print("Opção inválida! Tente novamente.")
    end
end
