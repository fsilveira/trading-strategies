# 📊 Estratégias Pine Script

Esta pasta contém todas as estratégias de trading organizadas por categoria.

## 📁 Categorias

### 📈 EMA Ribbon
Estratégias baseadas em múltiplas médias móveis exponenciais.

**Arquivos:**
- **[my/ema_ribbon_forex.pine](my/ema_ribbon_forex.pine)** - Estratégia principal EMA Ribbon

**Características:**
- 7 EMAs (20, 25, 30, 35, 40, 45, 50)
- Detecção de tendência de alta rigorosa
- Toques em EMAs como sinais de entrada
- Gestão de risco automática

### 🧠 Smart Money Concepts + Wyckoff
Estratégias baseadas em conceitos de dinheiro inteligente e metodologia Wyckoff.

**Arquivos:**
- **[my/bb_squeeze_smc_breakout_forex.pine](my/bb_squeeze_smc_breakout_forex.pine)** - Bollinger Bands + SMC + Breakout
- **[my/smc_liquidity_grab_bb_bounce_forex.pine](my/smc_liquidity_grab_bb_bounce_forex.pine)** - Liquidity Grab + BB Bounce
- **[my/smc_order_block_bb_squeeze_forex.pine](my/smc_order_block_bb_squeeze_forex.pine)** - Order Blocks + BB Squeeze
- **[my/wyckoff_accumulation_bb_forex.pine](my/wyckoff_accumulation_bb_forex.pine)** - Wyckoff Accumulation + BB

**Características:**
- Análise de Order Blocks
- Detecção de Liquidity Grabs
- Padrões de Acumulação Wyckoff
- Integração com Bollinger Bands

### 📈 Larry Williams
Estratégias baseadas na metodologia de Larry Williams.

**Arquivos:**
- **[my/larry_williams_9_1_forex.pine](my/larry_williams_9_1_forex.pine)** - Versão 9.1
- **[my/larry_williams_9_2_forex.pine](my/larry_williams_9_2_forex.pine)** - Versão 9.2

**Características:**
- Indicadores Larry Williams
- Análise de momentum
- Sinais de reversão
- Gestão de risco adaptativa

### 📚 Exemplos
Templates e exemplos para desenvolvimento de novas estratégias.

**Arquivos:**
- **[my/exemplo_estrategia_forex.pine](my/exemplo_estrategia_forex.pine)** - Template base

**Características:**
- Estrutura padrão Pine Script
- Comentários explicativos
- Configurações básicas
- Exemplo de implementação

## 🚀 Como Usar

1. **Navegue** até a categoria desejada
2. **Selecione** a estratégia
3. **Copie** o código Pine Script
4. **Cole** no Pine Editor do TradingView
5. **Configure** os parâmetros
6. **Teste** em diferentes timeframes

## ⚙️ Configurações Recomendadas

### Timeframes
- **Scalping:** 1m, 5m
- **Day Trading:** 5m, 15m, 1H
- **Swing Trading:** 1H, 4H, Daily

### Parâmetros
- **Risk/Reward:** 1:2 a 1:3
- **Stop Loss:** Dinâmico baseado na estratégia
- **Take Profit:** Baseado na relação risco/recompensa

## 📋 Padrões das Estratégias

Todas as estratégias seguem estes padrões:

- ✅ **Pine Script v5**
- ✅ **Gestão de Risco Automática**
- ✅ **Alertas Configuráveis**
- ✅ **Visualizações Claras**
- ✅ **Backtesting Compatível**
- ✅ **Documentação Incluída**

## 🔧 Desenvolvimento

Para criar novas estratégias:

1. Use o template em `examples/`
2. Siga as regras em `../documentation/rules/`
3. Documente adequadamente
4. Teste extensivamente
5. Organize na categoria apropriada
