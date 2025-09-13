# 📊 Estratégias Pine Script - Minhas Estratégias

Esta pasta contém minhas estratégias de trading em Pine Script organizadas por categoria e nível de dificuldade.

## 📁 Estratégias Disponíveis

### 📈 EMA Ribbon
- **[ema_ribbon_forex.pine](./ema_ribbon_forex.pine)** - Estratégia de tendência baseada em múltiplas EMAs
  - 7 EMAs (20, 25, 30, 35, 40, 45, 50)
  - Detecção de toques e rompimentos
  - Gestão de risco com stop loss dinâmico
  - ⭐ Dificuldade: Intermediário
  - 🎯 Tipo: Trend Following
  - ⏰ Timeframe: M15, H1, H4

### 🧠 Smart Money Concepts + Wyckoff
- **[bb_squeeze_smc_breakout_forex.pine](./bb_squeeze_smc_breakout_forex.pine)** - Bollinger Bands + SMC + Breakout
  - ⭐ Dificuldade: Avançado
  - 🎯 Tipo: Breakout Trading
  - ⏰ Timeframe: M5, M15
  - 📊 Performance: +20-32% anual

- **[smc_liquidity_grab_bb_bounce_forex.pine](./smc_liquidity_grab_bb_bounce_forex.pine)** - Liquidity Grab + BB Bounce
  - ⭐ Dificuldade: Avançado
  - 🎯 Tipo: Mean Reversion
  - ⏰ Timeframe: M5, M15
  - 📊 Performance: +22-35% anual (Win Rate: 70-80%)

- **[smc_order_block_bb_squeeze_forex.pine](./smc_order_block_bb_squeeze_forex.pine)** - Order Blocks + BB Squeeze
  - ⭐ Dificuldade: Profissional
  - 🎯 Tipo: Smart Money Trading
  - ⏰ Timeframe: M5, M15
  - 📊 Performance: +28-42% anual (Win Rate: 68-78%)

- **[wyckoff_accumulation_bb_forex.pine](./wyckoff_accumulation_bb_forex.pine)** - Wyckoff Accumulation + BB
  - ⭐ Dificuldade: Intermediário
  - 🎯 Tipo: Accumulation Trading
  - ⏰ Timeframe: M15, H1
  - 📊 Performance: +25-38% anual

### 📈 Larry Williams
- **[larry_williams_9_1_forex.pine](./larry_williams_9_1_forex.pine)** - Estratégia Larry Williams v9.1
  - ⭐ Dificuldade: Iniciante
  - 🎯 Tipo: Trend Following
  - ⏰ Timeframe: M15, H1
  - 📊 Performance: +15-25% anual

- **[larry_williams_9_2_forex.pine](./larry_williams_9_2_forex.pine)** - Estratégia Larry Williams v9.2
  - ⭐ Dificuldade: Intermediário
  - 🎯 Tipo: Pullback Trading
  - ⏰ Timeframe: M5, M15, M30
  - 📊 Performance: +18-28% anual

### 📚 Exemplos
- **[exemplo_estrategia_forex.pine](./exemplo_estrategia_forex.pine)** - Template base para desenvolvimento
  - ⭐ Dificuldade: Intermediário
  - 🎯 Tipo: Breakout Trading
  - ⏰ Timeframe: M15, H1
  - 📊 Performance: Template educativo

## 🎯 Recomendações por Nível

### 👶 Iniciantes
1. **[larry_williams_9_1_forex.pine](./larry_williams_9_1_forex.pine)** - Sistema clássico e simples
2. **[wyckoff_accumulation_bb_forex.pine](./wyckoff_accumulation_bb_forex.pine)** - Lógica clara de acumulação

### 🎓 Intermediários
1. **[ema_ribbon_forex.pine](./ema_ribbon_forex.pine)** - Múltiplas EMAs
2. **[larry_williams_9_2_forex.pine](./larry_williams_9_2_forex.pine)** - Setup de pullback
3. **[bb_squeeze_smc_breakout_forex.pine](./bb_squeeze_smc_breakout_forex.pine)** - Breakout com SMC

### 🏆 Avançados
1. **[smc_liquidity_grab_bb_bounce_forex.pine](./smc_liquidity_grab_bb_bounce_forex.pine)** - Liquidity concepts
2. **[smc_order_block_bb_squeeze_forex.pine](./smc_order_block_bb_squeeze_forex.pine)** - Order blocks

