# PROMPT PARA ANÁLISE SMC DE ATIVOS FINANCEIROS

## INSTRUÇÕES

Analise o gráfico fornecido seguindo os conceitos de Smart Money Concept (SMC). 

**📋 Consulte as regras detalhadas em:** `smc_analysis_rules.md`
**🎓 Consulte as lições aprendidas em:** `lessons_learned_smc.md`

## ANÁLISE SOLICITADA

### 1. **IDENTIFICAÇÃO SMC**
- Market Structure atual (tendência e estrutura)
- Order Blocks relevantes (bullish/bearish, mitigados/não mitigados)
- Fair Value Gaps não preenchidos
- Zonas de liquidez (Equal Highs/Lows)
- Premium/Discount zones

### 2. **SETUP DE ENTRADA**
- Melhor oportunidade identificada (Long/Short)
- Justificativa baseada em SMC
- Confirmações presentes
- Confluências técnicas

### 3. **TIMING DE ENTRADA**
- Avaliação se faz sentido entrar AGORA ou AGUARDAR
- Estimativa percentual de recomendação (0-100%)
- Justificativa do timing baseada em SMC
- Condições específicas para entrada imediata vs. aguardar

### 4. **TIPO DE ORDEM**
- **Market Order**: Entrada imediata (80-100% recomendação)
- **Limit Order**: Ordem limite em nível específico (60-79% recomendação)
- **Limit Order + Confirmação**: Ordem limite aguardando confirmação (40-59% recomendação)
- **Aguardar**: Sem ordem, aguardar melhores condições (0-39% recomendação)
- **Justificativa específica** para o tipo de ordem escolhido

### 5. **CONFIRMAÇÕES NECESSÁRIAS**
- **Para Market Orders**: Confirmações já presentes
- **Para Limit Orders**: Lista específica de confirmações a aguardar
- **Critérios de cancelamento** da ordem limite
- **Níveis de monitoramento** para confirmações

### 6. **GERENCIAMENTO**
- Stop Loss e justificativa
- Target 1 (Risk/Reward 1:2)
- Target 2 (Risk/Reward 1:3)
- Estratégia de saída parcial

## FORMATO DE RESPOSTA

**📋 Use o formato visual detalhado conforme as regras em:** `smc_analysis_rules.md`
**🎓 Aplique as lições aprendidas e checklist em:** `lessons_learned_smc.md`

### **Estrutura Obrigatória:**
1. **📊 RESUMO EXECUTIVO** - Tabela com status geral
2. **🔍 IDENTIFICAÇÃO SMC** - Tabelas organizadas (Market Structure, Order Blocks, FVGs)
3. **🎯 ENTRADA SUGERIDA** - Setup detalhado em tabela
4. **⏰ TIMING DE ENTRADA** - Avaliação de entrada AGORA vs AGUARDAR com % de recomendação
5. **📋 TIPO DE ORDEM** - Market Order, Limit Order ou Aguardar com justificativa
6. **✅ CONFIRMAÇÕES NECESSÁRIAS** - Lista específica de confirmações para ordens limite
7. **⚖️ GERENCIAMENTO** - Stop Loss e Targets em tabela
8. **⚠️ RISCOS** - Cenários de invalidação em tabela
9. **📈 PLANO DE EXECUÇÃO** - Sequência de ações com data/hora da análise

### **Elementos Visuais:**
- ✅ ❌ ⚠️ para status
- ⭐ para força (1-3 estrelas)
- 🟢 🔴 🟡 para cores
- Tabelas organizadas
- Métricas quantificáveis

---

## ORIENTAÇÕES ESPECÍFICAS SOBRE ORDENS

### **SEMPRE INFORMAR:**
- ✅ **Tipo de ordem recomendado** (Market, Limit ou Aguardar)
- ✅ **Preço específico** para ordens limite
- ✅ **Confirmações necessárias** antes de executar ordem limite
- ✅ **Critérios de cancelamento** da ordem limite
- ✅ **Níveis de monitoramento** para confirmações

### **CRITÉRIOS PARA ORDENS LIMITE:**
- **60-79% recomendação**: Colocar ordem limite no Order Block ou FVG
- **40-59% recomendação**: Ordem limite + aguardar confirmação específica
- **0-39% recomendação**: Não colocar ordem, aguardar melhores condições

### **CONFIRMAÇÕES OBRIGATÓRIAS PARA LIMIT ORDERS:**
- BOS/CHoCH na direção do setup
- Volume confirmando o movimento
- Rejeição em zona-chave com wick significativo
- Fechamento de vela confirmando direção

---

**💡 Dica:** Use múltiplos timeframes para confirmar o contexto e sempre considere o alinhamento entre HTF e LTF para maior probabilidade de sucesso. **SEMPRE especifique se deve aguardar confirmação ou já pode colocar ordem limite.**

**🎓 IMPORTANTE:** Antes de cada análise, consulte o arquivo `lessons_learned_smc.md` para evitar erros comuns e aplicar o checklist obrigatório.

**⏰ OBRIGATÓRIO:** Sempre incluir data e hora da análise no PLANO DE EXECUÇÃO para facilitar identificação da última análise e validade temporal.
