# 🎯 CHEAT-SHEET SMC (SMART MONEY CONCEPTS)

## 📊 CONCEITOS FUNDAMENTAIS

### **Market Structure (Estrutura de Mercado)**
| **Conceito** | **Definição** | **Sinal** |
|--------------|---------------|-----------|
| **BOS** | Break of Structure - Quebra de estrutura | ✅ Continuação da tendência |
| **CHoCH** | Change of Character - Mudança de caráter | ⚠️ Possível reversão |
| **HH** | Higher High - Máxima mais alta | 🟢 Tendência bullish |
| **HL** | Higher Low - Mínima mais alta | 🟢 Tendência bullish |
| **LH** | Lower High - Máxima mais baixa | 🔴 Tendência bearish |
| **LL** | Lower Low - Mínima mais baixa | 🔴 Tendência bearish |

#### **📊 Exemplo Visual - Market Structure Bullish:**
```
    HH3 ──────────────●
         ╱           ╱
    HH2 ──────────●
         ╱       ╱
    HH1 ──────●
         ╱   ╱
    HL2 ──●
         ╱
    HL1 ●
```
**Interpretação:** Sequência de Higher Highs (HH) e Higher Lows (HL) = Tendência Bullish

#### **📊 Exemplo Visual - Market Structure Bearish:**
```
    LH1 ●
         ╲
    LH2 ──●
         ╲   ╲
    LH3 ──────●
         ╲       ╲
    LL1 ──────────●
         ╲           ╲
    LL2 ──────────────●
```
**Interpretação:** Sequência de Lower Highs (LH) e Lower Lows (LL) = Tendência Bearish

### **Order Blocks (Blocos de Ordem)**
| **Tipo** | **Formação** | **Prioridade** | **Uso** |
|----------|--------------|----------------|---------|
| **Bullish OB** | Última vela de alta antes de movimento | ⭐⭐⭐ | Entrada long |
| **Bearish OB** | Última vela de baixa antes de movimento | ⭐⭐⭐ | Entrada short |
| **Não Mitigado** | Ainda não testado | ⭐⭐⭐ | Máxima prioridade |
| **Mitigado** | Já testado | ⭐⭐ | Prioridade média |

#### **📊 Exemplo Visual - Bullish Order Block:**
```
    Preço
        │
    ────┼─────● (Movimento de alta)
        │   ╱
        │ ╱
    ────┼─● (Bullish OB - Última vela de alta)
        │╱
    ────┼─────● (Retorno ao OB = Entrada)
        │
```
**Interpretação:** Última vela de alta antes do movimento = Zona de compra

#### **📊 Exemplo Visual - Bearish Order Block:**
```
    Preço
        │
    ────┼─────● (Retorno ao OB = Entrada)
        │╲
    ────┼─● (Bearish OB - Última vela de baixa)
        │ ╲
        │   ╲
    ────┼─────● (Movimento de baixa)
        │
```
**Interpretação:** Última vela de baixa antes do movimento = Zona de venda

### **Fair Value Gaps (FVG)**
| **Tipo** | **Formação** | **Ação** | **Prioridade** |
|----------|--------------|----------|----------------|
| **Bullish FVG** | Gap entre baixa vela 1 e alta vela 3 | 🟢 Compra | ⭐⭐ |
| **Bearish FVG** | Gap entre alta vela 1 e baixa vela 3 | 🔴 Venda | ⭐⭐ |
| **Não Preenchido** | Gap ainda ativo | ⭐⭐⭐ | Máxima prioridade |
| **Parcialmente Preenchido** | Gap sendo testado | ⭐⭐ | Prioridade média |

#### **📊 Exemplo Visual - Bullish FVG:**
```
    Preço
        │
    ────┼─● (Vela 3 - Alta)
        │ │
        │ │ ← FVG (Gap)
        │ │
    ────┼─● (Vela 1 - Baixa)
        │
```
**Interpretação:** Gap entre baixa da vela 1 e alta da vela 3 = Zona de compra

#### **📊 Exemplo Visual - Bearish FVG:**
```
    Preço
        │
    ────┼─● (Vela 1 - Alta)
        │ │
        │ │ ← FVG (Gap)
        │ │
    ────┼─● (Vela 3 - Baixa)
        │
```
**Interpretação:** Gap entre alta da vela 1 e baixa da vela 3 = Zona de venda

