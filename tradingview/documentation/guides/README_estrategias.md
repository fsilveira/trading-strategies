# 📊 ESTRATÉGIAS DE BACKTEST - TRADINGVIEW PINE SCRIPT

## 🎯 VISÃO GERAL

Este diretório contém regras e exemplos para criação de estratégias de backtest profissionais para TradingView usando Pine Script. O foco é em estratégias de forex com gerenciamento de risco rigoroso e validação robusta.

## 📁 ARQUIVOS INCLUÍDOS

### 1. `cursor_rule_pine_script_strategies.md`
**Regra completa** para criação de estratégias Pine Script.
- Estrutura técnica obrigatória
- Gerenciamento de risco
- Lógica de trading
- Validação e métricas
- Exemplos práticos

### 2. `.cursorrules`
**Configuração do Cursor** para aplicação automática das regras.
- Regras obrigatórias
- Template base
- Checklist de validação
- Processo de desenvolvimento

### 3. `exemplo_estrategia_forex.pine`
**Exemplo prático** de estratégia completa.
- Breakout com confirmação
- Múltiplos filtros
- Gerenciamento de risco
- Visualizações avançadas

## 🚀 COMO USAR

### PASSO 1: CONFIGURAÇÃO
1. O arquivo `.cursorrules` já está configurado
2. As regras serão aplicadas automaticamente
3. O Cursor seguirá as diretrizes estabelecidas

### PASSO 2: SOLICITAÇÃO DE ESTRATÉGIA
```
Crie uma estratégia de [tipo] para [par de moeda] no timeframe [X]
```

Exemplos:
- "Crie uma estratégia de breakout para EUR/USD no H1"
- "Desenvolva uma estratégia de reversão para GBP/JPY no H4"
- "Faça uma estratégia de trend following para USD/CHF no D1"

### PASSO 3: VALIDAÇÃO
O Cursor automaticamente:
- Seguirá o template base
- Implementará gerenciamento de risco
- Usará múltiplos filtros
- Incluirá comentários explicativos
- Validará com checklist

## 🛠️ ESTRUTURA OBRIGATÓRIA

### 1. CONFIGURAÇÕES BASE
```pinescript
//@version=5
strategy("Nome", overlay=true, 
         initial_capital=10000, 
         default_qty_type=strategy.percent_of_equity,
         commission_type=strategy.commission.percent,
         commission_value=0.0001)
```

### 2. INPUTS CONFIGURÁVEIS
- Parâmetros de risco
- Configurações de indicadores
- Filtros de tempo
- Filtros de volatilidade

### 3. CÁLCULOS DE INDICADORES
- Tendência (EMA, SMA, MACD)
- Momentum (RSI, Stochastic)
- Volatilidade (ATR, Bollinger)
- Volume (OBV, VWAP)

### 4. CONDIÇÕES DE FILTROS
- Múltiplos filtros obrigatórios
- Confirmações de sinal
- Contexto de mercado

### 5. LÓGICA DE ENTRADA/SAÍDA
- Condições de entrada
- Stop loss obrigatório
- Take profit calculado
- Trailing stops opcionais

### 6. PLOTS E VISUALIZAÇÕES
- Indicadores no gráfico
- Sinais de entrada/saída
- Níveis de suporte/resistência
- Background para sessões

## 📊 TIPOS DE ESTRATÉGIAS

### 1. BREAKOUT
- Rompimento de níveis
- Confirmação de volume
- Filtros de tendência

### 2. REVERSÃO
- Níveis extremos (RSI, Stochastic)
- Divergências
- Confirmação de momentum

### 3. TREND FOLLOWING
- Seguimento de tendência
- Múltiplas confirmações
- Filtros de volatilidade

### 4. MEAN REVERSION
- Retorno à média
- Bollinger Bands
- Filtros de sobrecompra/sobrevenda

## 🎯 FILTROS OBRIGATÓRIOS

### 1. TENDÊNCIA
- Médias móveis
- MACD
- ADX

### 2. MOMENTUM
- RSI
- Stochastic
- Williams %R

