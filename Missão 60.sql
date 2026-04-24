CREATE TABLE produto (
    codigo CHAR(7) PRIMARY KEY,
    nome_produto VARCHAR(25),
    descricao VARCHAR(60),
    quantidade INT,
    preco_unitario NUMERIC(6,2)
);

CREATE TABLE endereco (
    codigo_endereco INT PRIMARY KEY,
    cep CHAR(8),
    rua VARCHAR(20),
    numero INT,
    cidade VARCHAR(25),
    bairro VARCHAR(25),
    estado VARCHAR(30)
);

CREATE TABLE cliente (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(50),
    rg VARCHAR(9),
    fk_codigo_endereco INT,
    data_nascimento DATE,
    
    FOREIGN KEY (fk_codigo_endereco)
        REFERENCES endereco(codigo_endereco)
);

CREATE TABLE compra (
    fk_cpf_cliente VARCHAR(11),
    fk_codigo_produto CHAR(7),
    data_hora_compra datetime,
    valor_total_compra DECIMAL(6,2),

    PRIMARY KEY (fk_cpf_cliente, fk_codigo_produto),

    FOREIGN KEY (fk_cpf_cliente)
        REFERENCES cliente(cpf),

    FOREIGN KEY (fk_codigo_produto)
        REFERENCES produto(codigo)
);



INSERT INTO endereco VALUES
(1,'01001000','Rua A',10,'São Paulo','Centro','SP'),
(2,'20040002','Rua B',20,'Rio de Janeiro','Copacabana','RJ'),
(3,'30130010','Rua C',30,'Belo Horizonte','Savassi','MG'),
(4,'40020000','Rua D',40,'Salvador','Barra','BA'),
(5,'50030000','Rua E',50,'Recife','Boa Viagem','PE'),
(6,'60040000','Rua F',60,'Fortaleza','Aldeota','CE'),
(7,'70040000','Rua G',70,'Brasília','Asa Sul','DF'),
(8,'80050000','Rua H',80,'Curitiba','Centro','PR'),
(9,'90060000','Rua I',90,'Porto Alegre','Moinhos','RS'),
(10,'88070000','Rua J',100,'Florianópolis','Centro','SC');



INSERT INTO cliente VALUES
('11111111111','João Silva','123456789',1,'1990-01-01'),
('22222222222','Maria Souza','987654321',2,'1992-02-02'),
('33333333333','Carlos Lima','456789123',3,'1988-03-03'),
('44444444444','Ana Costa','789123456',4,'1995-04-04'),
('55555555555','Pedro Rocha','321654987',5,'1991-05-05'),
('66666666666','Juliana Alves','654987321',6,'1993-06-06'),
('77777777777','Lucas Mendes','147258369',7,'1987-07-07'),
('88888888888','Fernanda Dias','258369147',8,'1996-08-08'),
('99999999999','Rafael Pinto','369147258',9,'1994-09-09'),
('00000000000','Patricia Gomes','159753486',10,'1990-10-10');


INSERT INTO produto VALUES
('P000001','Teclado','Teclado USB',50,99.90),
('P000002','Mouse','Mouse óptico',100,49.90),
('P000003','Monitor','Monitor 24"',30,899.90),
('P000004','Notebook','Notebook i5',20,3500.00),
('P000005','HD','HD 1TB',40,299.90),
('P000006','SSD','SSD 480GB',60,399.90),
('P000007','Memória RAM','8GB DDR4',80,199.90),
('P000008','Fonte','Fonte 500W',35,249.90),
('P000009','Gabinete','Gabinete ATX',25,199.90),
('P000010','Placa-mãe','Placa mãe B450',15,599.90),
('P000011','Processador','Ryzen 5',18,1200.00),
('P000012','Webcam','Webcam HD',45,149.90),
('P000013','Headset','Headset gamer',55,299.90),
('P000014','Microfone','Microfone USB',20,199.90),
('P000015','Cadeira','Cadeira gamer',10,1500.00),
('P000016','Mesa','Mesa escritório',12,800.00),
('P000017','Impressora','Impressora HP',22,699.90),
('P000018','Scanner','Scanner mesa',8,499.90),
('P000019','Roteador','Roteador Wi-Fi',33,249.90),
('P000020','Switch','Switch 8 portas',27,199.90);


INSERT INTO compra VALUES
('11111111111','P000001','2024-01-01 10:00:00',99.90),
('11111111111','P000002','2024-03-15 10:05:00',49.90),
('22222222222','P000003','2025-01-02 11:00:00',899.90),
('22222222222','P000004','2025-04-10 11:10:00',3500.00),
('33333333333','P000005','2024-06-03 12:00:00',299.90),
('33333333333','P000006','2025-07-03 12:10:00',399.90),
('44444444444','P000007','2026-01-04 13:00:00',199.90),
('44444444444','P000008','2026-02-04 13:10:00',249.90),
('55555555555','P000009','2025-03-05 14:00:00',199.90),
('55555555555','P000010','2024-08-05 14:10:00',599.90),
('66666666666','P000011','2026-03-06 15:00:00',1200.00),
('66666666666','P000012','2025-09-06 15:10:00',149.90),
('77777777777','P000013','2024-10-07 16:00:00',299.90),
('77777777777','P000014','2026-04-07 16:10:00',199.90),
('88888888888','P000015','2025-11-08 17:00:00',1500.00),
('88888888888','P000016','2026-05-08 17:10:00',800.00),
('99999999999','P000017','2024-12-09 18:00:00',699.90),
('99999999999','P000018','2025-02-09 18:10:00',499.90),
('00000000000','P000019','2026-06-10 19:00:00',249.90),
('00000000000','P000020','2025-01-10 19:10:00',199.90);