CREATE TABLE ItensPedido (
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    PRIMARY KEY(PedidoID, ProdutoID),
    FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);