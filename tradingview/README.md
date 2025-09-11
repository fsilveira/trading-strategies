# 📈 TradingView Strategies Collection

Coleção organizada de estratégias de trading em Pine Script para TradingView, focadas em Forex e análise técnica avançada.

## 📁 Estrutura do Projeto

```
tradingview/
├── strategies/           # Estratégias Pine Script organizadas por categoria
│   ├── ema_ribbon/      # Estratégias baseadas em EMA Ribbon
│   ├── smc_wyckoff/     # Estratégias Smart Money Concepts + Wyckoff
│   ├── larry_williams/  # Estratégias Larry Williams
│   └── examples/        # Exemplos e templates
├── documentation/        # Documentações e guias
│   ├── guides/          # Guias de uso das estratégias
│   └── rules/           # Regras e padrões de desenvolvimento
├── analysis/            # Análises de mercado e metodologias
└── rankings/            # Rankings e comparações de estratégias
```

## 🎯 Categorias de Estratégias

### 📊 EMA Ribbon
- **ema_ribbon_forex.pine** - Estratégia de tendência baseada em múltiplas EMAs
  - 7 EMAs (20, 25, 30, 35, 40, 45, 50)
  - Detecção de toques e rompimentos
  - Gestão de risco com stop loss dinâmico

### 🧠 Smart Money Concepts + Wyckoff
- **bb_squeeze_smc_breakout_forex.pine** - Bollinger Bands + SMC + Breakout
- **smc_liquidity_grab_bb_bounce_forex.pine** - Liquidity Grab + BB Bounce
- **smc_order_block_bb_squeeze_forex.pine** - Order Blocks + BB Squeeze
- **wyckoff_accumulation_bb_forex.pine** - Wyckoff Accumulation + BB

### 📈 Larry Williams
- **larry_williams_9_1_forex.pine** - Estratégia Larry Williams v9.1
- **larry_williams_9_2_forex.pine** - Estratégia Larry Williams v9.2

### 📚 Exemplos
- **exemplo_estrategia_forex.pine** - Template base para desenvolvimento

## 📖 Documentação

### Guias
- **README_estrategias.md** - Guia geral das estratégias
- **README_estrategias_bb_smc_wyckoff.md** - Guia específico SMC/Wyckoff

### Regras
- **cursor_rule_pine_script_strategies.md** - Regras de desenvolvimento Pine Script

## 📊 Análises

- **analise_elliott_wyckoff_smc_2025.md** - Análise Elliott Wave + Wyckoff + SMC

## 🏆 Rankings

- **ranking_daytrading_forex_2025.md** - Ranking estratégias day trading
- **ranking_swingtrading_forex_2025.md** - Ranking estratégias swing trading

## 🚀 Como Usar

1. **Escolha uma estratégia** da pasta `strategies/`
2. **Leia a documentação** correspondente em `documentation/`
3. **Copie o código** Pine Script
4. **Cole no Pine Editor** do TradingView
5. **Configure os parâmetros** conforme necessário
6. **Teste em diferentes timeframes** e ativos

## ⚙️ Configurações Recomendadas

### Timeframes
- **Day Trading:** 1m, 5m, 15m
- **Swing Trading:** 1H, 4H, Daily

### Ativos
- **Forex:** EUR/USD, GBP/USD, USD/JPY
- **Índices:** SPX, NASDAQ, DOW
- **Commodities:** Gold, Oil, Silver

## 📋 Características das Estratégias

- ✅ **Pine Script v5** - Versão mais recente
- ✅ **Gestão de Risco** - Stop loss e take profit automáticos
- ✅ **Alertas** - Notificações de entrada/saída
- ✅ **Visualizações** - Plotagem clara de sinais
- ✅ **Backtesting** - Compatível com Strategy Tester
- ✅ **Multi-timeframe** - Funciona em diferentes timeframes

## 🔧 Desenvolvimento

Para contribuir com novas estratégias:

1. Siga as **regras de desenvolvimento** em `documentation/rules/`
2. Use o **template** em `strategies/examples/`
3. Documente a estratégia adequadamente
4. Teste em diferentes condições de mercado

## 📞 Suporte

Para dúvidas ou sugestões sobre as estratégias, consulte a documentação específica de cada categoria ou analise os exemplos fornecidos.

---

**⚠️ Aviso:** Estas estratégias são para fins educacionais e de pesquisa. Sempre teste em ambiente de simulação antes de usar com capital real. O trading envolve riscos significativos.
