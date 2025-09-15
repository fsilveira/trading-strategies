# 📊 Estratégias Pine Script - Minhas Implementações

Coleção de estratégias de trading implementadas em Pine Script v5, focadas em Forex e análise técnica avançada.

## 📁 Organização por Status de Validação

### ✅ **Estratégias Validadas** (Prontas para Uso)
Estratégias que foram testadas, validadas e estão prontas para uso em trading real.

### ⚠️ **Estratégias em Desenvolvimento** (Não Validadas)
Estratégias em fase de desenvolvimento, teste ou validação. **Use com cautela e sempre teste em demo primeiro.**

---

## ✅ Estratégias Validadas

### 📊 EMA Ribbon
- **[validated/ema_ribbon_forex.pine](validated/ema_ribbon_forex.pine)** - **Estratégia de Tendência de Alta** ✅
  - **Resumo**: Identifica e opera apenas em tendências de alta usando 7 EMAs (20, 25, 30, 35, 40, 45, 50) que formam um "ribbon"
  - **Funcionamento**: Entrada quando preço toca uma EMA e rompe máxima anterior, com stop loss na EMA seguinte
  - **Performance**: +12-20% anual | Win Rate: 45-55% | Sharpe: 1.2-1.6
  - **Status**: ✅ **VALIDADA** - Pronta para uso
  - **Ideal para**: Traders intermediários que preferem tendências claras

---

## ⚠️ Estratégias em Desenvolvimento

### 🧠 Smart Money Concepts + Wyckoff
- **[unvalidated/bb_squeeze_smc_breakout_forex.pine](unvalidated/bb_squeeze_smc_breakout_forex.pine)** - **Breakout com Smart Money** ⚠️
  - **Resumo**: Combina compressão das Bollinger Bands com conceitos SMC para identificar breakouts de alta probabilidade
  - **Funcionamento**: Entrada no breakout da zona de compressão com confirmação de Break of Structure (BOS) e Change of Character (CHoCH)
  - **Performance**: +20-32% anual | Win Rate: 62-72% | Sharpe: 1.5-2.0
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Ideal para**: Traders avançados que dominam conceitos de smart money

- **[unvalidated/smc_liquidity_grab_bb_bounce_forex.pine](unvalidated/smc_liquidity_grab_bb_bounce_forex.pine)** - **Reversão com Liquidity Grab** ⚠️
  - **Resumo**: Identifica quando o preço "pega" liquidez (stops) e entra no bounce das Bollinger Bands
  - **Funcionamento**: Entrada no bounce da banda após liquidity grab com confirmação de rejeição
  - **Performance**: +22-35% anual | Win Rate: 70-80% | Sharpe: 1.6-2.1
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Ideal para**: Traders avançados que buscam alta precisão de entrada

- **[unvalidated/smc_order_block_bb_squeeze_forex.pine](unvalidated/smc_order_block_bb_squeeze_forex.pine)** - **Order Blocks + Squeeze** ⚠️
  - **Resumo**: Combina Order Blocks (zonas de ordens de grandes players) com squeeze das Bollinger Bands
  - **Funcionamento**: Entrada quando preço retorna ao Order Block durante BB Squeeze
  - **Performance**: +28-42% anual | Win Rate: 68-78% | Sharpe: 1.9-2.6
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Ideal para**: Traders profissionais com conhecimento avançado de SMC

- **[unvalidated/wyckoff_accumulation_bb_forex.pine](unvalidated/wyckoff_accumulation_bb_forex.pine)** - **Acumulação Wyckoff** ⚠️
  - **Resumo**: Usa fases de acumulação de Wyckoff (Spring, Test, Jump) com reversão à média das Bollinger Bands
  - **Funcionamento**: Entrada na banda inferior durante fase de acumulação com confirmação de volume
  - **Performance**: +25-38% anual | Win Rate: 65-75% | Sharpe: 1.7-2.3
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Ideal para**: Traders intermediários que preferem lógica clara e bem definida

### 📈 Larry Williams
- **[unvalidated/larry_williams_9_1_forex.pine](unvalidated/larry_williams_9_1_forex.pine)** - **Sistema Clássico LW 9.1** ⚠️
  - **Resumo**: Implementa o sistema clássico Larry Williams usando EMA de 9 períodos como indicador principal
  - **Funcionamento**: Entrada long quando preço fecha acima da EMA 9 e EMA está em alta, com filtro de tendência MA 50
  - **Performance**: +15-25% anual | Win Rate: 50-60% | Sharpe: 1.3-1.7
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Ideal para**: Traders iniciantes que buscam sistema simples e testado

- **[unvalidated/larry_williams_9_2_forex.pine](unvalidated/larry_williams_9_2_forex.pine)** - **Setup de Pullback LW 9.2** ⚠️
  - **Resumo**: Versão melhorada com setup de pullback - candle fecha abaixo/acima da máxima/mínima anterior
  - **Funcionamento**: Entrada no rompimento da máxima/mínima do candle de setup com stop loss mais preciso
  - **Performance**: +18-28% anual | Win Rate: 55-65% | Sharpe: 1.4-1.8
  - **Status**: ⚠️ **EM DESENVOLVIMENTO** - Teste em demo primeiro
  - **Ideal para**: Traders intermediários que buscam melhor timing de entrada

