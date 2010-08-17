Feature: Registrar periodo

  Como um usuario eu quero registrar o meu horário de chegada ou saída

  Scenario: Registrando a hora de chegada
    Given Exista o usuário de login "horafeliz"
    And a hora corrente seja "08:00" e o dia seja "2010-08-16"
    When o usuario efetuar o checkin
    Then ele visualiza a mensagem "Checkin realizado com sucesso!"
    And deve ser exibido na tabela o checkin com a hora "08:00" para o dia "2010-08-16"
