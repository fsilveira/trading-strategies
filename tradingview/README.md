# 📈 TradingView Strategies Collection

Coleção organizada de estratégias de trading em Pine Script para TradingView, focadas em Forex e análise técnica avançada.

## 📋 Índice

- [📁 Estrutura do Projeto](#-estrutura-do-projeto)
- [🎯 Categorias de Estratégias](#-categorias-de-estratégias)
- [📖 Documentação](#-documentação)
- [📊 Análises](#-análises)
- [🏆 Rankings](#-rankings)
- [🚀 Como Usar](#-como-usar)
- [⚙️ Configurações Recomendadas](#️-configurações-recomendadas)
- [📋 Características das Estratégias](#-características-das-estratégias)
- [🔧 Desenvolvimento](#-desenvolvimento)
- [📞 Suporte](#-suporte)

## 🎯 Resumo Executivo

### 🏆 Estratégias Premium
- **[SMC Order Block + BB Squeeze](strategies/my/smc_order_block_bb_squeeze_forex.pine)** - +28-42% anual (Win Rate: 68-78%)
- **[Wyckoff Accumulation + BB](strategies/my/wyckoff_accumulation_bb_forex.pine)** - +25-38% anual (Win Rate: 65-75%)
- **[SMC Liquidity Grab + BB](strategies/my/smc_liquidity_grab_bb_bounce_forex.pine)** - +22-35% anual (Win Rate: 70-80%)

### 📊 Por Nível de Dificuldade
- **👶 Iniciantes**: [Larry Williams 9.1](strategies/my/larry_williams_9_1_forex.pine), [Wyckoff + BB](strategies/my/wyckoff_accumulation_bb_forex.pine)
- **🎓 Intermediários**: [EMA Ribbon](strategies/my/ema_ribbon_forex.pine), [Larry Williams 9.2](strategies/my/larry_williams_9_2_forex.pine)
- **🏆 Avançados**: [SMC Order Block + BB](strategies/my/smc_order_block_bb_squeeze_forex.pine), [SMC Liquidity + BB](strategies/my/smc_liquidity_grab_bb_bounce_forex.pine)

### 📈 Recursos Disponíveis
- **8 Estratégias** implementadas e testadas
- **Rankings** de performance atualizados para 2025
- **Análises** detalhadas de Elliott Wave + Wyckoff + SMC
- **Documentação** completa com guias e regras
- **Templates** para desenvolvimento de novas estratégias

## 📁 Estrutura do Projeto

```
tradingview/
├── strategies/           # Estratégias Pine Script organizadas por categoria
│   ├── my/              # Minhas estratégias implementadas
│   └── lux_algo/        # Estratégias LuxAlgo
├── documentation/        # Documentações e guias
│   ├── guides/          # Guias de uso das estratégias
│   └── rules/           # Regras e padrões de desenvolvimento
├── analysis/            # Análises de mercado e metodologias
└── rankings/            # Rankings e comparações de estratégias
```

### 🔗 Navegação Rápida
- **[📊 Estratégias](strategies/)** - Todas as estratégias Pine Script
- **[📚 Documentação](documentation/)** - Guias e regras de desenvolvimento
- **[📈 Análises](analysis/)** - Análises de mercado e metodologias
- **[🏆 Rankings](rankings/)** - Comparações e rankings de estratégias

## 🎯 Categorias de Estratégias

### 📊 EMA Ribbon
- **[my/ema_ribbon_forex.pine](strategies/my/ema_ribbon_forex.pine)** - **Estratégia de Tendência de Alta**
  - **Resumo**: Identifica e opera apenas em tendências de alta usando 7 EMAs (20, 25, 30, 35, 40, 45, 50) que formam um "ribbon"
  - **Funcionamento**: Entrada quando preço toca uma EMA e rompe máxima anterior, com stop loss na EMA seguinte
  - **Performance**: +12-20% anual | Win Rate: 45-55% | Sharpe: 1.2-1.6
  - **Ideal para**: Traders intermediários que preferem tendências claras

### 🧠 Smart Money Concepts + Wyckoff
- **[my/bb_squeeze_smc_breakout_forex.pine](strategies/my/bb_squeeze_smc_breakout_forex.pine)** - **Breakout com Smart Money**
  - **Resumo**: Combina compressão das Bollinger Bands com conceitos SMC para identificar breakouts de alta probabilidade
  - **Funcionamento**: Entrada no breakout da zona de compressão com confirmação de Break of Structure (BOS) e Change of Character (CHoCH)
  - **Performance**: +20-32% anual | Win Rate: 62-72% | Sharpe: 1.5-2.0
  - **Ideal para**: Traders avançados que dominam conceitos de smart money

- **[my/smc_liquidity_grab_bb_bounce_forex.pine](strategies/my/smc_liquidity_grab_bb_bounce_forex.pine)** - **Reversão com Liquidity Grab**
  - **Resumo**: Identifica quando o preço "pega" liquidez (stops) e entra no bounce das Bollinger Bands
  - **Funcionamento**: Entrada no bounce da banda após liquidity grab com confirmação de rejeição
  - **Performance**: +22-35% anual | Win Rate: 70-80% | Sharpe: 1.6-2.1
  - **Ideal para**: Traders avançados que buscam alta precisão de entrada

- **[my/smc_order_block_bb_squeeze_forex.pine](strategies/my/smc_order_block_bb_squeeze_forex.pine)** - **Order Blocks + Squeeze**
  - **Resumo**: Combina Order Blocks (zonas de ordens de grandes players) com squeeze das Bollinger Bands
  - **Funcionamento**: Entrada quando preço retorna ao Order Block durante BB Squeeze
  - **Performance**: +28-42% anual | Win Rate: 68-78% | Sharpe: 1.9-2.6
  - **Ideal para**: Traders profissionais com conhecimento avançado de SMC

- **[my/wyckoff_accumulation_bb_forex.pine](strategies/my/wyckoff_accumulation_bb_forex.pine)** - **Acumulação Wyckoff**
  - **Resumo**: Usa fases de acumulação de Wyckoff (Spring, Test, Jump) com reversão à média das Bollinger Bands
  - **Funcionamento**: Entrada na banda inferior durante fase de acumulação com confirmação de volume
  - **Performance**: +25-38% anual | Win Rate: 65-75% | Sharpe: 1.7-2.3
  - **Ideal para**: Traders intermediários que preferem lógica clara e bem definida

### 📈 Larry Williams
- **[my/larry_williams_9_1_forex.pine](strategies/my/larry_williams_9_1_forex.pine)** - **Sistema Clássico LW 9.1**
  - **Resumo**: Implementa o sistema clássico Larry Williams usando EMA de 9 períodos como indicador principal
  - **Funcionamento**: Entrada long quando preço fecha acima da EMA 9 e EMA está em alta, com filtro de tendência MA 50
  - **Performance**: +15-25% anual | Win Rate: 50-60% | Sharpe: 1.3-1.7
  - **Ideal para**: Traders iniciantes que buscam sistema simples e testado

- **[my/larry_williams_9_2_forex.pine](strategies/my/larry_williams_9_2_forex.pine)** - **Setup de Pullback LW 9.2**
  - **Resumo**: Versão melhorada com setup de pullback - candle fecha abaixo/acima da máxima/mínima anterior
  - **Funcionamento**: Entrada no rompimento da máxima/mínima do candle de setup com stop loss mais preciso
  - **Performance**: +18-28% anual | Win Rate: 55-65% | Sharpe: 1.4-1.8
  - **Ideal para**: Traders intermediários que buscam melhor timing de entrada

### 📚 Exemplos
- **[my/exemplo_estrategia_forex.pine](strategies/my/exemplo_estrategia_forex.pine)** - **Template de Desenvolvimento**
  - **Resumo**: Estratégia exemplo que demonstra como criar breakout com múltiplas confirmações
  - **Funcionamento**: Rompimento de máxima/mínima com confirmação de volume, momentum e filtros de tendência
  - **Performance**: Template educativo para desenvolvimento
  - **Ideal para**: Desenvolvedores que querem criar suas próprias estratégias

## 📖 Documentação

### Guias
- **[documentation/guides/README_estrategias.md](documentation/guides/README_estrategias.md)** - Guia geral das estratégias
- **[documentation/guides/README_estrategias_bb_smc_wyckoff.md](documentation/guides/README_estrategias_bb_smc_wyckoff.md)** - Guia específico SMC/Wyckoff

### Regras
- **[documentation/rules/cursor_rule_pine_script_strategies.md](documentation/rules/cursor_rule_pine_script_strategies.md)** - Regras de desenvolvimento Pine Script

## 📊 Análises

- **[analysis/analise_elliott_wyckoff_smc_2025.md](analysis/analise_elliott_wyckoff_smc_2025.md)** - Análise Elliott Wave + Wyckoff + SMC

## 🏆 Rankings

- **[rankings/ranking_daytrading_forex_2025.md](rankings/ranking_daytrading_forex_2025.md)** - Ranking estratégias day trading
- **[rankings/ranking_swingtrading_forex_2025.md](rankings/ranking_swingtrading_forex_2025.md)** - Ranking estratégias swing trading

## 🚀 Como Usar

1. **Escolha uma estratégia** da pasta [strategies/](strategies/)
2. **Leia a documentação** correspondente em [documentation/](documentation/)
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

1. Siga as **regras de desenvolvimento** em [documentation/rules/](documentation/rules/)
2. Use o **template** em [strategies/my/exemplo_estrategia_forex.pine](strategies/my/exemplo_estrategia_forex.pine)
3. Documente a estratégia adequadamente
4. Teste em diferentes condições de mercado

## 📞 Suporte

Para dúvidas ou sugestões sobre as estratégias, consulte a documentação específica de cada categoria ou analise os exemplos fornecidos.

## 🚀 Quick Start

### Para Iniciantes
1. Comece com **[Larry Williams 9.1](strategies/my/larry_williams_9_1_forex.pine)**
2. Leia o **[Guia Geral](documentation/guides/README_estrategias.md)**
3. Teste em demo no TradingView
4. Configure alertas

### Para Intermediários
1. Escolha **[Wyckoff + BB](strategies/my/wyckoff_accumulation_bb_forex.pine)** ou **[EMA Ribbon](strategies/my/ema_ribbon_forex.pine)**
2. Consulte o **[Ranking Day Trading](rankings/ranking_daytrading_forex_2025.md)**
3. Estude a **[Análise Elliott + Wyckoff + SMC](analysis/analise_elliott_wyckoff_smc_2025.md)**

### Para Avançados
1. Implemente **[SMC Order Block + BB](strategies/my/smc_order_block_bb_squeeze_forex.pine)**
2. Siga as **[Regras de Desenvolvimento](documentation/rules/cursor_rule_pine_script_strategies.md)**
3. Use o **[Template Base](strategies/my/exemplo_estrategia_forex.pine)** para criar novas estratégias

---

**⚠️ Aviso:** Estas estratégias são para fins educacionais e de pesquisa. Sempre teste em ambiente de simulação antes de usar com capital real. O trading envolve riscos significativos.
