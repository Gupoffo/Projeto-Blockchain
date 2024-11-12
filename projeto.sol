// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SupplyChainTracking {
    uint public productCounter = 0; // Contador de produtos

    struct Product {
        uint id;
        string name;
        string description;
        address owner;
        string status;
    }

    mapping(uint => Product) public products; // Mapeamento de ID do produto para os detalhes do produto

    event ProductRegistered(uint id, string name, string description, address owner);
    event ProductStatusUpdated(uint id, string status);
    event OwnershipTransferred(uint id, address previousOwner, address newOwner);

    // Função para registrar um novo produto
    function registerProduct(string memory _name, string memory _description) public {
        productCounter++;
        products[productCounter] = Product(productCounter, _name, _description, msg.sender, "Registered");
        
        emit ProductRegistered(productCounter, _name, _description, msg.sender);
    }

    // Função para atualizar o status do produto
    function updateProduct(uint _productId, string memory _status) public {
    require(products[_productId].id != 0, "Product does not exist.");
    require(msg.sender == products[_productId].owner, "Only the owner can update the product.");

    products[_productId].status = _status;
    
    emit ProductStatusUpdated(_productId, _status);
    }


    // Função para transferir a propriedade do produto
    function transferOwnership(uint _productId, address _newOwner) public {
        require(products[_productId].id != 0, "Product does not exist.");
        require(msg.sender == products[_productId].owner, "Only the owner can transfer the product.");

        address previousOwner = products[_productId].owner;
        products[_productId].owner = _newOwner;
        
        emit OwnershipTransferred(_productId, previousOwner, _newOwner);
    }

    // Função para obter os detalhes de um produto pelo ID
    function getProduct(uint _productId) public view returns (string memory, string memory, address, string memory) {
        require(products[_productId].id != 0, "Product does not exist.");
        
        Product memory product = products[_productId];
        return (product.name, product.description, product.owner, product.status);
    }

    // Função para listar todos os IDs de produtos registrados
    function getAllProductIds() public view returns (uint[] memory) {
    uint[] memory ids = new uint[](productCounter);
    for (uint i = 1; i <= productCounter; i++) {
        ids[i - 1] = i;
    }
    return ids;
    }
}
