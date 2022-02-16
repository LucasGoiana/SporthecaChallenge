# TESTE PHP

Neste teste você deve buscar os dados dos usuários do Brasil e seus hobbys.
No arquivo `response.json` você tem o exemplo do retorno desejado.

O arquivo `db-dump.sql` é o banco de dados que você irá usar para consultar os dados e usá-los para exibir no endpoint.

Tabelas
1. Users (Tabela de Usuários)
  - id: id único
  - name: nome do usuário
  - birthDate: Data de nascimento
  - created_at: Data/Hora quando o usuário foi salvo
  - country: País

2. Hobbies (Tabela de Hobbies)
  - id: id único
  - hobby: nome do Hobby

3. Hobbies_X_Users (Tabela de vínculo)
  - id: id único
  - idUser: id do usuário
  - idHobby: id do hobby

Boa Sorte 😄

* Dados dos usuários são totalmente fictícios.