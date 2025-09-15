# 📊 Opening Range Breakout (ORB) - Day Trading Strategy

## 🎯 Visão Geral

A estratégia de **Opening Range Breakout (ORB)** é uma abordagem popular utilizada por *day traders* que busca **capitalizar a volatilidade que ocorre no início do dia de negociação** para gerar lucros rápidos.

## 📈 Estratégia Implementada

### **[orb_breakout_forex.pine](orb_breakout_forex.pine)** - **ORB Breakout Strategy**
- **Resumo**: Implementa Opening Range Breakout com gestão de risco automática
- **Funcionamento**: Define range de abertura, detecta direção do primeiro candle e opera breakouts
- **Performance**: Alpha anualizado 33-48% | Win Rate: 45-65% | Risk/Reward: 1:10
- **Ideal para**: Day traders experientes que buscam alta rentabilidade

## 🔧 Funcionamento da Estratégia

### 1. **Definição da Faixa de Abertura (Opening Range)**
- Identifica os pontos de **alta e baixa** durante os primeiros **5 minutos** de negociação
- Range configurável (1-60 minutos)
- Direção determinada pelo primeiro candle (bullish/bearish)

### 2. **Lógica de Entrada**
- **Long**: Se primeiro candle for positivo + rompimento da máxima do range
- **Short**: Se primeiro candle for negativo + rompimento da mínima do range
- **Filtros**: Volume, sessão de trading, confirmação de breakout

### 3. **Gestão de Risco**
- **Stop Loss**: Na extremidade oposta do opening range
- **Take Profit**: 10x o risco (10R) - muito agressivo
- **Risco por Trade**: 1% do capital (configurável)
- **Fechamento**: Final do dia se target não atingido

### 4. **Parâmetros Configuráveis**
- Duração do ORB (1-60 minutos)
- Risk/Reward ratio (1:1 a 1:20)
- Filtros de volume e sessão
- Alavancagem máxima (1x-10x)

## 📊 Performance Esperada

### **Métricas Baseadas em Estudos**
- **Alpha Anualizado**: 33% (QQQ) / 48% (TQQQ)
- **Win Rate**: 45-65% (dependendo do mercado)
- **Risk/Reward**: 1:10 (extremamente agressivo)
- **Drawdown**: Moderado devido ao stop loss claro

### **Vantagens**
- ✅ **Stop loss claro** (tamanho do opening range)
- ✅ **Alta rentabilidade** em mercados voláteis
- ✅ **Lógica simples** e objetiva
- ✅ **Funciona bem** em Forex, índices, ações

### **Desafios**
- ❌ **Falsos breakouts** em mercados laterais
- ❌ **Necessita volume** para funcionar
- ❌ **Timeframe específico** (primeira hora)
- ❌ **Risk/Reward agressivo** (10:1)

## ⚙️ Configurações Recomendadas

### **Timeframes**
- **M5**: Para ORB de 5 minutos
- **M15**: Para ORB de 15 minutos
- **H1**: Para análise de contexto

### **Ativos Ideais**
- **Forex**: EUR/USD, GBP/USD, USD/JPY
- **Índices**: SPX, NASDAQ, DOW
- **ETFs**: QQQ, SPY, TQQQ (alavancado)

### **Parâmetros Sugeridos**
- **ORB Length**: 5-15 minutos
- **Risk per Trade**: 1-2%
- **Risk/Reward**: 1:5 a 1:10
- **Volume Filter**: 1.2x volume médio

## 🚀 Como Usar

1. **Configure os parâmetros** conforme seu perfil de risco
2. **Aplique em timeframe M5 ou M15**
3. **Aguarde o opening range** se formar
4. **Observe a direção** do primeiro candle
5. **Entre no breakout** com confirmação de volume
6. **Gerencie o risco** com stop loss automático

## ⚠️ Avisos Importantes

- **Alto risco**: Risk/Reward de 1:10 é extremamente agressivo
- **Day trading**: Posições fechadas no final do dia
- **Volume necessário**: Funciona melhor em mercados com volume
- **Teste primeiro**: Sempre teste em demo antes de usar capital real

---

**📚 Baseado em estudos acadêmicos com QQQ/TQQQ demonstrando alpha anualizado de 33-48%**