### **Liquidity Zones (Zonas de Liquidez)**
| **Tipo** | **Formação** | **Função** | **Sinal** |
|----------|--------------|------------|-----------|
| **Equal Highs** | Múltiplos topos mesmo nível | 🎯 Liquidez venda | ⚠️ Possível reversão |
| **Equal Lows** | Múltiplas bases mesmo nível | 🎯 Liquidez compra | ⚠️ Possível reversão |
| **BSL** | Buy Side Liquidity - Acima máximas | 🎯 Stop loss compradores | 🔴 Liquidity grab |
| **SSL** | Sell Side Liquidity - Abaixo mínimas | 🎯 Stop loss vendedores | 🟢 Liquidity grab |

#### **📊 Exemplo Visual - Equal Highs:**
```
    Preço
        │
    ────┼─●─────●─────● (Equal Highs)
        │ │     │     │
        │ │     │     │
    ────┼─┼─────┼─────┼
        │ │     │     │
        │ │     │     │
    ────┼─┼─────┼─────┼
        │ │     │     │
```
**Interpretação:** Múltiplos topos no mesmo nível = Zona de liquidez para venda

#### **📊 Exemplo Visual - Liquidity Grab:**
```
    Preço
        │
    ────┼─● (BSL - Stop loss compradores)
        │ │
        │ │ ← Liquidity Grab
        │ │
    ────┼─┼─────● (Reversão após grab)
        │ │   ╱
        │ │ ╱
    ────┼─┼─● (Entrada após reversão)
        │ │
```
**Interpretação:** Quebra de stop loss seguida de reversão = Liquidity grab

### **Premium/Discount Zones**
| **Zona** | **Posição** | **Ação** | **Probabilidade** |
|----------|-------------|----------|-------------------|
| **Premium** | Acima 50% do range | 🔴 Venda | 70% |
| **Discount** | Abaixo 50% do range | 🟢 Compra | 70% |
| **Equilibrium** | Próximo 50% do range | ⚠️ Neutro | 50% |

#### **📊 Exemplo Visual - Premium/Discount:**
```
    Preço
        │
    ────┼─● (Máxima do Range)
        │ │
        │ │ ← PREMIUM (Zona de Venda)
        │ │
    ────┼─┼─● (50% - Equilibrium)
        │ │ │
        │ │ │ ← DISCOUNT (Zona de Compra)
        │ │ │
    ────┼─┼─● (Mínima do Range)
        │ │
```
**Interpretação:** 
- **Premium (70%+ do range)**: Zona de venda
- **Discount (30%- do range)**: Zona de compra
- **Equilibrium (50%)**: Zona neutra

---

## 🎯 SETUPS DE ENTRADA

### **Setup LONG (Compra)**
| **Condição** | **Status** | **Prioridade** |
|--------------|------------|----------------|
| Market structure bullish | ✅ Obrigatório | ⭐⭐⭐ |
| Preço em zona discount | ✅ Obrigatório | ⭐⭐⭐ |
| Order block bullish não mitigado | ✅ Obrigatório | ⭐⭐⭐ |
| Liquidity sweep + reversão | ✅ Confirmação | ⭐⭐ |
| FVG bullish respeitado | ✅ Confirmação | ⭐⭐ |
| Volume confirmando | ✅ Confirmação | ⭐⭐ |

### **Setup SHORT (Venda)**
| **Condição** | **Status** | **Prioridade** |
|--------------|------------|----------------|
| Market structure bearish | ✅ Obrigatório | ⭐⭐⭐ |
| Preço em zona premium | ✅ Obrigatório | ⭐⭐⭐ |
| Order block bearish não mitigado | ✅ Obrigatório | ⭐⭐⭐ |
| Liquidity sweep + reversão | ✅ Confirmação | ⭐⭐ |
| FVG bearish respeitado | ✅ Confirmação | ⭐⭐ |
| Volume confirmando | ✅ Confirmação | ⭐⭐ |

