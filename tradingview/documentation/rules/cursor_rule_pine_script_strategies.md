# CURSOR RULE: Pine Script Trading Strategies Generator

## 🎯 OBJETIVO
Gerar estratégias de backtest completas e profissionais para TradingView em Pine Script, focadas em forex com gerenciamento de risco rigoroso e validação robusta.

## 📋 REGRAS OBRIGATÓRIAS

### 1. ESTRUTURA TÉCNICA BASE

#### Versão e Configurações
```pinescript
//@version=5
strategy("Nome da Estratégia", overlay=true, 
         initial_capital=10000, 
         default_qty_type=strategy.percent_of_equity,
         commission_type=strategy.commission.percent,
         commission_value=0.0001)
```

#### Gerenciamento de Risco Obrigatório
- **Stop Loss**: Sempre implementar com `strategy.exit()`
- **Take Profit**: Múltiplos targets quando apropriado
- **Risco por Trade**: 1-3% do capital máximo
- **Trailing Stops**: Implementar quando estratégia permitir
- **Position Sizing**: Baseado em risco, não em capital fixo

### 2. LÓGICA DE TRADING

#### Condições de Entrada/Saída
- **Múltiplos Filtros**: Nunca usar apenas um indicador
- **Confirmações**: Mínimo 2-3 confirmações de sinal
- **Contexto de Mercado**: Considerar tendência e volatilidade
- **Filtros de Tempo**: Evitar spreads altos e sessões específicas
- **Repintura**: Usar `barstate.isconfirmed` para evitar sinais falsos

#### Indicadores Técnicos
- **Combinação**: Momentum + Trend + Volatilidade
- **Parâmetros**: Sempre como inputs configuráveis
- **Timeframes**: Considerar múltiplos timeframes quando relevante
- **Customização**: Implementar indicadores personalizados se necessário

### 3. FOREX ESPECÍFICO

#### Particularidades do Mercado
- **Pares**: Considerar majors, minors e exóticos
- **Sessões**: Implementar filtros para Londres, NY, Tóquio
- **Spreads**: Usar spreads realistas por par de moeda
- **Carry Trades**: Considerar para swing trading
- **Volatilidade**: Filtros ATR e VIX quando aplicável

#### Correlações e Hedge
- **Correlações**: Verificar entre pares relacionados
- **Hedge**: Implementar quando apropriado
- **Notícias**: Considerar impacto de eventos econômicos

### 4. ESTRUTURA DE CÓDIGO

#### Organização Obrigatória
```pinescript
// 1. INPUTS CONFIGURÁVEIS
// 2. CÁLCULOS DE INDICADORES
// 3. CONDIÇÕES DE FILTROS
// 4. LÓGICA DE ENTRADA
// 5. LÓGICA DE SAÍDA
// 6. PLOTS E VISUALIZAÇÕES
```

#### Boas Práticas
- **Comentários**: Código bem documentado
- **Variáveis**: Nomes descritivos e claros
- **Funções**: Reutilizáveis e modulares
- **Performance**: Evitar cálculos desnecessários

### 5. VALIDAÇÃO E MÉTRICAS

#### Métricas Essenciais
- **Sharpe Ratio**: > 1.0
- **Max Drawdown**: < 20%
- **Win Rate**: Balanceado com Risk/Reward
- **Consistência**: Teste em diferentes períodos

#### Testes Robustos
- **Períodos**: Bull e bear markets
- **Walk-forward**: Análise progressiva
- **Out-of-sample**: Validação independente
- **Monte Carlo**: Quando possível

### 6. DAY TRADE vs SWING TRADE

#### Day Trade (M5-H1)
- **Foco**: Momentum e reversões rápidas
- **Stops**: Apertados e precisos
- **Frequência**: Múltiplas operações por dia
- **Filtros**: Spread e liquidez

#### Swing Trade (H4-D1)
- **Foco**: Tendências e reversões maiores
- **Stops**: Mais amplos e tolerantes
- **Frequência**: Poucas operações por semana
- **Análise**: Fundamental como filtro

## 🛠️ TEMPLATE BASE

