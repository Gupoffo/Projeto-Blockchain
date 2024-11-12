Supply Chain Tracking - Blockchain-based
Este projeto é uma aplicação baseada em blockchain para rastreamento de produtos em uma cadeia de suprimentos. Ele foi desenvolvido como parte da disciplina SSC0958 Blockchain e Criptomoedas, com o objetivo de registrar e rastrear produtos de forma segura e transparente.

Descrição do Projeto
A aplicação permite que produtos sejam registrados e que seus status sejam atualizados conforme avançam na cadeia de suprimentos. Utilizando a tecnologia blockchain, garante-se que os dados dos produtos não possam ser alterados de forma maliciosa, oferecendo uma solução segura e confiável para monitoramento.

A implementação foi feita na plataforma Ethereum, utilizando contratos inteligentes escritos em Solidity.

Funcionalidades
Registrar Produto: Adiciona um novo produto à blockchain com informações como ID, localização e status inicial.
Atualizar Status: Permite ao proprietário atualizar o status do produto na cadeia de suprimentos.
Consultar Produto: Recupera as informações de um produto específico com base no seu ID.
Listar Produtos: Lista todos os IDs de produtos registrados para consulta.
Estrutura do Código
Contrato: SupplyChainTracking
Variáveis:

productCounter: Contador para gerenciar IDs dos produtos.
products: Mapeamento que armazena os produtos usando um ID único.
Estruturas:

Product: Estrutura que armazena detalhes do produto, incluindo ID, localização, proprietário e status.
Funções:

registerProduct: Registra um novo produto com dados como localização e status.
updateProduct: Atualiza o status de um produto existente, desde que o chamador seja o proprietário.
getProduct: Retorna informações detalhadas de um produto com base no ID.
getAllProductIds: Retorna uma lista de todos os IDs de produtos registrados.
Deploy e Execução
Requisitos
Node.js e npm
Remix IDE ou Hardhat para desenvolvimento e deploy
Conta e wallet de Ethereum (para teste, pode-se usar o ambiente local do Remix)

Passo a Passo para Deploy
Abra o Remix IDE.
Crie um novo arquivo SupplyChainTracking.sol e cole o código do contrato inteligente.
Compile o contrato usando a versão do compilador 0.8.x.
Selecione o ambiente de deploy ("Injected Web3" para rede Ethereum ou "Remix VM" para testes).
Clique em Deploy e interaja com o contrato na seção de deploy.
Exemplo de Uso
Registrar Produto:

Chame registerProduct com os parâmetros necessários (localização e status inicial).
O ID do produto será gerado automaticamente e você pode visualizá-lo.
Atualizar Status do Produto:

Use updateProduct passando o ID do produto e o novo status.
Apenas o proprietário do produto pode alterar o status.
Consultar Produto:

Utilize getProduct com o ID para ver os detalhes do produto.
Listar Todos os IDs:

Chame getAllProductIds para obter uma lista com todos os IDs registrados no sistema.
Aplicações Similares no Mercado
Aqui estão algumas soluções similares no mercado que utilizam blockchain para rastreamento de cadeias de suprimentos:
