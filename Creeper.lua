




os.execute("chcp 65001")


-- Criatura
local NomeMonstro = "Creeper"
local Descricao = "Tome cuidado quando for minerar, você pode ouvir um TSSSSSSSS"
local emoji = "💥"

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
print("------------------------------------------------")
print("| "..NomeMonstro)
print("| "..Descricao)
print("| "..emoji)
print("| FOTO DO MELIANTE")
print("|🟩🟩🟩🟩🟩🟩🟩🟩")
print("|🟩⬛⬛🟩🟩⬛⬛🟩")
print("|🟩⬛⬛🟩🟩⬛⬛🟩")
print("|🟩🟩🟩⬛⬛🟩🟩🟩")
print("|🟩🟩🟩⬛⬛🟩🟩🟩")
print("|🟩🟩⬛⬛⬛⬛🟩🟩")
print("|🟩🟩⬛🟩🟩⬛🟩🟩")
print("|🟩🟩🟩🟩🟩🟩🟩🟩")
print("|")
print("| Atributos")
print("|")
print("| Vida =         ".. BarradeProgresso(Vida))
print("| Defesa =       ".. BarradeProgresso(Defesa))
print("| Ataque =       ".. BarradeProgresso(Ataque))
print("| Inteligencia = ".. BarradeProgresso(Inteligencia))
print("| Velocidade =   ".. BarradeProgresso(Velocidade))
print("------------------------------------------------")