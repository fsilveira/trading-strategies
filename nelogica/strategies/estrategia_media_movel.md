# Estratégia de Média Móvel - NTSL

## Descrição
Estratégia simples de trading baseada no cruzamento de duas médias móveis (20 e 50 períodos).

## Lógica da Estratégia
- **Compra**: Quando a média móvel de 20 períodos cruza acima da média móvel de 50 períodos
- **Venda**: Quando a média móvel de 20 períodos cruza abaixo da média móvel de 50 períodos

## Código NTSL

```pascal
// Estratégia simples de média móvel
var
  MA_20: Float;
  MA_50: Float;

begin
  MA_20 := Media(20, Close);
  MA_50 := Media(50, Close);
  
  if (MA_20 > MA_50) and (MA_20[1] <= MA_50[1]) then
    BuyAtMarket;
    
  if (MA_20 < MA_50) and (MA_20[1] >= MA_50[1]) then
    SellShortAtMarket;
end;
```

## Versão Alternativa com Estruturas Begin/End

```pascal
// Estratégia simples de média móvel (versão expandida)
var
  MA_20: Float;
  MA_50: Float;

begin
  MA_20 := Media(20, Close);
  MA_50 := Media(50, Close);
  
  if (MA_20 > MA_50) and (MA_20[1] <= MA_50[1]) then
  begin
    BuyAtMarket;
  end;
    
  if (MA_20 < MA_50) and (MA_20[1] >= MA_50[1]) then
  begin
    SellShortAtMarket;
  end;
end;
```

## Correções Aplicadas

### ✅ Funções NTSL Corretas:
- `Media(período, série)` - Função para média móvel
- `Close` - Série de preços de fechamento
- `BuyAtMarket` - Comando de compra (abrir posição longa)
- `SellShortAtMarket` - Comando de venda (abrir posição curta)

### ✅ Sintaxe NTSL:
- Ponto e vírgula após comandos
- Indentação consistente (2 espaços)
- Espaçamento correto nos operadores
- Estruturas condicionais com sintaxe correta

## Parâmetros
- **MA_20**: Média móvel de 20 períodos
- **MA_50**: Média móvel de 50 períodos

## Condições de Entrada/Saída
- **Entrada Longa**: MA_20 > MA_50 AND MA_20[1] <= MA_50[1]
- **Entrada Curta**: MA_20 < MA_50 AND MA_20[1] >= MA_50[1]

## Funções de Trading NTSL

### Funções para Abrir Posições:
- **`BuyAtMarket`** - Abre posição longa (compra)
- **`SellShortAtMarket`** - Abre posição curta (venda a descoberto)

### Funções para Fechar Posições:
- **`SellToCoverAtMarket`** - Fecha posição longa (vende para cobrir)
- **`BuyToCoverAtMarket`** - Fecha posição curta (compra para cobrir)

### Funções de Verificação:
- **`IsBought`** - Verifica se há posição longa aberta
- **`IsSold`** - Verifica se há posição curta aberta
- **`HasPosition`** - Verifica se há qualquer posição aberta

## Observações
- Esta é uma estratégia de tendência clássica
- Funciona melhor em mercados com tendência definida
- Pode gerar sinais falsos em mercados laterais
- Recomenda-se usar stop loss e take profit
- A estratégia abre posições longas e curtas baseadas no cruzamento das médias
