# 📈 EMA Ribbon Strategies

Estratégias baseadas em múltiplas médias móveis exponenciais (EMA Ribbon) para identificação de tendências e sinais de entrada.

## 📊 Estratégia Principal

### `ema_ribbon_forex.pine`

**Descrição:** Estratégia de tendência de alta baseada em 7 EMAs com detecção rigorosa de condições de entrada.

#### 🎯 Características

**EMAs Utilizadas:**
- EMA 20 (branca, espessura 2)
- EMA 25 (amarela)
- EMA 30 (amarela)
- EMA 35 (amarela)
- EMA 40 (amarela)
- EMA 45 (amarela)
- EMA 50 (amarela)

**Lógica de Tendência:**
1. **Alinhamento:** EMA_20 > EMA_25 > EMA_30 > EMA_35 > EMA_40 > EMA_45 > EMA_50
2. **Momentum:** Todas as EMAs atuais > EMAs do candle anterior

**Sinais de Entrada:**
1. **Tendência de Alta:** Condições acima atendidas
2. **Toque em EMA:** Preço toca EMA 20, 25, 30, 35, 40 ou 45 (não 50)
3. **Rompimento:** Preço cruza máxima do candle anterior
4. **Sem Posição:** Não há posição aberta

#### ⚙️ Parâmetros Configuráveis

- **Risk/Reward Ratio:** 1.0 a 10.0 (padrão: 3.0)
- **Mostrar Labels:** Liga/desliga labels das EMAs
- **Mostrar Sinais:** Liga/desliga marcadores de entrada

#### 🎨 Visualizações

- **EMAs:** Plotadas com cores distintas
- **Labels:** Mostra qual EMA foi tocada
- **Marcadores:** Sinais de entrada claramente identificados
- **Background:** Verde claro quando em tendência
- **Tabela:** Status em tempo real

#### 📊 Gestão de Risco

**Stop Loss:**
- Baseado na EMA seguinte à tocada
- EMA 20 → Stop na EMA 25
- EMA 25 → Stop na EMA 30
- EMA 30 → Stop na EMA 35
- EMA 35 → Stop na EMA 40
- EMA 40 → Stop na EMA 45
- EMA 45 → Stop na EMA 50

**Take Profit:**
- Relação risco/recompensa configurável
- Padrão: 3x o risco

#### 🔔 Alertas

- **Sinal de Entrada:** Notificação quando condições são atendidas
- **Mensagem:** Inclui qual EMA foi tocada

## 🚀 Como Usar

1. **Copie** o código do arquivo `.pine`
2. **Cole** no Pine Editor do TradingView
3. **Configure** os parâmetros desejados
4. **Adicione** ao gráfico
5. **Configure** alertas se necessário

## ⏰ Timeframes Recomendados

- **Day Trading:** 5m, 15m, 1H
- **Swing Trading:** 1H, 4H, Daily
- **Position Trading:** Daily, Weekly

## 💱 Ativos Recomendados

- **Forex:** EUR/USD, GBP/USD, USD/JPY, AUD/USD
- **Índices:** SPX, NASDAQ, DOW
- **Commodities:** Gold, Oil, Silver

## 📈 Vantagens

- ✅ **Filtro Rigoroso:** Só entra em tendências bem estabelecidas
- ✅ **Momentum Confirmado:** Todas as EMAs devem estar subindo
- ✅ **Gestão Automática:** Stop loss e take profit automáticos
- ✅ **Visualização Clara:** Fácil identificação de sinais
- ✅ **Alertas:** Notificações automáticas

## ⚠️ Considerações

- **Tendência de Alta Apenas:** Não opera em tendências de baixa
- **Condições Rigorosas:** Pode gerar poucos sinais em mercados laterais
- **Timeframe Dependente:** Funciona melhor em timeframes maiores
- **Gestão de Capital:** Sempre use gestão de risco adequada

## 🔧 Customizações Possíveis

- **Adicionar EMAs:** Incluir mais períodos
- **Modificar Ratios:** Ajustar relação risco/recompensa
- **Filtros Adicionais:** Incluir RSI, MACD, etc.
- **Timeframes Múltiplos:** Análise multi-timeframe

## 📚 Referências

- **Metodologia:** EMA Ribbon Trading
- **Base:** Múltiplas médias móveis exponenciais
- **Aplicação:** Identificação de tendências e reversões
