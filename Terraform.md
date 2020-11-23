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

### Instalação 

Entre no site oficial do [Terraform](https://www.terraform.io/downloads.html) se não encontrar por este link entre
no home do [Terraform](https://www.terraform.io).

O arquivo para instalação é um binário. Pode ser necessário apontar o path para encontrar o terraform
no Linux ou Mac.

```
export PATH=/your/path/terraform/:$PATH
```

No Windows deverá estar em **C:/terraform**. Também precisará exportar o caminho adicionando na variável de ambiente do windows o C:/terraform (da pra fazer com o mouse *_-) em Propriedades do Sistem, Advanced, Environment Variables/Path-->edit

Após descompactar e inserir no local correto  execute:

```
terraform --help
```

criar chaves ssh com ssh-keygem





### Comandos do Terraform

#### Comandos Comuns:
    apply              Builds or changes infrastructure
    
    console            Interactive console for Terraform interpolations (da pra testar as variáveis)
    
    destroy            Destroy Terraform-managed infrastructure
    
    env                Workspace management
    
    fmt                Rewrites config files to canonical format
    
    get                Download and install modules for the configuration
    
    graph              Create a visual graph of Terraform resources
    
    import             Import existing infrastructure into Terraform
    
    init               Initialize a Terraform working directory
    
    login              Obtain and save credentials for a remote host
    
    logout             Remove locally-stored credentials for a remote host
    
    output             Read an output from a state file
    
    plan               Generate and show an execution plan
    
    providers          Prints a tree of the providers used in the configuration
    
    refresh            Update local state file against real resources
    
    show               Inspect Terraform state or plan
    
    taint              Manually mark a resource for recreation
    
    untaint            Manually unmark a resource as tainted
    
    validate           Validates the Terraform files
    
    version            Prints the Terraform version
    
    workspace          Workspace management

#### Outros Comandos:
    0.12upgrade        Rewrites pre-0.12 module source code for v0.12
    
    0.13upgrade        Rewrites pre-0.13 module source code for v0.13
    
    debug              Debug output management (experimental)
    
    force-unlock       Manually unlock the terraform 
    state
    
    push               Obsolete command for Terraform Enterprise legacy (v1)
    
    state              Advanced state management


### Variáveis

Pode-se usar variáveis para definir valores que vão ser utilizados em mais de um lugar na estrutura do arquivo terraform. Assim como no desenvolvimento de código, 
as variáveis são muito úteis para definir valores e trocá-los posteriormente.

#### O que é uma variável no Terraform?

As variáveis ​​de entrada servem como parâmetros para um módulo Terraform, permitindo que aspectos do módulo sejam personalizados sem alterar o código-fonte do próprio módulo e permitindo que os módulos sejam compartilhados entre diferentes configurações.

Ao declarar variáveis ​​no módulo raiz de sua configuração, você pode definir seus valores usando opções CLI e variáveis ​​de ambiente. Quando você os declara em módulos filhos , o módulo de chamada deve passar valores no modulebloco.

##### Não pode ser nomes de variáveis

source
version
providers
count
for_each
lifecycle
depends_on
locals

#### Exemplo 1 - variável

```
variable "myvar" {
    type = "string"
    default = "hello terraform"
}
```

Pode-se testar utilizando o terraform console


```
terraform console
```
Em seguida, 

```
>  var.myvar
```
Ou 

```
>  "${var.myvar}"
```

#### Exemplo 2 - map

```
variable "mymap" {
    type = map(string)
    default = {
      mykey = "my value"
      abobrinha = "muito ruim"
    }
}
```

```
terraform console
```
Em seguida, 

```
>  var.mymap
```
Ou 

```
>  var.mymap["mykey"]
```
Ou

```
>  "${var.mymap["mykey"]}"
```

#### Exemplo 3 - lista

```
variable "mylist" {
    type = list
    default = [1,2,3,4,5]
}
```

```
terraform console
```
Em seguida, 

```
>  var.mylist
```
Ou, um elemento passando index pelo colchete

```
>  var.mylist[0]
```
Ou, um elemento passando o index com a função element

```
>  element(var.mylist, 1)
```
Ou, intervalo de elementos 

```
>  slice(var.mylist, 0, 3)  
```

### Criando uma resource 


#### O que é um resource no terraform?

Os recursos (resources) são o elemento mais importante na linguagem Terraform. Cada bloco de recursos descreve um ou mais objetos de infraestrutura, como redes virtuais, instâncias de computação ou componentes de nível superior, como registros DNS. As declarações de recursos podem incluir vários recursos avançados, mas apenas um pequeno subconjunto é necessário para o uso inicial.

```
resource "aws_instance" "web" {
  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"
}  
```

Um bloco de recursos declara um recurso de um determinado tipo ("aws_instance") com um determinado nome local ("web"). O nome é usado para se referir a este recurso de qualquer lugar no mesmo módulo Terraform, mas não tem significado fora do escopo desse módulo.

O tipo e o nome do recurso juntos servem como um identificador para um determinado recurso e, portanto, **devem ser exclusivos dentro de um módulo**.

Dentro do corpo do bloco (entre {e }) estão os argumentos de configuração do próprio recurso. A maioria dos argumentos nesta seção depende do tipo de recurso e, de fato, neste exemplo, ambos amie instance_typesão argumentos definidos especificamente para o aws_instancetipo de recurso .

#### Tipos de Recursos

#### Providers

Cada recurso está associado a um único tipo de recurso , que determina o tipo de objeto de infraestrutura que ele gerencia e quais argumentos e outros atributos o recurso suporta. Cada tipo de recurso é implementado por um provedor (provider), que é um plugin para o Terraform que oferece uma coleção de tipos de recursos. Um provedor geralmente fornece recursos para gerenciar uma única nuvem ou plataforma de infraestrutura local. Os provedores são distribuídos separadamente do Terraform, mas o Terraform pode instalar automaticamente a maioria dos provedores ao inicializar um diretório de trabalho.

Para gerenciar recursos, um módulo Terraform deve especificar quais provedores ele requer. Além disso, a maioria dos provedores precisa de alguma configuração para acessar suas APIs remotas, e o módulo raiz deve fornecer essa configuração.


```
provider "aws" {

}
```


#### tentando regioes


```
variable "AWS_REGION" {
    type = string
}

variable "AMIS" {
    type = map(string)
    default = {
        eu-west-1 = "my ami"
    }
}

```

No conjunto acima pode-se notar um map de regiões o que seria interessante para testar se a região que eu quero colocar está dentro do grupo de regiões que eu possuo


### terraform init

O comando terraform init é usado para inicializar um diretório de trabalho contendo arquivos de configuração do Terraform. Este é o primeiro comando que deve ser executado após escrever uma nova configuração do Terraform ou clonar uma existente a partir do controle de versão. É seguro executar este comando várias vezes.


```
terraform init [options] [DIR]
```

#### Opções gerais

As seguintes opções se aplicam a todas (ou várias das) etapas de inicialização:

- input=true Peça informações, se necessário. Se for falso, ocorrerá um erro se a entrada for necessária.

- lock=false Desative o bloqueio de arquivos de estado durante as operações relacionadas ao estado.

- lock-timeout=<duration> Substitui o tempo que o Terraform aguardará para adquirir um bloqueio de estado. O padrão é 0s(zero segundos), o que causa falha imediata se o bloqueio já estiver retido por outro processo.

-no-color Desative os códigos de cores na saída do comando.

-upgrade Opte por atualizar os módulos e plug-ins como parte de suas respectivas etapas de instalação. Veja as seções abaixo para mais detalhes.

### terraform console

```
terraform console [options] [dir]
```

Este comando fornece um console de linha de comando interativo para avaliar e experimentar expressões . Isso é útil para testar interpolações antes de usá-las nas configurações e para interagir com quaisquer valores atualmente salvos no estado. Se o estado atual estiver vazio ou ainda não tiver sido criado, o console pode ser usado para experimentar a sintaxe da expressão e as funções integradas .

O dirargumento especifica o diretório do módulo raiz a ser usado. Se um caminho não for especificado, o diretório de trabalho atual será usado.

As opções com suporte são:

- state=path- Caminho para um arquivo de estado local. As expressões serão avaliadas usando valores deste arquivo de estado. Se não for especificado, o estado associado ao espaço de trabalho atual será usado.
Você pode fechar o console com o exitcomando ou pressionando Control-C ou Control-D.

### terraform plan



### terraform apply

