# Bem vindo(s), 

## Essas são minhas anotações e estudo sobre o FluentD!

### O que é o FluentD ??

Fluentd é um coletor de dados de código aberto, que permite unificar a coleta e o consumo de dados para um melhor uso e compreensão dos dados.

[FluentD_image] {https://www.fluentd.org/images/fluentd-architecture.png}


#### Registro unificado com JSON

O Fluentd tenta estruturar os dados como JSON tanto quanto possível: isso permite que o Fluentd unifique todas as facetas do processamento de dados de log: coleta, filtragem, armazenamento em buffer e saída de logs em várias fontes e destinos ( camada de log unificada ). O processamento de dados downstream é muito mais fácil com JSON, pois tem estrutura suficiente para ser acessível ao mesmo tempo em que mantém esquemas flexíveis.

#### Arquitetura plugável

O Fluentd possui um sistema de plugins flexível que permite à comunidade estender sua funcionalidade. Nossos mais de 500 plug-ins contribuídos pela comunidade conectam dezenas de fontes de dados e saídas de dados . Aproveitando os plug-ins, você pode começar a usar melhor seus logs imediatamente.

#### Recursos mínimos necessários

Fluentd é escrito em uma combinação de linguagem C e Ruby, e requer poucos recursos do sistema. A instância vanilla é executada em 30-40 MB de memória e pode processar 13.000 eventos / segundo / núcleo. Se você tiver requisitos de memória mais restritos (-450kb), verifique Fluent Bit , o forwarder leve para Fluentd.

#### Confiabilidade Integrada

O Fluentd oferece suporte a buffer baseado em memória e arquivo para evitar a perda de dados entre os nós. O Fluentd também oferece suporte a failover robusto e pode ser configurado para alta disponibilidade. Mais de 2.000 empresas orientadas a dados confiam na Fluentd para diferenciar seus produtos e serviços por meio de um melhor uso e compreensão de seus dados de registro.

### Camada de registro unificado

O Fluentd desacopla as fontes de dados dos sistemas backend, fornecendo uma camada de registro unificada entre eles.

Essa camada permite que desenvolvedores e analistas de dados utilizem muitos tipos de logs à medida que são gerados. Tão importante quanto, atenua o risco de "dados ruins" desacelerar e desinformar sua organização.

Uma camada de registro unificada permite que você e sua organização façam melhor uso dos dados e iterem mais rapidamente no software.

#### Simples e fácil, mas flexível

O Fluentd pode ser configurado no seu laptop em menos de 10 minutos. Você pode baixá-lo aqui e experimentar agora mesmo. Os mais de 500 plug-ins do Fluentd o tornam compatível com dezenas de fontes e saídas de dados . Os plug-ins também são fáceis de escrever e implantar.

#### Código aberto

Fluentd é um software de código aberto totalmente licenciado pelo Apache 2.0. Isso significa que sua imaginação, não restrições de licença, é o limite do que você pode alcançar com o Fluentd. O código-fonte está disponível no GitHub .


### Documentação 

FluentD é um coletor de código aberto para uma camada de log unificado. FluentD permite unificar a coleta e o consumo de dados para melhorar o uso e compreensão de dados. FluentD é licensiado com os termos da Licença do Apache v2.0 O projeto é feito e mantido pela Treasure Data.

Vamos começar com Fluentd ! Fluentd é um coletor de logs totalmente gratuito e de código aberto que permite instantaneamente que você tenha uma arquitetura ' Log Everything ' com mais de 125 tipos de sistemas .

## Documentação

A documentação e para iniciar utilizando o FluentD consulte [FluentD_Docs]{https://docs.fluentd.org/quickstart}

## Instalação 

A documentação do Fluentd é essencial para conseguir instalar corretamente conforme a versão de sistema que será utilizado. Para mais informações acesse [FluentD]{https://docs.fluentd.org/installation}