#### **📊 Exemplo Visual - Setup LONG Completo:**
```
    Preço
        │
    ────┼─● (BOS - Break of Structure)
        │ │
        │ │ ← PREMIUM ZONE
        │ │
    ────┼─┼─● (Order Block Bullish)
        │ │ │
        │ │ │ ← DISCOUNT ZONE
        │ │ │
    ────┼─┼─┼─● (FVG Bullish)
        │ │ │ │
        │ │ │ │ ← ENTRADA LONG
        │ │ │ │
    ────┼─┼─┼─┼─● (Target)
        │ │ │ │
```
**Interpretação:** Estrutura bullish + Discount + OB + FVG = Setup de alta probabilidade

#### **📊 Exemplo Visual - Setup SHORT Completo:**
```
    Preço
        │
    ────┼─┼─┼─┼─● (Target)
        │ │ │ │
        │ │ │ │ ← ENTRADA SHORT
        │ │ │ │
    ────┼─┼─┼─● (FVG Bearish)
        │ │ │ │
        │ │ │ │ ← PREMIUM ZONE
        │ │ │ │
    ────┼─┼─● (Order Block Bearish)
        │ │ │
        │ │ │ ← DISCOUNT ZONE
        │ │ │
    ────┼─● (BOS - Break of Structure)
        │
```
**Interpretação:** Estrutura bearish + Premium + OB + FVG = Setup de alta probabilidade

---

## ⏰ TIMING DE ENTRADA

### **ENTRADA IMEDIATA (80-100%)**
| **Condição** | **Impacto** | **Recomendação** |
|--------------|-------------|------------------|
| Alinhamento HTF + LTF | +20% | ✅ Entrar agora |
| Order Block testando AGORA | +20% | ✅ Entrar agora |
| FVG ativo sendo respeitado | +15% | ✅ Entrar agora |
| Liquidity sweep + reversão | +15% | ✅ Entrar agora |
| Volume significativo | +10% | ✅ Entrar agora |

### **ENTRADA COM CAUTELA (60-79%)**
| **Condição** | **Impacto** | **Recomendação** |
|--------------|-------------|------------------|
| Estrutura LTF favorável | +10% | ⚠️ Aguardar confirmação |
| Order Block testado | +5% | ⚠️ Aguardar confirmação |
| FVG parcialmente preenchido | -5% | ⚠️ Aguardar confirmação |
| Volume moderado | -10% | ⚠️ Aguardar confirmação |

### **AGUARDAR (0-59%)**
| **Condição** | **Impacto** | **Recomendação** |
|--------------|-------------|------------------|
| Estrutura HTF contrária | -30% | ❌ Não entrar |
| Order Block mitigado | -20% | ❌ Não entrar |
| FVG preenchido | -15% | ❌ Não entrar |
| Sem volume | -20% | ❌ Não entrar |

---

## ⚖️ GERENCIAMENTO DE RISCO

### **Stop Loss**
| **Setup** | **Posição** | **Margem** | **Máximo** |
|-----------|-------------|------------|------------|
| **Long** | Abaixo Order Block | +5-10 pips | 1-2% capital |
| **Short** | Acima Order Block | +5-10 pips | 1-2% capital |
| **Com Liquidity Sweep** | Abaixo/acima sweep | +10-15 pips | 1-2% capital |

### **Take Profit**
| **Target** | **R/R** | **Posição** | **Estratégia** |
|------------|---------|-------------|---------------|
| **Target 1** | 1:2 | Próxima resistência/suporte | Saída parcial 50% |
| **Target 2** | 1:3 | Order block oposto | Saída parcial 30% |
| **Target 3** | 1:4+ | FVG significativo | Saída final 20% |

#### **📊 Exemplo Visual - Gerenciamento de Risco LONG:**
```
    Preço
        │
    ────┼─● (Target 3 - 1:4+ R/R)
        │ │
        │ │ ← Saída final 20%
        │ │
    ────┼─┼─● (Target 2 - 1:3 R/R)
        │ │ │
        │ │ │ ← Saída parcial 30%
        │ │ │
    ────┼─┼─┼─● (Target 1 - 1:2 R/R)
        │ │ │ │
        │ │ │ │ ← Saída parcial 50%
        │ │ │ │
    ────┼─┼─┼─┼─● (ENTRADA)
        │ │ │ │ │
        │ │ │ │ │ ← Stop Loss
        │ │ │ │ │
    ────┼─┼─┼─┼─┼─● (Stop Loss)
        │ │ │ │ │
```
**Interpretação:** 
- **Entrada**: No Order Block
- **Stop Loss**: Abaixo do Order Block + margem
- **Target 1**: 50% da posição (1:2 R/R)
- **Target 2**: 30% da posição (1:3 R/R)  
- **Target 3**: 20% da posição (1:4+ R/R)