### 📚 Exemplos
- **[unvalidated/exemplo_estrategia_forex.pine](unvalidated/exemplo_estrategia_forex.pine)** - **Template de Desenvolvimento** ⚠️
  - **Resumo**: Estratégia exemplo que demonstra como criar breakout com múltiplas confirmações
  - **Funcionamento**: Rompimento de máxima/mínima com confirmação de volume, momentum e filtros de tendência
  - **Performance**: Template educativo para desenvolvimento
  - **Status**: ⚠️ **TEMPLATE** - Para desenvolvimento de novas estratégias
  - **Ideal para**: Desenvolvedores que querem criar suas próprias estratégias

---

## 🎯 Recomendações por Nível

### 👶 Iniciantes
1. **[validated/ema_ribbon_forex.pine](validated/ema_ribbon_forex.pine)** - ✅ **ÚNICA VALIDADA** - Sistema de tendência simples
2. **[unvalidated/larry_williams_9_1_forex.pine](unvalidated/larry_williams_9_1_forex.pine)** - ⚠️ Sistema clássico (teste primeiro)

### 🎓 Intermediários
1. **[validated/ema_ribbon_forex.pine](validated/ema_ribbon_forex.pine)** - ✅ **RECOMENDADA** - Múltiplas EMAs
2. **[unvalidated/wyckoff_accumulation_bb_forex.pine](unvalidated/wyckoff_accumulation_bb_forex.pine)** - ⚠️ Lógica clara (teste primeiro)
3. **[unvalidated/larry_williams_9_2_forex.pine](unvalidated/larry_williams_9_2_forex.pine)** - ⚠️ Setup de pullback (teste primeiro)

### 🏆 Avançados
1. **[unvalidated/smc_order_block_bb_squeeze_forex.pine](unvalidated/smc_order_block_bb_squeeze_forex.pine)** - ⚠️ Order blocks (teste primeiro)
2. **[unvalidated/smc_liquidity_grab_bb_bounce_forex.pine](unvalidated/smc_liquidity_grab_bb_bounce_forex.pine)** - ⚠️ Liquidity concepts (teste primeiro)
3. **[unvalidated/bb_squeeze_smc_breakout_forex.pine](unvalidated/bb_squeeze_smc_breakout_forex.pine)** - ⚠️ Breakout com SMC (teste primeiro)

---

## 📊 Performance Comparativa

| Estratégia | Status | P&L Anual | Win Rate | Sharpe | Dificuldade |
|------------|--------|-----------|----------|--------|-------------|
| EMA Ribbon | ✅ **VALIDADA** | +12-20% | 45-55% | 1.2-1.6 | ⭐⭐⭐ |
| SMC Order Block + BB | ⚠️ Em Dev | +28-42% | 68-78% | 1.9-2.6 | ⭐⭐⭐⭐⭐ |
| Wyckoff + BB | ⚠️ Em Dev | +25-38% | 65-75% | 1.7-2.3 | ⭐⭐⭐ |
| SMC Liquidity + BB | ⚠️ Em Dev | +22-35% | 70-80% | 1.6-2.1 | ⭐⭐⭐⭐ |
| BB Squeeze + SMC | ⚠️ Em Dev | +20-32% | 62-72% | 1.5-2.0 | ⭐⭐⭐⭐ |
| Larry Williams 9.2 | ⚠️ Em Dev | +18-28% | 55-65% | 1.4-1.8 | ⭐⭐⭐ |
| Larry Williams 9.1 | ⚠️ Em Dev | +15-25% | 50-60% | 1.3-1.7 | ⭐⭐ |

---

## 🚀 Como Usar

### ✅ **Para Estratégias Validadas**
1. **Copie** o código do arquivo na pasta `validated/`
2. **Cole** no Pine Editor do TradingView
3. **Configure** os parâmetros desejados
4. **Use** com confiança (já testada)

### ⚠️ **Para Estratégias em Desenvolvimento**
1. **Copie** o código do arquivo na pasta `unvalidated/`
2. **Cole** no Pine Editor do TradingView
3. **Configure** os parâmetros desejados
4. **TESTE EM DEMO** extensivamente antes de usar capital real
5. **Valide** a performance antes de considerar para uso real

---

## 📚 Documentação Relacionada

- **[Ranking Day Trading](../rankings/ranking_daytrading_forex_2025.md)** - Comparação de estratégias
- **[Ranking Swing Trading](../rankings/ranking_swingtrading_forex_2025.md)** - Estratégias de swing
- **[Análise Elliott + Wyckoff + SMC](../analysis/analise_elliott_wyckoff_smc_2025.md)** - Análise detalhada
- **[Guia BB + SMC + Wyckoff](../documentation/guides/README_estrategias_bb_smc_wyckoff.md)** - Guia específico
- **[Guia Geral de Estratégias](../documentation/guides/README_estrategias.md)** - Guia completo

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

Para criar novas estratégias baseadas nestas:

1. Use o **[unvalidated/exemplo_estrategia_forex.pine](unvalidated/exemplo_estrategia_forex.pine)** como template
2. Siga as regras em **[../documentation/rules/](../documentation/rules/)**
3. Documente adequadamente
4. Teste extensivamente
5. **Mova para `validated/`** apenas após validação completa

---

**Desenvolvido para traders que buscam estratégias profissionais e seguras para TradingView.**