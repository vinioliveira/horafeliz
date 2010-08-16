class RelatorioHorasController < ApplicationController
  def visualizar
    @horas = Periodo.find (:all, :order =>'date')
    @totais_de_horas_no_dia = {};
    @semanas = {}
    @horas.each do |hora|
      data_inicio = hora.date.at_beginning_of_week;
      data_fim = hora.date.at_end_of_week
      semanaHash = obter_semana data_inicio, data_fim
      obter_dias semanaHash[:periodos], hora
    end
  end

  def obter_dias periodo, hora
    if periodo[hora.date.to_date] == nil
       periodo[hora.date.to_date] = []
    end
    periodo[hora.date.to_date].push hora
    if(@totais_de_horas_no_dia[hora.date.to_date] == nil)
      @totais_de_horas_no_dia[hora.date.to_date] = 0
    end
    @totais_de_horas_no_dia[hora.date.to_date] += hora.total_horas
  end

  def obter_semana data_inicio, data_fim
    semana = @semanas["#{data_inicio.to_date}-#{data_fim.to_date}"]
    if semana == nil
      semana = { :data_inicio => data_inicio, :data_fim => data_fim, :periodos => {}}
      @semanas["#{data_inicio.to_date}-#{data_fim.to_date}"] = semana
    end
    semana
  end
end