---

## 🔍 CONFLUÊNCIAS TÉCNICAS

### **Prioridade 1 - SMC (Obrigatório)**
| **Elemento** | **Função** | **Peso** |
|--------------|------------|----------|
| Order Blocks | Zonas de entrada | 40% |
| Market Structure | Direção principal | 30% |
| FVG | Confirmação | 20% |
| Liquidity | Timing | 10% |

### **Prioridade 2 - Técnicas (Confirmação)**
| **Elemento** | **Função** | **Peso** |
|--------------|------------|----------|
| Fibonacci | Níveis de reversão | 25% |
| Support/Resistance | Zonas-chave | 25% |
| Trendlines | Quebras e retestes | 25% |
| Volume | Confirmação | 25% |

### **Prioridade 3 - Avançadas (Opcional)**
| **Elemento** | **Função** | **Uso** |
|--------------|------------|----------|
| Elliott Wave | Fases de mercado | Apenas se claro |
| Wyckoff | Acumulação/Distribuição | Apenas se claro |
| Chart Patterns | Padrões clássicos | Apenas se claro |

---

## 📊 TIMEFRAMES E ALINHAMENTO

### **Hierarquia de Timeframes**
| **Timeframe** | **Função** | **Uso** |
|---------------|------------|---------|
| **HTF (H4/D1)** | Contexto geral | Direção principal |
| **MTF (H1/H4)** | Confirmação | Estrutura média |
| **LTF (M5/M15)** | Timing preciso | Entrada exata |

### **Alinhamento de Timeframes**
| **HTF** | **LTF** | **Recomendação** | **Probabilidade** |
|---------|---------|------------------|-------------------|
| 🟢 Bullish | 🟢 Bullish | ✅ Entrar long | 90-100% |
| 🔴 Bearish | 🔴 Bearish | ✅ Entrar short | 90-100% |
| 🟢 Bullish | 🔴 Bearish | ⚠️ Aguardar | 40-60% |
| 🔴 Bearish | 🟢 Bullish | ⚠️ Aguardar | 40-60% |
| 🟡 Neutro | 🟢 Bullish | ⚠️ Cautela | 60-70% |
| 🟡 Neutro | 🔴 Bearish | ⚠️ Cautela | 60-70% |

#### **📊 Exemplo Visual - Alinhamento Perfeito:**
```
    HTF (H4) - Contexto Geral
    ──────────────────────────
    🟢 BULLISH TREND
    HH3 ──────────────●
         ╱           ╱
    HH2 ──────────●
         ╱       ╱
    HH1 ──────●
         ╱   ╱
    HL2 ──●
         ╱
    HL1 ●
    
    LTF (M15) - Timing de Entrada
    ──────────────────────────────
    🟢 BULLISH STRUCTURE
    ────┼─● (BOS)
        │ │
        │ │ ← Order Block
        │ │
    ────┼─┼─● (ENTRADA)
        │ │ │
        │ │ │ ← FVG
        │ │ │
    ────┼─┼─┼─● (Target)
        │ │ │
```
**Interpretação:** HTF bullish + LTF bullish = Alinhamento perfeito (90-100% probabilidade)

---

## 🎯 CHECKLIST DE ENTRADA

### **ANTES DE ENTRAR**
- [ ] Market structure alinhado?
- [ ] Order block não mitigado?
- [ ] Preço em zona premium/discount?
- [ ] FVG ativo?
- [ ] Liquidity sweep confirmado?
- [ ] Volume confirmando?
- [ ] Stop loss definido?
- [ ] Risk/Reward mínimo 1:2?

### **CONFIRMAÇÕES ADICIONAIS**
- [ ] Múltiplos timeframes alinhados?
- [ ] Confluências técnicas presentes?
- [ ] Sem eventos de alto impacto?
- [ ] Capital adequado (1-2% risco)?
- [ ] Plano de saída definido?