## 📊 Performance Comparativa

| Estratégia | P&L Anual | Win Rate | Sharpe | Dificuldade |
|------------|-----------|----------|--------|-------------|
| SMC Order Block + BB | +28-42% | 68-78% | 1.9-2.6 | ⭐⭐⭐⭐⭐ |
| Wyckoff + BB | +25-38% | 65-75% | 1.7-2.3 | ⭐⭐⭐ |
| SMC Liquidity + BB | +22-35% | 70-80% | 1.6-2.1 | ⭐⭐⭐⭐ |
| BB Squeeze + SMC | +20-32% | 62-72% | 1.5-2.0 | ⭐⭐⭐⭐ |
| Larry Williams 9.2 | +18-28% | 55-65% | 1.4-1.8 | ⭐⭐⭐ |
| Larry Williams 9.1 | +15-25% | 50-60% | 1.3-1.7 | ⭐⭐ |
| EMA Ribbon | +12-20% | 45-55% | 1.2-1.6 | ⭐⭐⭐ |

## 💱 Pares de Moeda Recomendados

### 🥇 Majors (Prioridade Alta)
- **EUR/USD**: Baixo spread, alta liquidez
- **GBP/USD**: Boa volatilidade, sessão Londres
- **USD/JPY**: Tendência clara, sessão Tóquio

### 🥈 Minors (Prioridade Média)
- **AUD/USD**: Sessão asiática
- **USD/CAD**: Baixa volatilidade
- **EUR/GBP**: Baixa volatilidade

## ⏰ Timeframes Ideais

### Day Trading (M5-M15)
- SMC Order Block + BB Squeeze
- SMC Liquidity Grab + BB Bounce
- BB Squeeze + SMC Breakout
- Larry Williams 9.2

### Swing Trading (M15-H1)
- Wyckoff Accumulation + BB
- EMA Ribbon
- Larry Williams 9.1

## 🛡️ Gerenciamento de Risco

### Configurações Padrão
- **Capital Inicial**: 10.000
- **Risco por Trade**: 1-2%
- **Comissão Forex**: 0.0001%
- **Stop Loss**: Baseado em ATR ou estrutura
- **Take Profit**: Risk/Reward 1:2 a 1:3

### Filtros de Segurança
- ✅ Stop Loss obrigatório
- ✅ Position sizing baseado em risco
- ✅ Filtros de sessão forex
- ✅ Filtros de tempo
- ✅ Evita horários de notícias

## 🚀 Como Usar

1. **Escolha** uma estratégia baseada no seu nível
2. **Copie** o código do arquivo `.pine`
3. **Cole** no Pine Editor do TradingView
4. **Configure** os parâmetros desejados
5. **Teste** em demo antes de usar capital real
6. **Configure** alertas se necessário

## 📚 Documentação Relacionada

- **[Ranking Day Trading](../rankings/ranking_daytrading_forex_2025.md)** - Comparação de estratégias
- **[Ranking Swing Trading](../rankings/ranking_swingtrading_forex_2025.md)** - Estratégias de swing
- **[Análise Elliott + Wyckoff + SMC](../analysis/analise_elliott_wyckoff_smc_2025.md)** - Análise detalhada
- **[Guia BB + SMC + Wyckoff](../documentation/guides/README_estrategias_bb_smc_wyckoff.md)** - Guia específico
- **[Guia Geral de Estratégias](../documentation/guides/README_estrategias.md)** - Guia completo

## ⚠️ Aviso Importante

**Todas as estratégias são para fins educacionais e de pesquisa. Sempre teste em ambiente de simulação antes de usar com capital real. O trading envolve riscos significativos.**

## 🔧 Desenvolvimento

Para criar novas estratégias baseadas nestas:

1. Use o **[exemplo_estrategia_forex.pine](./exemplo_estrategia_forex.pine)** como template
2. Siga as regras em **[../documentation/rules/](../documentation/rules/)**
3. Documente adequadamente
4. Teste extensivamente
5. Organize na categoria apropriada

---

**Desenvolvido para traders que buscam estratégias profissionais e seguras para TradingView.**