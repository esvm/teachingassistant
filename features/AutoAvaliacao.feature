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

meta
SCENARIO: Autoavalia��o do aluno Edjan mal sucedida
GIVEN o aluno �Edjan� est� na p�gina de autoavalia��o
AND �Edjan� n�o preencheu a autoavalia��o para a meta �Especificar requisitos com qualidade�
WHEN o aluno �Edjan� tenta fazer a autoavalia��o
THEN o sistema n�o valida a autoavalia��o do aluno �Edjan�

SCENARIO: Confirma��o autoavalia��o mal sucedida
GIVEN o aluno �Edjan� est� na p�gina de autoavalia��o
AND �Edjan� n�o preencheu a autoavalia��o para a meta �Especificar requisitos com qualidade�
WHEN o aluno �Edjan� clica no bot�o �auto-avaliar� 
THEN o sistema uma mensagem de erro informando que falta avaliar a meta �Especificar requisitos com qualidade�
AND o sistema n�o valida a autoavalia��o de �Edjan�
