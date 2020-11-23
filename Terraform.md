# Bem vindo(s), 

## Essas são minhas anotações e estudo sobre o Terraform!

### O que é Terraform ?

O significado da palavra “terraform” é basicamente modelar um planeta, lua ou qualquer outra estrela para que a atmosfera, 
temperatura, topografia ou ecologia desse lugar fique similar com o ambiente da Terra. Terraform é uma ferramenta open 
source de provisionamento de infraestrutura, criada pela HashiCorp, que permite que definamos nossa infraestrutura como 
código(IaC), usando uma linguagem simples e declarativa. Com o Terraform é possível gerenciar nossa infraestrutura entre 
uma variedade de provedores de nuvem, sejam eles públicos ou privados. 

### Exemplo 1 -- Terraform permite que você escreva infraestrutura como código

Imagine que você é um cliente de um provedor de nuvem e quer girar algumas máquinas.
Você pode acessar o console da Web e iniciar algumas novas instâncias, mas precisa fazer tudo
manualmente. percorrer alguns formulários, clique em alguns botões e, em seguida, você pode iniciar uma instância.
Terraform permite que você faça a mesma coisa, mas via código. É a automação da sua infraestrutura.

### exemplo 2 -- Pode-se definir no código o estado da sua infraestrutura

Por exemplo, você quer girar cinco instâncias pequenas e sempre que executar o Terraform, ele 
garantirá que essas cinco instâncias estejam sendo executadas na sua plataforma de nuvem.
Mesmo se você alterou algo manualmente, o Terraform tentará combinar o código com a infraestrutura real.

### exemplo 3 -- o Terraform tentará combinar o código com a infraestrutura real

Por exemplo, você tem duas instâncias da web, com dois volumes e um balanceador de carga.
Isso é o que você coloca em seu código e, em seguida, o Terraform lançará duas instâncias da web, 
com dois volumes, um balanceador de carga. Se uma dessas instâncias da web for excluída, o Terraform 
fará com que, sempre que você executá-la, uma segunda instância da Web seja novamente criada para 
corresponder ao estado de sua infraestrutura. Ele também torna a infraestrutura auditável apenas 
observando os arquivos Terraform, você pode ver de que sua infraestrutura é feita. E melhor ainda, 
você pode manter as alterações, você pode manter seu histórico de alterações de infraestrutura em um 
sistema de controle de versão como o Git ou o Subversion. Isso significa que a cada mudança que você 
faz na infraestrutura, você pode encontrar uma trilha, uma trilha de auditoria em seu sistema de controle
 de versão. Ansible, Chef, Puppet, Saltstack têm foco na automação da instalação e configuração de software.
É manter as máquinas em conformidade em um determinado estado. O Terraform pode automatizar o provisionamento 
da própria infraestrutura.

AWS, DigitalOcean, o Azure, tudo que tem uma API, mas não são necessariamente as próprias máquinas.
Quando você quer automatizar a máquina, o Ansible Chef é uma forma melhor do que usar o Terraform.
Mas, o Terraform funciona bem com softwares de automação como o Ansible para instalar software, depois
que a infraestrutura é provisionada. Então, um exemplo típico é, girar um pouco de hardware usando o AWS, 
usando o Terraform, e quando esse hardware estiver disponível você pode usar ferramentas como Ansible, Chef, 
Puppet, para instalar e configurar o software nessas máquinas. Então, eles trabalham muito bem juntos.