### 3. VOLATILIDADE
- ATR
- Bollinger Bands
- Keltner Channels

### 4. TEMPO
- Sessões de trading
- Horários de notícias
- Filtros de liquidez

### 5. VOLUME
- Confirmação de volume
- Volume spikes
- VWAP

## 🛡️ GERENCIAMENTO DE RISCO

### OBRIGATÓRIO
- **Stop Loss**: Sempre implementar
- **Take Profit**: Múltiplos targets
- **Position Sizing**: Baseado em risco
- **Risk/Reward**: Mínimo 1:2

### CONFIGURAÇÕES
- Risco por trade: 1-3%
- Capital inicial: 10.000
- Comissão forex: 0.0001%
- Trailing stops: Opcional

## 📈 MÉTRICAS DE VALIDAÇÃO

### MÍNIMAS ACEITÁVEIS
- Sharpe Ratio > 1.0
- Max Drawdown < 20%
- Win Rate > 40%
- Profit Factor > 1.2

### IDEAIS
- Sharpe Ratio > 1.5
- Max Drawdown < 15%
- Win Rate > 50%
- Profit Factor > 1.5

## 🔄 PROCESSO DE DESENVOLVIMENTO

1. **Definição**: Objetivo e timeframe
2. **Conceito**: Lógica de entrada/saída
3. **Implementação**: Código Pine Script
4. **Teste**: Backtest histórico
5. **Otimização**: Ajuste de parâmetros
6. **Validação**: Teste out-of-sample
7. **Documentação**: Comentários e explicações

## 📚 INDICADORES RECOMENDADOS

### TENDÊNCIA
- **EMA**: 20, 50, 200
- **SMA**: 20, 50, 200
- **MACD**: (12,26,9)
- **ADX**: 14

### MOMENTUM
- **RSI**: 14
- **Stochastic**: (14,3,3)
- **Williams %R**: 14

### VOLATILIDADE
- **ATR**: 14
- **Bollinger Bands**: (20,2)
- **Keltner**: (20,1.5)

### VOLUME
- **OBV**: On Balance Volume
- **VWAP**: Volume Weighted Average Price
- **Volume Profile**: Perfil de volume

## 🎯 EXEMPLOS DE SOLICITAÇÕES

### BREAKOUT
```
"Crie uma estratégia de breakout para EUR/USD no H1 com:
- Confirmação de volume
- Filtro de tendência
- Stop loss baseado em ATR
- Risk/Reward 1:3"
```

### REVERSÃO
```
"Desenvolva uma estratégia de reversão para GBP/JPY no H4 com:
- RSI oversold/overbought
- Confirmação de divergência
- Filtro de sessão de Londres
- Trailing stop opcional"
```

### TREND FOLLOWING
```
"Faça uma estratégia de trend following para USD/CHF no D1 com:
- Múltiplas médias móveis
- Filtro de ADX
- Breakout de consolidação
- Gerenciamento de risco 2%"
```

## ⚠️ REGRAS DE SEGURANÇA

### OBRIGATÓRIO
- Stop Loss em TODAS as operações
- Position sizing baseado em risco
- Validação em múltiplos períodos
- Código bem comentado

### PROIBIDO
- Operar sem stop loss
- Risco > 3% por trade
- Overfitting excessivo
- Sinais não confirmados

## 🔍 CHECKLIST DE VALIDAÇÃO

Antes de usar uma estratégia, verificar:

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

## 📞 SUPORTE

Para dúvidas sobre o uso das regras ou criação de estratégias:

1. Consulte a documentação completa
2. Verifique o exemplo prático
3. Use o checklist de validação
4. Teste em dados históricos

## 🎯 PRÓXIMOS PASSOS

1. **Teste**: Use o exemplo fornecido
2. **Adapte**: Modifique para seus pares preferidos
3. **Valide**: Teste em diferentes períodos
4. **Otimize**: Ajuste parâmetros conforme necessário
5. **Documente**: Mantenha registro das estratégias

---

**Desenvolvido para traders que buscam estratégias profissionais e seguras para TradingView.**
