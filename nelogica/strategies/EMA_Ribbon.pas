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
  ToqueEMA_Anterior: Boolean;
  EMA_Tocada: Integer;
  EMA_Tocada_Anterior: Integer;
  PrecoEntrada: Float;
  PrecoStop: Float;
  PrecoTakeProfit: Float;
  Risco: Float;
  
  // Variáveis para debug
  TemPosicao: Boolean;
  TemOrdensPendentes: Boolean;
  
  // Variável para unidade mínima
  UnidadeMinima: Float;

begin
  // Calcular todas as EMAs
  EMA_20 := MediaExp(20, Close);
  EMA_25 := MediaExp(25, Close);
  EMA_30 := MediaExp(30, Close);
  EMA_35 := MediaExp(35, Close);
  EMA_40 := MediaExp(40, Close);
  EMA_45 := MediaExp(45, Close);
  EMA_50 := MediaExp(50, Close);
  
  // Calcular unidade mínima baseada na magnitude do preço
  if Close < 10 then
    UnidadeMinima := 0.00001    // Para preços < 10 (ex: 1.17470)
  else if Close < 1000 then
    UnidadeMinima := 0.001      // Para preços < 1000 (ex: 147.365)
  else
    UnidadeMinima := 0.01;      // Para preços >= 1000 (ex: 111880.59)
  
  // Verificar se está em tendência de alta (todas as EMAs em ordem crescente E acima das EMAs anteriores)
  TendenciaAlta := (EMA_20 > EMA_25) and 
                   (EMA_25 > EMA_30) and 
                   (EMA_30 > EMA_35) and 
                   (EMA_35 > EMA_40) and 
                   (EMA_40 > EMA_45) and 
                   (EMA_45 > EMA_50) and
                   // Verificar se todas as EMAs atuais estão acima das EMAs do candle anterior
                   (EMA_20 > EMA_20[1]) and
                   (EMA_25 > EMA_25[1]) and
                   (EMA_30 > EMA_30[1]) and
                   (EMA_35 > EMA_35[1]) and
                   (EMA_40 > EMA_40[1]) and
                   (EMA_45 > EMA_45[1]) and
                   (EMA_50 > EMA_50[1]);
  
  // Plotar todas as EMAs no gráfico
  PlotN(1, EMA_20);  // EMA 20 - Branca, espessura 2
  SetPlotColor(1, clWhite);
  SetPlotWidth(1, 2);
  
  PlotN(2, EMA_25);  // EMA 25 - Amarela
  SetPlotColor(2, clYellow);
  
  PlotN(3, EMA_30);  // EMA 30 - Amarela
  SetPlotColor(3, clYellow);
  
  PlotN(4, EMA_35);  // EMA 35 - Amarela
  SetPlotColor(4, clYellow);
  
  PlotN(5, EMA_40);  // EMA 40 - Amarela
  SetPlotColor(5, clYellow);
  
  PlotN(6, EMA_45);  // EMA 45 - Amarela
  SetPlotColor(6, clYellow);
  
  PlotN(7, EMA_50);  // EMA 50 - Amarela
  SetPlotColor(7, clYellow);
  
  // Variáveis para debug
  TemPosicao := HasPosition;
  TemOrdensPendentes := HasPendingOrders;
  
  // Verificar se a mínima do candle ANTERIOR tocou alguma EMA
  ToqueEMA_Anterior := false;
  EMA_Tocada_Anterior := 0;
  
  if (Low[1] <= EMA_20[1]) and (Low[1] > EMA_25[1]) then
  begin
    ToqueEMA_Anterior := true;
    EMA_Tocada_Anterior := 20;
  end
  else if (Low[1] <= EMA_25[1]) and (Low[1] > EMA_30[1]) then
  begin
    ToqueEMA_Anterior := true;
    EMA_Tocada_Anterior := 25;
  end
  else if (Low[1] <= EMA_30[1]) and (Low[1] > EMA_35[1]) then
  begin
    ToqueEMA_Anterior := true;
    EMA_Tocada_Anterior := 30;
  end
  else if (Low[1] <= EMA_35[1]) and (Low[1] > EMA_40[1]) then
  begin
    ToqueEMA_Anterior := true;
    EMA_Tocada_Anterior := 35;
  end
  else if (Low[1] <= EMA_40[1]) and (Low[1] > EMA_45[1]) then
  begin
    ToqueEMA_Anterior := true;
    EMA_Tocada_Anterior := 40;
  end
  else if (Low[1] <= EMA_45[1]) and (Low[1] > EMA_50[1]) then
  begin
    ToqueEMA_Anterior := true;
    EMA_Tocada_Anterior := 45;
  end;

  // Verificar se a mínima do candle ATUAL tocou alguma EMA (para plotagem)
  ToqueEMA := false;
  EMA_Tocada := 0;
  
  if (Low <= EMA_20) and (Low > EMA_25) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 20;
    PlotText("20", clYellow, 0, 7);
    //PaintBar(clYellow);
  end
  else if (Low <= EMA_25) and (Low > EMA_30) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 25;
    PlotText("25", clYellow, 0, 7);
    //PaintBar(clYellow);
  end
  else if (Low <= EMA_30) and (Low > EMA_35) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 30;
    PlotText("30", clYellow, 0, 7);
    //PaintBar(clYellow);
  end
  else if (Low <= EMA_35) and (Low > EMA_40) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 35;
    PlotText("35", clYellow, 0, 7);
    //PaintBar(clYellow);
  end
  else if (Low <= EMA_40) and (Low > EMA_45) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 40;
    PlotText("40", clYellow, 0, 7);
    //PaintBar(clYellow);
  end
  else if (Low <= EMA_45) and (Low > EMA_50) then
  begin
    ToqueEMA := true;
    EMA_Tocada := 45;
    PlotText("45", clYellow, 0, 7);
    //PaintBar(clYellow);
  end;
  
  // Estratégia principal - apenas em tendência de alta
  if TendenciaAlta and ToqueEMA_Anterior and not TemPosicao and not TemOrdensPendentes then
  begin
    // Verificar se o preço atual cruzou a máxima do candle anterior (que teve toque no EMA)
    if High > High[1] then
    begin
      // Executar compra imediatamente no mercado
      PrecoEntrada := High[1]; // Preço de entrada real
      //BuyLimit(PrecoEntrada);
      
       
      
      // Recalcular preços baseado na EMA tocada no candle anterior
      if EMA_Tocada_Anterior = 20 then
        PrecoStop := EMA_25[1] - UnidadeMinima
      else if EMA_Tocada_Anterior = 25 then
        PrecoStop := EMA_30[1] - UnidadeMinima
      else if EMA_Tocada_Anterior = 30 then
        PrecoStop := EMA_35[1] - UnidadeMinima
      else if EMA_Tocada_Anterior = 35 then
        PrecoStop := EMA_40[1] - UnidadeMinima
      else if EMA_Tocada_Anterior = 40 then
        PrecoStop := EMA_45[1] - UnidadeMinima
      else if EMA_Tocada_Anterior = 45 then
        PrecoStop := EMA_50[1] - UnidadeMinima;
      
      // Recalcular take profit      
      Risco := PrecoEntrada - PrecoStop;
      PrecoTakeProfit := PrecoEntrada + (3 * Risco);

      PlotN(8, PrecoEntrada);  
      SetPlotColor(8, clGreen);
      SetPlotWidth(8, 2); 

      PlotN(9, PrecoStop);  
      SetPlotColor(9, clRed);
      SetPlotWidth(9, 2); 

      PlotN(10, PrecoTakeProfit);  
      SetPlotColor(10, clWhite);
      SetPlotWidth(10, 2); 
      
      // Colocar stop loss e take profit
      // SellShortStop(PrecoStop);
      // SellShortLimit(PrecoTakeProfit);   
     
    end;
  end;
end;

