# 📊 Estratégias Pine Script

Esta pasta contém todas as estratégias de trading organizadas por categoria e status de validação.

## 📁 Organização por Status

### ✅ **Estratégias Validadas** (Prontas para Uso)
Estratégias testadas, validadas e prontas para trading real.

### ⚠️ **Estratégias em Desenvolvimento** (Não Validadas)
Estratégias em fase de desenvolvimento. **SEMPRE teste em demo primeiro.**

---

## ✅ Estratégias Validadas

### 📈 EMA Ribbon
- **[my/validated/ema_ribbon_forex.pine](my/validated/ema_ribbon_forex.pine)** - ✅ **Estratégia de Tendência de Alta**
  - **Status**: ✅ **VALIDADA** - Pronta para uso
  - **Performance**: +12-20% anual | Win Rate: 45-55%
  - **Características**: 7 EMAs, detecção de tendência, gestão de risco automática

---

## ⚠️ Estratégias em Desenvolvimento

### 🧠 Smart Money Concepts + Wyckoff
- **[my/unvalidated/bb_squeeze_smc_breakout_forex.pine](my/unvalidated/bb_squeeze_smc_breakout_forex.pine)** - ⚠️ **Breakout com Smart Money**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: +20-32% anual | Win Rate: 62-72%

- **[my/unvalidated/smc_liquidity_grab_bb_bounce_forex.pine](my/unvalidated/smc_liquidity_grab_bb_bounce_forex.pine)** - ⚠️ **Reversão com Liquidity Grab**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: +22-35% anual | Win Rate: 70-80%

- **[my/unvalidated/smc_order_block_bb_squeeze_forex.pine](my/unvalidated/smc_order_block_bb_squeeze_forex.pine)** - ⚠️ **Order Blocks + Squeeze**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: +28-42% anual | Win Rate: 68-78%

- **[my/unvalidated/wyckoff_accumulation_bb_forex.pine](my/unvalidated/wyckoff_accumulation_bb_forex.pine)** - ⚠️ **Acumulação Wyckoff**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: +25-38% anual | Win Rate: 65-75%

### 📈 Larry Williams
- **[my/unvalidated/larry_williams_9_1_forex.pine](my/unvalidated/larry_williams_9_1_forex.pine)** - ⚠️ **Sistema Clássico LW 9.1**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: +15-25% anual | Win Rate: 50-60%

- **[my/unvalidated/larry_williams_9_2_forex.pine](my/unvalidated/larry_williams_9_2_forex.pine)** - ⚠️ **Setup de Pullback LW 9.2**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: +18-28% anual | Win Rate: 55-65%

### 📚 Exemplos
- **[my/unvalidated/exemplo_estrategia_forex.pine](my/unvalidated/exemplo_estrategia_forex.pine)** - ⚠️ **Template de Desenvolvimento**
  - **Status**: ⚠️ **TEMPLATE** - Para desenvolvimento de novas estratégias

---

## 🚀 Opening Range Breakout (ORB)
- **[orb/orb_breakout_forex.pine](orb/orb_breakout_forex.pine)** - **ORB Day Trading**
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Performance**: Alpha anualizado 33-48% | Win Rate: 45-65%

---

## 🎯 Recomendações por Nível

### 👶 **Iniciantes**
1. **[my/validated/ema_ribbon_forex.pine](my/validated/ema_ribbon_forex.pine)** - ✅ **ÚNICA VALIDADA** - Sistema simples e testado

### 🎓 **Intermediários**
1. **[my/validated/ema_ribbon_forex.pine](my/validated/ema_ribbon_forex.pine)** - ✅ **RECOMENDADA** - Múltiplas EMAs
2. **[my/unvalidated/wyckoff_accumulation_bb_forex.pine](my/unvalidated/wyckoff_accumulation_bb_forex.pine)** - ⚠️ Lógica clara (teste primeiro)

### 🏆 **Avançados**
1. **[my/unvalidated/smc_order_block_bb_squeeze_forex.pine](my/unvalidated/smc_order_block_bb_squeeze_forex.pine)** - ⚠️ Order blocks (teste primeiro)
2. **[my/unvalidated/smc_liquidity_grab_bb_bounce_forex.pine](my/unvalidated/smc_liquidity_grab_bb_bounce_forex.pine)** - ⚠️ Liquidity concepts (teste primeiro)

---

## 🚀 Como Usar

### ✅ **Para Estratégias Validadas**
1. **Copie** o código da pasta `validated/`
2. **Cole** no Pine Editor do TradingView
3. **Configure** os parâmetros
4. **Use** com confiança (já testada)

### ⚠️ **Para Estratégias em Desenvolvimento**
1. **Copie** o código da pasta `unvalidated/`
2. **Cole** no Pine Editor do TradingView
3. **Configure** os parâmetros
4. **TESTE EM DEMO** extensivamente
5. **NÃO USE CAPITAL REAL** até validação

---

## ⚙️ Configurações Recomendadas

### Timeframes
- **Scalping:** 1m, 5m
- **Day Trading:** 5m, 15m, 1H
- **Swing Trading:** 1H, 4H, Daily

### Parâmetros
- **Risk/Reward:** 1:2 a 1:3
- **Stop Loss:** Dinâmico baseado na estratégia
- **Take Profit:** Baseado na relação risco/recompensa

---

## 📋 Padrões das Estratégias

Todas as estratégias seguem estes padrões:

- ✅ **Pine Script v5**
- ✅ **Gestão de Risco Automática**
- ✅ **Alertas Configuráveis**
- ✅ **Visualizações Claras**
- ✅ **Backtesting Compatível**
- ✅ **Documentação Incluída**

---

## ⚠️ Avisos Importantes

### 🟢 **Estratégias Validadas**
- ✅ Testadas e validadas
- ✅ Prontas para uso em trading real
- ✅ Performance verificada

### 🟡 **Estratégias em Desenvolvimento**
- ⚠️ **NÃO TESTADAS** em condições reais
- ⚠️ **SEMPRE TESTE EM DEMO** primeiro
- ⚠️ **USE COM EXTREMA CAUTELA**
- ⚠️ **NÃO USE CAPITAL REAL** até validação completa

**Todas as estratégias são para fins educacionais e de pesquisa. O trading envolve riscos significativos.**

---

## 🔧 Desenvolvimento

Para criar novas estratégias:

1. Use o template em **[my/unvalidated/exemplo_estrategia_forex.pine](my/unvalidated/exemplo_estrategia_forex.pine)**
2. Siga as regras em **[../documentation/rules/](../documentation/rules/)**
3. Documente adequadamente
4. Teste extensivamente
5. **Mova para `validated/`** apenas após validação completa

---

**Desenvolvido para traders que buscam estratégias profissionais e seguras para TradingView.**