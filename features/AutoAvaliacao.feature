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
AND o sistema exibe alguma coisa

SCENARIO: Nenhuma discrep�ncia encontrada - GUI
GIVEN o professor �Paulo� avaliou todos os seus alunos (�Edjan�, �Pedro� e �Lucas�)
AND todos os alunos (�Edjan�, �Pedro� e �Lucas�) se auto avaliaram
AND o aluno �Edjan� tem conceito inferior em 1 de 5 metas
AND o aluno �Pedro� s� tem conceitos superiores
AND o aluno �Lucas� s� tem conceitos iguais
AND o professor �Paulo� est� logado no sistema como �professor�
WHEN o professor �Paulo� acessa a p�gina de �Estat�sticas�
THEN o sistema faz os c�lculos de acordo com os crit�rios especificados 
AND o sistema atualiza todos os dados do gr�fico e da lista de alunos
SCENARIO: Uma discrep�ncia encontrada - GUI
GIVEN o professor �Paulo� avaliou todos os seus alunos (�Edjan�, �Pedro� e �Lucas�)
AND todos os alunos (�Edjan�, �Pedro� e �Lucas�) se auto avaliaram
AND h� discrep�ncia com o aluno �Edjan�
AND o professor �Paulo� est� logado no sistema como �professor�
WHEN o professor �Paulo� acessa a p�gina de �Estat�sticas�
THEN o sistema faz os c�lculos de acordo com os crit�rios especificados 
AND o sistema atualiza todos os dados do gr�fico e da lista de alunos, possibilitando ao professor �Paulo� visualizar 
AND o sitema permite detalhar que o aluno �Edjan� possui discrep�ncias