### Estrutura Completa
```pinescript
//@version=5
strategy("Template Estratégia Forex", overlay=true, 
         initial_capital=10000, 
         default_qty_type=strategy.percent_of_equity,
         commission_type=strategy.commission.percent,
         commission_value=0.0001)

// ===== INPUTS CONFIGURÁVEIS =====
// Parâmetros de Risco
risk_per_trade = input.float(2.0, "Risco por Trade (%)", minval=0.1, maxval=5.0)
risk_reward_ratio = input.float(2.0, "Risk/Reward Ratio", minval=1.0, maxval=5.0)

// Parâmetros de Indicadores
rsi_length = input.int(14, "RSI Length", minval=1)
ma_fast = input.int(20, "MA Rápida", minval=1)
ma_slow = input.int(50, "MA Lenta", minval=1)

// Filtros de Tempo
use_time_filter = input.bool(true, "Usar Filtro de Tempo")
start_hour = input.int(8, "Hora Início", minval=0, maxval=23)
end_hour = input.int(17, "Hora Fim", minval=0, maxval=23)

// ===== CÁLCULOS DE INDICADORES =====
rsi = ta.rsi(close, rsi_length)
ma_fast_line = ta.sma(close, ma_fast)
ma_slow_line = ta.sma(close, ma_slow)
atr = ta.atr(14)

// ===== CONDIÇÕES DE FILTROS =====
// Filtro de Tendência
trend_bullish = ma_fast_line > ma_slow_line
trend_bearish = ma_fast_line < ma_slow_line

// Filtro de Momentum
rsi_oversold = rsi < 30
rsi_overbought = rsi > 70

// Filtro de Tempo
time_ok = not use_time_filter or (hour >= start_hour and hour <= end_hour)

// ===== LÓGICA DE ENTRADA =====
long_condition = trend_bullish and rsi_oversold and time_ok
short_condition = trend_bearish and rsi_overbought and time_ok

// ===== LÓGICA DE SAÍDA =====
if long_condition and barstate.isconfirmed
    stop_loss = close - (atr * 2)
    take_profit = close + (atr * 2 * risk_reward_ratio)
    
    strategy.entry("Long", strategy.long)
    strategy.exit("Long Exit", "Long", stop=stop_loss, limit=take_profit)

if short_condition and barstate.isconfirmed
    stop_loss = close + (atr * 2)
    take_profit = close - (atr * 2 * risk_reward_ratio)
    
    strategy.entry("Short", strategy.short)
    strategy.exit("Short Exit", "Short", stop=stop_loss, limit=take_profit)

// ===== PLOTS E VISUALIZAÇÕES =====
plot(ma_fast_line, "MA Rápida", color=color.blue)
plot(ma_slow_line, "MA Lenta", color=color.red)
plotchar(long_condition, "Long Signal", "▲", location.belowbar, color.green)
plotchar(short_condition, "Short Signal", "▼", location.abovebar, color.red)
```

## 📊 EXEMPLOS DE ESTRATÉGIAS

### 1. Estratégia de Breakout com Confirmação
```pinescript
// Breakout de resistência com confirmação de volume
breakout_condition = close > ta.highest(high, 20) and volume > ta.sma(volume, 20) * 1.5
```

### 2. Estratégia de Reversão com RSI
```pinescript
// Reversão em níveis extremos com divergência
rsi_divergence = ta.rsi(close, 14) > 70 and close < close[1] and close[1] < close[2]
```

### 3. Estratégia de Trend Following
```pinescript
// Seguimento de tendência com múltiplas confirmações
trend_confirmed = ta.ema(close, 20) > ta.ema(close, 50) and ta.ema(close, 50) > ta.ema(close, 200)
```

## ⚠️ REGRAS DE SEGURANÇA

### Obrigatório
- **Stop Loss**: Sempre implementar
- **Position Sizing**: Baseado em risco
- **Validação**: Testar em múltiplos períodos
- **Documentação**: Código bem comentado

### Proibido
- **Sem Stop Loss**: Nunca operar sem proteção
- **Risco Excessivo**: Máximo 3% por trade
- **Overfitting**: Evitar otimização excessiva
- **Repintura**: Usar apenas sinais confirmados

## 🎯 CHECKLIST DE VALIDAÇÃO

Antes de considerar uma estratégia completa, verificar:

- [ ] Versão 5 do Pine Script
- [ ] Configurações de capital e comissão
- [ ] Stop loss e take profit implementados
- [ ] Múltiplos filtros de entrada
- [ ] Gerenciamento de risco adequado
- [ ] Filtros de tempo quando aplicável
- [ ] Código bem comentado
- [ ] Plots para visualização
- [ ] Teste em diferentes períodos
- [ ] Métricas de performance calculadas

## 📈 MÉTRICAS DE SUCESSO

### Mínimas Aceitáveis
- **Sharpe Ratio**: > 1.0
- **Max Drawdown**: < 20%
- **Win Rate**: > 40%
- **Profit Factor**: > 1.2

### Ideais
- **Sharpe Ratio**: > 1.5
- **Max Drawdown**: < 15%
- **Win Rate**: > 50%
- **Profit Factor**: > 1.5

## 🔄 PROCESSO DE DESENVOLVIMENTO

1. **Definição**: Objetivo e timeframe da estratégia
2. **Conceito**: Lógica de entrada e saída
3. **Implementação**: Código Pine Script
4. **Teste**: Backtest em dados históricos
5. **Otimização**: Ajuste de parâmetros
6. **Validação**: Teste out-of-sample
7. **Documentação**: Comentários e explicações

## 📚 RECURSOS ADICIONAIS

### Indicadores Recomendados
- **Trend**: EMA, SMA, MACD, ADX
- **Momentum**: RSI, Stochastic, Williams %R
- **Volatilidade**: ATR, Bollinger Bands, Keltner
- **Volume**: OBV, VWAP, Volume Profile

### Funções Úteis
- `ta.highest()` / `ta.lowest()`
- `ta.crossover()` / `ta.crossunder()`
- `ta.rsi()`, `ta.sma()`, `ta.ema()`
- `strategy.position_size`
- `strategy.equity`

---

**Esta regra garante a criação de estratégias profissionais, seguras e testáveis para TradingView.**
