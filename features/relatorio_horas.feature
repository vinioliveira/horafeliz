Feature: Relatorio de Horas

    Scenario: Visualizando minhas horas de dia
        Given Exista o usuario de login "horafeliz"
        And ele tem registrado as horas para o dia "2010-01-01" com entrada "08:00" e saida "12:00"
        And entrada "13:00" e saida "18:00"
        When o usuario "horafeliz" acessa o seu relatorio de horas
        Then ele visualiza as suas horas com apenas o dia "2010-01-01"
        And com "4" horas para o intervalo de "08:00" a "12:00"
        And com "5" horas para o intervalo de "13:00" a "18:00"
        And com o total de horas para o dia e para a semana de "9" horas