---

## ⚠️ SINAIS DE ALERTA

### **NÃO ENTRAR**
| **Sinal** | **Motivo** | **Ação** |
|-----------|------------|----------|
| Order Block mitigado | Baixa probabilidade | ❌ Aguardar novo OB |
| FVG preenchido | Zona inválida | ❌ Buscar novo FVG |
| Estrutura contrária | Conflito de direção | ❌ Aguardar alinhamento |
| Sem volume | Falta confirmação | ❌ Aguardar volume |
| Eventos próximos | Alta volatilidade | ❌ Aguardar calmaria |

### **SAIR IMEDIATAMENTE**
| **Sinal** | **Motivo** | **Ação** |
|-----------|------------|----------|
| CHoCH confirmado | Mudança de estrutura | 🚨 Fechar posição |
| Order Block invalido | Setup quebrado | 🚨 Fechar posição |
| Stop loss atingido | Risco controlado | 🚨 Fechar posição |
| Target atingido | Objetivo cumprido | ✅ Fechar posição |

---

## 📈 MÉTRICAS DE PERFORMANCE

### **Objetivos de Performance**
| **Métrica** | **Mínimo** | **Ideal** | **Excelente** |
|-------------|------------|-----------|---------------|
| **Win Rate** | 60% | 70% | 80%+ |
| **Risk/Reward** | 1:2 | 1:2.5 | 1:3+ |
| **Sharpe Ratio** | 1.0 | 1.5 | 2.0+ |
| **Max Drawdown** | 15% | 10% | 5% |
| **Profit Factor** | 1.2 | 1.5 | 2.0+ |

### **Regras de Gestão**
| **Regra** | **Limite** | **Ação** |
|-----------|------------|----------|
| **Risco por trade** | 1-2% | Nunca exceder |
| **Drawdown máximo** | 10% | Parar trading |
| **Trades consecutivos** | 3 perdas | Revisar estratégia |
| **Horário de trading** | Sessões principais | Respeitar |

---

## 🎯 RESUMO EXECUTIVO

### **🏆 TOP 3 SETUPS SMC**
1. **Order Block + FVG** - Maior probabilidade (70-80%)
2. **Liquidity Grab + Reversão** - Melhor timing (65-75%)
3. **BOS + Order Block** - Maior movimento (60-70%)

#### **📊 Exemplo Visual - Setup #1 (Order Block + FVG):**
```
    Preço
        │
    ────┼─● (Target)
        │ │
        │ │ ← FVG Bullish
        │ │
    ────┼─┼─● (ENTRADA)
        │ │ │
        │ │ │ ← Order Block
        │ │ │
    ────┼─┼─┼─● (Stop Loss)
        │ │ │
```
**Performance:** 70-80% win rate | 1:2.5 R/R

#### **📊 Exemplo Visual - Setup #2 (Liquidity Grab + Reversão):**
```
    Preço
        │
    ────┼─● (Target)
        │ │
        │ │ ← Reversão
        │ │
    ────┼─┼─● (ENTRADA)
        │ │ │
        │ │ │ ← Liquidity Grab
        │ │ │
    ────┼─┼─┼─● (Stop Loss)
        │ │ │
```
**Performance:** 65-75% win rate | 1:2.0 R/R

### **💡 DICAS DE OURO**
- ✅ **Sempre aguarde setups completos**
- ✅ **Use múltiplos timeframes**
- ✅ **Respeite o stop loss**
- ✅ **Mantenha disciplina**
- ❌ **Nunca force operações**
- ❌ **Não opere com emoções**
- ❌ **Não ignore o gerenciamento de risco**

### **📊 PARES RECOMENDADOS**
| **Par** | **Volatilidade** | **SMC Performance** | **Melhor Horário** |
|---------|------------------|---------------------|-------------------|
| **EUR/USD** | Média | ⭐⭐⭐⭐⭐ | Londres/NY |
| **GBP/USD** | Alta | ⭐⭐⭐⭐ | Londres |
| **USD/JPY** | Média | ⭐⭐⭐⭐ | Tóquio/NY |

---

*Este cheat-sheet é uma referência rápida para consulta durante o trading. Sempre consulte a documentação completa para análises detalhadas.*
