FEATURE: Autoavalia��o
AS A aluno 
I WANT TO fazer uma autoavalia��o para que o professor possa utilizar de compara��o e mostrar que talvez, com base no meu esfor�o, eu recebi uma nota injusta
SO THAT posso melhorar meus conceitos

SCENARIO: Autoavalia��o do aluno Edjan bem sucedida
GIVEN o aluno �Edjan� est� na p�gina de autoavalia��o
WHEN o aluno �Edjan� preenche os conceitos para todas as metas 
THEN o sistema armazena a avalia��o que o aluno �Edjan� deu a si mesmo

SCENARIO: Confirma��o autoavalia��o bem sucedida
GIVEN o aluno �Edjan� est� na p�gina de autoavalia��o
AND �Edjan� preencheu todos os conceitos para todas as metas
WHEN o aluno �Edjan� clica no bot�o �auto-avaliar� 
THEN o sistema exibe uma caixa de di�logo com uma mensagem de confirma��o
