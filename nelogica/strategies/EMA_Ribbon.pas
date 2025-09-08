// Estratégia EMA Ribbon - Apenas Tendência de Alta
var
  EMA_20: Float;
  EMA_25: Float;
  EMA_30: Float;
  EMA_35: Float;
  EMA_40: Float;
  EMA_45: Float;
  EMA_50: Float;
  
  // Variáveis para controle
  TendenciaAlta: Boolean;
  ToqueEMA: Boolean;
  EMA_Tocada: Integer;
  PrecoEntrada: Float;
  PrecoStop: Float;
  PrecoTakeProfit: Float;
  Risco: Float;

begin
  // Calcular todas as EMAs
  EMA_20 := MediaExp(20, Close);
  EMA_25 := MediaExp(25, Close);
  EMA_30 := MediaExp(30, Close);
  EMA_35 := MediaExp(35, Close);
  EMA_40 := MediaExp(40, Close);
  EMA_45 := MediaExp(45, Close);
  EMA_50 := MediaExp(50, Close);
  
  
  // Verificar se está em tendência de alta (todas as EMAs em ordem crescente)
  TendenciaAlta := (EMA_20 > EMA_25) and 
                   (EMA_25 > EMA_30) and 
                   (EMA_30 > EMA_35) and 
                   (EMA_35 > EMA_40) and 
                   (EMA_40 > EMA_45) and 
                   (EMA_45 > EMA_50);
  
  
  // Verificar se a mínima tocou alguma EMA
  ToqueEMA := false;
  EMA_Tocada := 0;
  
  if (Low <= EMA_20) and (Low >= EMA_25 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 20;
  end
  else if (Low <= EMA_25) and (Low >= EMA_30 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 25;
  end
  else if (Low <= EMA_30) and (Low >= EMA_35 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 30;
  end
  else if (Low <= EMA_35) and (Low >= EMA_40 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 35;
  end
  else if (Low <= EMA_40) and (Low >= EMA_45 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 40;
  end
  else if (Low <= EMA_45) and (Low >= EMA_50 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 45;
  end
  else if (Low <= EMA_50) and (Low >= EMA_50 - 0.01) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 50;
  end;
  
  // Estratégia principal - apenas em tendência de alta
  if TendenciaAlta and ToqueEMA and not HasPosition and not HasPendingOrders then
  begin
    // Calcular preços
    PrecoEntrada := High + 0.01;  // Um centavo acima da máxima
    
    // Determinar stop loss baseado na EMA tocada
    if EMA_Tocada = 20 then
      PrecoStop := EMA_25 - 0.01  // Stop abaixo da EMA 25
    else if EMA_Tocada = 25 then
      PrecoStop := EMA_30 - 0.01  // Stop abaixo da EMA 30
    else if EMA_Tocada = 30 then
      PrecoStop := EMA_35 - 0.01  // Stop abaixo da EMA 35
    else if EMA_Tocada = 35 then
      PrecoStop := EMA_40 - 0.01  // Stop abaixo da EMA 40
    else if EMA_Tocada = 40 then
      PrecoStop := EMA_45 - 0.01  // Stop abaixo da EMA 45
    else if EMA_Tocada = 45 then
      PrecoStop := EMA_50 - 0.01  // Stop abaixo da EMA 50
    else if EMA_Tocada = 50 then
      PrecoStop := EMA_50 - 0.01; // Stop abaixo da EMA 50 (última)
    
    // Calcular risco e take profit
    Risco := PrecoEntrada - PrecoStop;
    PrecoTakeProfit := PrecoEntrada + (3 * Risco);
    
    // Colocar ordem de compra
    BuyLimit(PrecoEntrada);
    
    
    // Colocar stop loss
    SellToCoverStop(PrecoStop, PrecoStop);
    
    // Colocar take profit
    SellToCoverLimit(PrecoTakeProfit);
  end;
end;
