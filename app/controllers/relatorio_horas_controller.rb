class RelatorioHorasController < ApplicationController
  def visualizar
    @horas = Hora.find (:all, :order =>'date')
    @semanas = {}
    @horas.each do |hora|
      data_inicio = hora.date.at_beginning_of_week;
      data_fim = hora.date.at_end_of_week
      semanaHash = obter_semana data_inicio, data_fim
      dia = hora.date.to_date
      diaHash = obter_dia semanaHash, dia
      diaHash = colocar_hora diaHash, hora
    end
  end

  def obter_semana data_inicio, data_fim
    semana = @semanas["#{data_inicio.to_date}-#{data_fim.to_date}"]
    if semana == nil
      semana = { :data_inicio => data_inicio, :data_fim => data_fim, :dias => {}}
      @semanas["#{data_inicio.to_date}-#{data_fim.to_date}"] = semana
    end
    semana
  end

  def obter_dia semana, dia
    diaHash = semana[:dias][dia.to_s]
    if diaHash == nil
      diaHash = { :dia => dia, :horas => {}}
      semana[dia.to_s] = diaHash
    end
    diaHash
  end

  def colocar_hora dia, hora
    if hora.tipo == "CHECKIN"
      dia[:checkin] = hora
    elsif hora.tipo == "CHECKOUT"
      dia[:checkout] = hora
    end
    dia
  end

end

