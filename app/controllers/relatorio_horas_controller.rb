class RelatorioHorasController < ApplicationController
  def visualizar
    @horas = Periodo.find (:all, :order =>'date')
    @semanas = {}
    @horas.each do |hora|
      data_inicio = hora.date.at_beginning_of_week;
      data_fim = hora.date.at_end_of_week
      semanaHash = obter_semana data_inicio, data_fim
      semanaHash[:periodos].push hora
    end
  end

  def obter_semana data_inicio, data_fim
    semana = @semanas["#{data_inicio.to_date}-#{data_fim.to_date}"]
    if semana == nil
      semana = { :data_inicio => data_inicio, :data_fim => data_fim, :periodos => []}
      @semanas["#{data_inicio.to_date}-#{data_fim.to_date}"] = semana
    end
    semana
  end
end

