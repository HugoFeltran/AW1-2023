/*
Integrantes da equipe: 

João Guilherme Carvalho Novaes | SP3067271

Hugo Feltran Wirth | SP3068234

Julio Rodrigues Soares | SP 3065065

Erick Santos Brito | SP3045404

Grazielle Aparecida F. Almeida | SP306770X
*/

CREATE DATABASE estudante;
USE estudante;

CREATE TABLE cliente
(
codigo INT NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
senha CHAR(60) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE endereco
(
codigo INT NOT NULL,
rua VARCHAR(150),
bairro VARCHAR(150),
cidade VARCHAR(100),
estado VARCHAR(2),
numerocasa VARCHAR(10),
complemento TEXT
);

create table Alterasenha
(
codigo INT NOT NULL,
codigo_cliente INT NOT NULL,
codigo_verificacao char (36) NOT NULL,
gerada_em DATETIME,
utilizada BOOLEAN,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_cliente) REFERENCES Cliente (codigo)
);

CREATE TABLE Loja
(
codigo INT NOT NULL,
nome VARCHAR (100),
PRIMARY KEY (codigo)
);

CREATE TABLE Categoria
(
codigo INT NOT NULL,
nome VARCHAR(255) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE Produto
(
codigo INT NOT NULL,
codigo_categoria INT NOT NULL,
nome VARCHAR(255) NOT NULL,
ficha_tecnica text,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_categoria) REFERENCES categoria (codigo)
);

CREATE TABLE Anuncio
(
codigo INT NOT NULL,
codigo_produto INT NOT NULL,
codigo_loja INT NOT NULL,
destaque BOOLEAN,
redirecionamento TEXT,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_produto) REFERENCES Produto (codigo),
FOREIGN KEY (codigo_loja) REFERENCES Loja (codigo)
);

CREATE TABLE Preco
(
codigo INT NOT NULL,
codigo_anuncio INT NOT NULL,
quantidade_parcelas INT NOT NULL,
preco_parcelado FLOAT NOT NULL,
preco_vista FLOAT NOT NULL,
FOREIGN KEY (codigo_anuncio) REFERENCES Anuncio (codigo)
);

CREATE TABLE Imagem
(
codigo INT NOT NULL,
codigo_anuncio INT,
caminho TEXT,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_anuncio) REFERENCES Anuncio (codigo)
);

CREATE TABLE Favorito
(
codigo_anuncio INT NOT NULL,
codigo_cliente INT NOT NULL,
PRIMARY KEY (codigo_anuncio, codigo_cliente),
FOREIGN KEY (codigo_cliente) REFERENCES Cliente (codigo)
);

CREATE TABLE Alerta
(
codigo INT NOT NULL,
codigo_cliente INT NOT NULL,
codigo_produto INT NOT NULL,
preco_desejado FLOAT NOT NULL,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_cliente) REFERENCES Cliente (codigo),
FOREIGN KEY (codigo_produto) REFERENCES Produto (codigo)
);


INSERT INTO Cliente values (1,'Jorge Ferraz Camargo','jorge.ferraz@gmail.com','$2a$12$FAKOj75ygbQfUncawClufuaYQ7RHIno365gBmzVtRWzutqzNGZ/HC');
INSERT INTO Cliente values (2,'Camila Dutra Silva','camila.silva@gmail.com','$2a$12$52Bpduefv/UXF99fch9SMeOdaUWCLGhtyCPPfonUyjksM9G.0jS1m');
INSERT INTO Cliente values (3,'Matheus Costa Navarro','matheus.costa@gmail.com','$2a$12$TvimaFxS6Lw/FNzsnujumusJlaexmP1QAGyjGpIGpOCcpJof.HHVe');
INSERT INTO Cliente values (4,'Beatriz Pereira Jesus','beatriz.pereira@gmail.com','$2a$12$NzPVCqtrpvCliI9r7yDrSugct.qG37WsZCjd.f9xVhHKWpgTD2h1G');
insert into Cliente values(5,'João Oliveira Rezende','joao.oliveira@gmail.com','$2a$12$362WRrVxCwv66wns1qW4ru8hKSieH8/VlMR2jgpK18ZfMCJavYZq2');
INSERT INTO Cliente values (6,'Guilherme Afonso Vieira','guilherme.vieira@gmail.com','$2a$12$QKewSDS1VH27puBkbnkpS.UtlzldmB9URcLxC5r/9MbDWZddgtCNu');
INSERT INTO Cliente values (7,'Giulia Cali Bert','giulia.cali@gmail.com','$2a$12$CMF3wMbklM3lg6wwgzZzdu9HRUxOjSgwzB5zsEJhOtL0nXLxmgSAO');
INSERT INTO Cliente values (8,'Júlia Monteiro Navas','julia.navas@gmail.com','$2a$12$HGTUbdtFQ7JKyL5H94Q6de3axI6Xj/Wj/Ar205ljs5et7YRllBCYK');
INSERT INTO Cliente values (9,'Carol Souza Camargo','carol.souza@gmail.com','$2a$12$UkxxOLG.tiBoO2D2aElKPuQ6IkuLhFaiDDYtLn67XgVbZgWMudAX2');
INSERT INTO Cliente values (10,'Maria Silvestre Marques','maria.marques@gmail.com','$2a$12$SqnVNF/8KCm0HPHFXKxaieW.Zw7SqUD4zLSVvqylDcb32pXbEqNFG');
INSERT INTO Cliente values (11,'Helena Castro Marquezine','helena.castro@gmail.com','$2a$12$7S8YziTZ24oXbYCKfedyc.cDO3bEIhh6z7blasy7s5onWMEKOuaAG');
INSERT INTO Cliente values (12,'Pedro Nogueira Yato','pedro.yato@gmail.com','$2a$12$1ITHaXet0nQIxlRwWeLN.uay0V.IMGvLBAKRLW966V.zudIgD6duW');
INSERT INTO Cliente values (13,'Fernanda Virti Ferreira','fernanda.virti@gmail.com','$2a$12$o03zdKZy1cWtW02loiXVIOamlMaaz7AXH98TXfRfv8Mleoy/n/grC');
INSERT INTO Cliente values (14,'Ana Higui Verti','ana.higuti@gmail.com','$2a$12$hkVJF3Hhk8arQWXCOeJORe7Cm171PVvvHgaPPJ4pSLyU.NHKx2Bwm');
INSERT INTO Cliente values (15,'Marcelo Quinho Tyrant','marcelo.tyrant@gmail.com','$2a$12$ov3HvE/vrws4s0Wf79eW.uqGZqozz1lSAo295NTTEMfbnLRjVTex6');
INSERT INTO Cliente values (16,'Italo Junior Drogi','italo.drogi@gmail.com','$2a$12$v2H5i6ydKEcDsuMCFFNpl.rB1/f6IfTO4VMiHj9JP8ywF4D6oCsdq');
INSERT INTO Cliente values (17,'Caique Loareal Pontes','caique.loareal@gmail.com','$2a$12$OLa6w0m5Y8aOdutYB7//4uavlAB3cvBQiqXZzmru1fwngurmwHXKu');
INSERT INTO Cliente values (18,'Tainá Dig Big','taina.big@gmail.com','$2a$12$GWI27QtydyzRMBl1fMqAg.kz.7D75Q/G6myWP30AyQQ54jUOUO0GK');
INSERT INTO Cliente values (19,'Victor Nyan Clark','victor.nyan@gmail.com','$2a$12$fcS7CTd9SgxAo1o2DcDoxefJ64TIYuwyhHMqpU8Zxlguf6jCTE3RK');
INSERT INTO Cliente values (20,'Igor Aguiar Diaz','igor.diaz@gmail.com','$2a$12$vdFem/9XAf0vi1Rc6kXZ7O31LR0YVZJACiy1vW0fWDbK1BGUSjhLK');
INSERT INTO Cliente values (21,'Taynara Moraes Monteiro','taynara.moraes@gmail.com','$2a$12$6VECPT.C6ccVqKr/BAkA7ehC07DpqGkMtyvk0Eu190O0IdfnlmyWW');
INSERT INTO Cliente values (22,'Leticia Duarte Aparecida','leticia.duarte@gmail.com','$2a$12$e0JwqVJTZmOQv/dPm2mb0OfJACxQ3H9868gUgWiiBAJTZ8GYLAb0W');
INSERT INTO Cliente values (23,'Luiz Perbi Will','luiz.perbi@gmail.com','$2a$12$UPQreBKeG7d9G0XXBv3he.YU1.wZx27BsTsEVjNyvb15EWBS75yTK');
INSERT INTO Cliente values (24,'Milena Lekysha Tik','milena.lekysha@gmail.com','$2a$12$qXvhcBj4q6wB1sJaaX7fPuiqrJpPcDVqDsteU4RnmzH/u/nyPQ.qm');
INSERT INTO Cliente values (25,'Luiza Pepe Quinto','luiza.pepe@gmail.com','$2a$12$J5mQLoKUrnb7BdhMzyEvhuzjRqCAK4Ekew6L7Bmi5t4SAGeVTSgo2');
INSERT INTO Cliente values (26,'Eduardo Ezequiel Yat','eduardo.yat@gmail.com','$2a$12$Ynhc8DaE4HyVKsQwVMzpwOnGYzVRIRjyghEdcxXuOdI9GJpdXd6uW');
INSERT INTO Cliente values (27,'Isabela Oliver Ibi','isabela.ibi@gmail.com','$2a$12$QcuOBy6ZIoWYgOc9Ikau9u7Bi0cmXI/IBDCy7cB2.rgJKFnjvNPmW');
INSERT INTO Cliente values (28,'Alexandre Kim Vidal','alexandre.kim@gmail.com','$2a$12$SeTSiI/3pxIhkvjaWoXN/uJZthHtidbKqhD.nRIfeQ.YPPbwECjG6');
INSERT INTO Cliente values (29,'Erick Juan Vidi','erick.vidi@gmail.com','$2a$12$qW7XHvTmKPtMbcRIdQGa6.AxTHaUNWl.q/KYrKO3pCWWv8NqjyEi6');
INSERT INTO Cliente values (30,'Leandro Assis Jordi','leandro.jordi@gmail.com','$2a$12$eoIqQxvcMX54apdGg.WtNu5FqReYBFOCvvNd22JihEq1xKCFj952S');
   
   
INSERT INTO Alterasenha VALUES (1, 1, 'a4cb98df-7878-44c3-954d-89054ae4698c', '2022-06-02 10:12:00', false);
INSERT INTO Alterasenha VALUES (2, 2, '405dff03-70ed-447f-acae-fa28848c85c7', '2022-06-04 09:21:41', true);
INSERT INTO Alterasenha VALUES (3, 3, 'bd862d64-3ebe-4296-a05c-f0d0a725917a', '2022-06-05 11:59:12', true);
INSERT INTO Alterasenha VALUES (4, 4, '68c172d6-385c-4e79-b425-cf769c9d9e18', '2022-06-07 16:15:30', false);
INSERT INTO Alterasenha VALUES (5, 5, 'a1ccf5e27-acf5-4548-ab4c-e9ac96d5d0d', '2022-06-10 13:18:29', false);
INSERT INTO Alterasenha VALUES (6, 6, '3a54fe32-1889-419f-b22c-399e71c3e2c0', '2022-06-12 12:38:02', true);
INSERT INTO Alterasenha VALUES (7, 7, 'e59a792e-bfb8-4f3e-ab6e-5e2f74ab232b', '2022-06-15 14:00:01', true);
INSERT INTO Alterasenha VALUES (8, 8, '686520cd-0e6a-496f-aa80-a4956deecc21', '2022-06-18 23:59:59', false);
INSERT INTO Alterasenha VALUES (9, 9, '08729b99-8491-46a9-8bae-bef6eb53fd97', '2022-06-21 11:49:00', true);
INSERT INTO Alterasenha VALUES (10, 10, '6f1e27b1-e2ca-4a2f-863c-7c1c266ad480', '2022-06-22 21:53:42', false);
INSERT INTO Alterasenha VALUES (11, 11, '2ccb3cff-b827-490e-9902-04228d9865c5', '2022-06-22 17:00:21', true);
INSERT INTO Alterasenha VALUES (12, 12, '749ab56d-7b1d-4ce5-9e6d-a4c2b58cb3ec', '2022-06-29 15:45:04', true);
INSERT INTO Alterasenha VALUES (13, 13, '49041468-bfec-40ab-843d-8bb880bf2977', '2022-06-30 08:36:09', false);
INSERT INTO Alterasenha VALUES (14, 14, 'b5d10102-266e-4d66-ad7f-9a0b983091b9', '2022-07-01 23:14:12', false);
INSERT INTO Alterasenha VALUES (15, 15, 'da34d208-6383-4e67-bd7a-624974b33377', '2022-07-02 12:42:30', true);


INSERT INTO Favorito VALUES (1, 1);
INSERT INTO Favorito VALUES (6, 1);
INSERT INTO Favorito VALUES (4,13);
INSERT INTO Favorito VALUES (8,30);
INSERT INTO Favorito VALUES (2,16);
INSERT INTO Favorito VALUES (10,7);
INSERT INTO Favorito VALUES (1,20);
INSERT INTO Favorito VALUES (7,3);
INSERT INTO Favorito VALUES (3,8);
INSERT INTO Favorito VALUES (9,16);
INSERT INTO Favorito VALUES (5,10);
INSERT INTO Favorito VALUES (13,11);
INSERT INTO Favorito VALUES (15,2);
INSERT INTO Favorito VALUES (11,25);
INSERT INTO Favorito VALUES (14,19);
INSERT INTO Favorito VALUES (12,10);


INSERT INTO Categoria VALUES (1, 'Processadores');
INSERT INTO Categoria VALUES (2, 'Placas de Video');
INSERT INTO Categoria VALUES (3, 'Memoria RAM');
INSERT INTO Categoria VALUES (4, 'SSD');
INSERT INTO Categoria VALUES (5, 'Placas-Mãe');
INSERT INTO Categoria VALUES (6, 'Fontes');
INSERT INTO Categoria VALUES (7, 'Disco Rigido (HD)');
INSERT INTO Categoria VALUES (8, 'Drives');
INSERT INTO Categoria VALUES (9, 'Coolers');
INSERT INTO Categoria VALUES (10, 'Placa mãe');
INSERT INTO Categoria VALUES (11, 'Gabinetes');
INSERT INTO Categoria VALUES (12, 'Teclado');
INSERT INTO Categoria VALUES (13, 'Mouse');
INSERT INTO Categoria VALUES (14, 'Monitor');
INSERT INTO Categoria VALUES (15, 'Air Cooler');
INSERT INTO Categoria VALUES (16, 'Water Cooler');


INSERT INTO Produto VALUES (1, 1, 'Processador Intel I5 12600KF', 'Número de núcleos 10 Nº de Performance-cores 6
Nº de Efficient-cores 4
Nº de threads 16
Frequência turbo max 4.90 GHz
Frequência turbo máx. do Performance-core 4.90 GHz
Frequência turbo máx. do Efficient-core 3.60 GHz
Frequência base do Performance-core 3.70 GHz
Frequência base do Efficient-core 2.80 GHz
Cache 20 MB Intel® Smart Cache
Cache L2 total9.5 MB
Potência básica do processador 125 W
Energia turbo máxima 150 W');
INSERT INTO Produto VALUES (2, 1, 'Processador Intel Core i5-10400', 'Número de núcleos
6

Nº de threads
12

Frequência turbo max
4.30 GHz

Tecnologia Intel® Turbo Boost frequência 2.0‡
4.30 GHz

Frequência baseada em processador
2.90 GHz

Cache
12 MB Intel® Smart Cache

Velocidade do barramento
8 GT/s

TDP
65 W');
INSERT INTO Produto VALUES (3, 4, 'SSD Kingston A400, 120GB', 'SSD Kingston A400, 120GB, SATA, Leitura 500MB/s, Gravação 350MB/s');
INSERT INTO Produto VALUES (4, 3, 'Memória Corsair Vengeance LPX 8GB', 'Memória Corsair Vengeance LPX 8GB, 3200MHz, DDR4, CL16, Preta');
INSERT INTO Produto VALUES (5, 2, 'Geforce GTX 1060 3GB', 'Processo de fabricação: 16nm FinFET
Chip Pascal GP106
Clock do GPU 1506 MHz
Clock do GPU (Turbo) 1708 MHz
 ESPECIFICAÇÕES DAS MEMÓRIAS
Tecnologia da RAM GDDR5
Interface de largura de BUS 192 bit
Quantidade de RAM 3GB
Clock das memóriass 2002 MHz
Clock efetivo 8008 MHz
Largura de banda 192.2 GB/s
 CARACTERÍSTICAS GERAIS
Shading Units 1152
TMUs 72
ROPs 48
Pixel Rate 72.3 GPixel/s
Texture Rate 108.4 GTexel/s
Performance de pontos flutuantes FP16 3.470 TFLOPS
 DESIGN
Pinos de alimentação 1x 6 pinos
Suporte à combinação de placas Sem suporte
Tipo de Slot Dual-slot
Comprimento da placa 250 mm
TDP 120 W
Fonte recomendada 400 W
Conexões de vídeo 3x DisplayPort 1.4, 1x HDMI 2.0B, 1xDVI
 RECURSOS
DirectX 12.0
OpenCL 1.2
OpenGL 4.5
Shader 5.0');
INSERT INTO Produto VALUES (6, 2, 'RX 550 4GB', 'Velocidades: 1.100 MHz em clock base, turbo de até 1.183 MHz

Memória RAM: 2 GB de GDDR5 a 7 Gb/s
Interface de memória: 128 bits
Largura de banda: 112 GB/s
TBP: 50 Watts, requer fonte de 400 Watts');
INSERT INTO Produto VALUES (7, 4, 'Gabinete galax nebulosa', 'Marca:
Galax

Modelo:
GX700

Materiais:
Aço SGCC e vidro temperado

Fator de Forma:
Mini Tower

Filtros:
Todas as entradas de ar

Placa mãe Suportada
Mini-ITX, MicroATX

Entradas:
1 x USB 3.0
2 x USB
1 x Headset Audio Jack
Botão LED
Botão RESET
Botão POWER

Slots de Expansão:
4

Baias:
2 x 2.5"
2 x 3.5"

Clearance:
Altura máxima do Air cooler: 150 mm
Comprimento máximo da VGA: 345 mm

Water Cooler Suportado:
Frente: 120mm
Superior: 120mm
Traseira: 1 x 120mm

Ventoinhas Suportadas:
Frente: 2 x 120 ou 1 x 140mm
Superior: 2 x 120
Traseira: 1 x 120 mm

Dimensões:
380 x 196 x 410 mm');
INSERT INTO Produto VALUES (8, 6, 'Fonte GAMEMAX GP 650', 'Características:
Marca: Gamemax
Modelo: GP650
Cor: Preta

Especificações:
Potência: 650W

Versão: ATX 12V 2.3
Chave Liga/Desliga

Voltagem com seleção automatica (auto range): 100~240V

Frequência: 50~60Hz

Corrente de entrada: 8~4A

Corrente de saída: 3.3V-18A, 5V-20A, +12V-45A, -12V-0.5A, +5VSB-2.5A

Baixo ruído acústico: <20dBA

Refrigeração: Ventoinha 120 mm

MTBF: 100.000 horas (25º C)

Eficiencia: 85%

Cabos: com capa de proteção

Comprimento dos cabos: 50cm');
INSERT INTO Produto VALUES (9, 13, 'Mouse Gamer Redragon Cobra M711 RGB', 'Marca:
Redragon

Modelo:
M711

Sensor PIXART PMW3325:
para Alta Performance (10000 DPI/20G/100ips)

Iluminação RGB Ajustável:
Sistema de Iluminação Chroma RGB! (7 Diferentes Modos de Iluminação)

Polling Rate de 1000hz:
(Tempo de Resposta Ajustável via Software de 1/2/4/8ms)

7 Botões:
Programáveis

2 Botões Laterais para funções:
 atalhos, macros e etc

Compatível com Software:
para Configuração de Macro / Ajuste Iluminação RGB / Configurações de Performance

Memória Interna:
para Salvamento de Configurações

5 Perfis de Configurações:
para Troca Rápida de Configurações de um Game para Outro

Pegada Ergonômica confortável:
perfeita para Destros

Cabo Trançado:
para maior Resistência

Peso:
270 gramas

Dimensões:
6,6cm (L) x 12,7cm (A) x 4cm (P) Aprox. ');
INSERT INTO Produto VALUES (10, 2, 'GTX 1050 ti', 'Processo de fabricação: 14nm FinFET
Chip Pascal GP107
Clock do GPU 1290 MHz
Clock do GPU (Turbo) 1392 MHz
 ESPECIFICAÇÕES DAS MEMÓRIAS
Tecnologia da RAM GDDR5
Interface de largura de BUS 128 bit
Quantidade de RAM |4GB|
Clock das memóriass 1752 MHz
Clock efetivo 7008 MHz
Largura de banda 112 GB/s');
INSERT INTO Produto VALUES (11, 1, 'Ryzen 5 5600G', 'plataforma
Boxed Processor
Família de produto
AMD Ryzen™ Processors
Linha de produto
AMD Ryzen™ 5 5000 G-Series Desktop Processors with Radeon™ Graphics
Nº de núcleos de CPU
6
Nº de threads
12
Clock de Max Boost
Até 4.4GHz
Clock básico
3.9GHz
Total de Cache L2
3MB
Cachê L3 total
16MB
TDP / TDP Padrão
65W
AMD Configurable TDP (cTDP)
45-65W
Processor Technology for CPU Cores
TSMC 7nm FinFET
Desbloqueado
Sim
Pacote
AM4
Solução térmica
Wraith Stealth
Temps máx
95°C
GPU integrada:
Nº de núcleos de GPU
7
Frequência gráfica
1900 MHz');
INSERT INTO Produto VALUES (12, 1, 'Ryzen 5 3600', '
Plataforma
Boxed Processor
Família de produto
AMD Ryzen™ Processors
Linha de produto
AMD Ryzen™ 5 Desktop Processors
Nº de núcleos de CPU
6
Nº de threads
12
Clock de Max Boost
Até 4.2GHz
Clock básico
3.6GHz
Cachê L1 total
384KB
Cachê L2 total
3MB
Cachê L3 total
32MB
TDP / TDP Padrão
65W
Processor Technology for CPU Cores
TSMC 7nm FinFET
Desbloqueado
Sim
CPU Socket
AM4
Solução térmica (PIB)
Wraith Stealth
Solução térmica (MPK)
Wraith Stealth
Temps máx
95°C');
INSERT INTO Produto VALUES (13, 2, 'RX 6500 XT', 'Processo de fabricação 6 nm
PCI-Express bus 4.0
Chip Navi 24 XT
Clock do GPU 2310 MHz
Clock do GPU (Turbo) 2815 MHz
 ESPECIFICAÇÕES DAS MEMÓRIAS
Tecnologia da RAM GDDR6
Interface de largura de BUS 64 bit
Quantidade de RAM 4 GB
Clock das memóriass 2248 MHz
Clock efetivo 18000 MHz
Largura de banda 143,9 GB/s');
INSERT INTO Produto VALUES (14, 1, 'Ryzen 7 5700G', 'plataforma
Boxed Processor
Família de produto
AMD Ryzen™ Processors
Linha de produto
AMD Ryzen™ 7 5000 G-Series Desktop Processors with Radeon™ Graphics
Nº de núcleos de CPU
8
Nº de threads
16
Clock de Max Boost
Até 4.6GHz
Clock básico
3.8GHz
Total de Cache L2
4MB
Cachê L3 total
16MB
TDP / TDP Padrão
65W
AMD Configurable TDP (cTDP)
45-65W
Processor Technology for CPU Cores
TSMC 7nm FinFET
Desbloqueado
Sim
Pacote
AM4
Solução térmica
Wraith Stealth
Temps máx
95°C
Modelo gráfico
Radeon™ Graphics
Nº de núcleos de GPU
8
Frequência gráfica
2000 MHz');
INSERT INTO Produto VALUES (15, 2, 'NVIDIA GeForce RTX 3050', 'Processo de fabricação: 8 nm (Samsung)
PCI-Express bus 4.0
Chip Ampere GA106-150
Clock do GPU 1552 MHz
Clock do GPU (Turbo) 1777 MHz
 ESPECIFICAÇÕES DAS MEMÓRIAS
Tecnologia da RAM GDDR6
Interface de largura de BUS 128
Quantidade de RAM 8 GB
Clock das memóriass 1750 MHz
Clock efetivo 14000 MHz
Largura de banda 224 GB/s');
INSERT INTO Produto VALUES (16, 1, 'i3 10105', 'Número de núcleos
4

Nº de threads
8

Frequência turbo max
4.40 GHz

Tecnologia Intel® Turbo Boost frequência 2.0‡
4.40 GHz

Frequência baseada em processador
3.70 GHz

Cache
6 MB Intel® Smart Cache

Velocidade do barramento
8 GT/s

TDP
65 W');
INSERT INTO Produto VALUES (17, 1, 'ryzen 3 4100', 'Plataforma
Computador de mesa
Família de produto
AMD Ryzen™ Processors
Linha de produto
AMD Ryzen™ 3 Desktop Processors
Nº de núcleos de CPU
4
Nº de threads
8
Clock de Max Boost
Até 4.0GHz
Clock básico
3.8GHz
Cachê L1 total
256KB
Cachê L2 total
2MB
Cachê L3 total
4MB
TDP / TDP Padrão
65W
Processor Technology for CPU Cores
TSMC 7nm FinFET
Desbloqueado
Sim
CPU Socket
AM4
Contagem de soquetes
1P
Solução térmica (PIB)
AMD Wraith Stealth
Temps máx
95°C');
INSERT INTO Produto VALUES (18, 2, 'GEFORCE GT 1030', 'Processo de fabricação: 14nm FinFET
Chip Pascal GP108
Clock do GPU 1227 MHz
Clock do GPU (Turbo) 1468 MHz
 ESPECIFICAÇÕES DAS MEMÓRIAS
Tecnologia da RAM GDDR5
Interface de largura de BUS 64 bit
Quantidade de RAM |2GB|
Clock das memóriass 1500 MHz
Clock efetivo 6000 MHz
Largura de banda 48 GB/s');
INSERT INTO Produto VALUES (19, 12, 'Teclado Gamer Membrana Redragon Dyaus 2', 'Marca: Redragon
Fabricante ‎Redragon
Certificação ‎Não aplicável
Cor ‎Preto
Altura do produto ‎7 centímetros
Largura do produto ‎17 centímetros
Tecnologia de conexão ‎USB-A
Quantidade de botões ‎25
Etiqueta Nacional de Eficiência Energética (ENCE) ‎Não aplicável
Fonte de alimentação ‎Não aplicável
Plataforma de hardware ‎PC, Portátil
Número de unidades ‎1
Material ‎Plástico ABS
Peso do produto ‎800 g
Dimensões do produto ‎43 x 17 x 7 cm; 800 g');


INSERT INTO Loja VALUES (1, 'Kabum');
INSERT INTO Loja VALUES (2, 'Americanas');
INSERT INTO Loja VALUES (3, 'Submarino');
INSERT INTO Loja VALUES (4, 'Fast Shop');
INSERT INTO Loja VALUES (5, 'Terabyte');
INSERT INTO Loja VALUES (6, 'Pichau');
INSERT INTO Loja VALUES (7, 'Magazine Luiza');
INSERT INTO Loja VALUES (8, 'Amazon');
INSERT INTO Loja VALUES (9, 'AliExpress');
INSERT INTO Loja VALUES (10, 'Shopee');
INSERT INTO Loja VALUES (11, 'Mercado Livre');


INSERT INTO Anuncio VALUES (1, 1, 1, false, 'https://www.kabum.com.br/produto/241047/processador-intel-core-i5-12600kf-cache-20mb-3-7ghz-4-9ghz-max-turbo-lga-1700-bx8071512600kf');
INSERT INTO Anuncio VALUES (2, 2, 2, true, 'https://www.pichau.com.br/processador-intel-core-i5-10400-6-core-12-threads-2-9ghz-4-3ghz-turbo-cache-12mb-lga1200-bx8070110400?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeLTHJM7qrBJQXHc97aMUh6mcgwet0ZlP12g_0UUWJyRIc0g-NToRGRoCGX4QAvD_BwE');
INSERT INTO Anuncio VALUES (3, 3, 3, false, 'https://www.kabum.com.br/produto/85196/ssd-kingston-a400-120gb-sata-leitura-500mb-s-gravacao-320mb-s-sa400s37-120g?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeHUnDfpP4Y320krsJDl_o4MgB2fLWgZbDG3yb8JPW5BDQUOcuG8TcRoCuxwQAvD_BwE');
INSERT INTO Anuncio VALUES (4, 4, 4, false, 'https://www.submarino.com.br/produto/38926002?epar=bp_pl_px_go_pmax_pcgamer_geral_gmv&opn=XMLGOOGLE&WT.srch=1&offerId=5b4664d0b492dcdc1cb76fef&gclid=CjwKCAjw2f-VBhAsEiwAO4lNeCk_u66o62jMVbAt637gAvwwhVvOs6xzHbiTI1tsskZ8EgevQvkUiBoCJS4QAvD_BwE&tamanho=%5B8%20GB%5D');
INSERT INTO Anuncio VALUES (5, 5, 5, false, 'https://www.pichau.com.br/placa-de-video-mancer-geforce-gtx-1060-3gb-gddr5-192-bit-mcr-10603gddr5-v1?gclid=CjwKCAjw2f-VBhAsEiwAO4lNePC-5F7zZgpQBF6MvdYh9aMoK9gdZ_c3Wx8c7j8clC8kpfwhlnDX9xoCjeUQAvD_BwE');
INSERT INTO Anuncio VALUES (6, 6, 6, false, 'https://www.terabyteshop.com.br/produto/21729/placa-de-video-superframe-radeon-rx-550-4gb-dual-fan-gddr5-rx5504gd5p8dip?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeNsVe5PFiqyVSmXoYZINUAMUJ9FVh5yxR_VCbM_WthpPEqj6cZF2vxoCvrAQAvD_BwE');
INSERT INTO Anuncio VALUES (7, 7, 7, false, 'https://www.amazon.com.br/Gabinete-Gamer-Galax-Nebulosa-Preto/dp/B08FBZMQ72/ref=asc_df_B08FBZMQ72/?tag=googleshopp00-20&linkCode=df0&hvadid=379816400582&hvpos=&hvnetw=g&hvrand=6074434051922994508&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001773&hvtargid=pla-1166454717321&psc=1');
INSERT INTO Anuncio VALUES (8, 8, 8, false, 'https://www.americanas.com.br/produto/4855966783?epar=bp_pl_00_go_infacess_pmax_geral&opn=YSMESP&WT.srch=1&offerId=6241f20687c00289c2174cef&gclid=CjwKCAjw2f-VBhAsEiwAO4lNeH8AXobfsN2FkAbiPQ3AK-YqExlt43_9byD2ngSD9vyqgNzih-LyQRoCJIMQAvD_BwE');
INSERT INTO Anuncio VALUES (9, 9, 9, false, 'https://www.amazon.com.br/Mouse-Redragon-Chroma-12400DPI-Bot%C3%B5es/dp/B07Q437WXK/ref=asc_df_B07Q437WXK/?tag=googleshopp00-20&linkCode=df0&hvadid=379708004298&hvpos=&hvnetw=g&hvrand=10174372306316930587&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001773&hvtargid=pla-1084434257672&psc=1');
INSERT INTO Anuncio VALUES (10, 10, 10, false, 'https://www.terabyteshop.com.br/produto/9789/placa-de-video-msi-geforce-gtx-1050-ti-4gt-oc-4gb-dual-fan-gddr5-pci-exp-912-v809-2272-i?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeP6GjpHqRPEGwQo0DQHWORRbyP1LGEhQA7-uw-_Yg1CpsGyMSPZ0fhoCvrMQAvD_BwE');
INSERT INTO Anuncio VALUES (11, 11, 11, true, 'https://www.pichau.com.br/processador-amd-ryzen-5-5600g-6-core-12-threads-3-9ghz-4-4ghz-turbo-cache-19mb-am4-100-100000252box?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeHZv859ACm9g--p4xhq6_LIoAr78LPSITm-s1LthiybLgWFYQD7ufhoCMoMQAvD_BwE');
INSERT INTO Anuncio VALUES (12, 12, 1, false, 'https://www.kabum.com.br/produto/102438/processador-amd-ryzen-5-3600-cache-32mb-3-6ghz-4-2ghz-max-turbo-am4-sem-video-100-100000031box?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeDkamYQS7mj0tUuP2dgTN28HHjaI_IOkPnmX4FZ7j0ojMeIgrzzg9BoCGyYQAvD_BwE');
INSERT INTO Anuncio VALUES (13, 13, 2, true, 'https://www.pichau.com.br/placa-de-video-gigabyte-radeon-rx-6500-xt-eagle-4gb-gddr6-64-bit-gv-r65xteagle-4gd?gclid=CjwKCAjw2f-VBhAsEiwAO4lNeK41Rxq_vfnnGxLhaqaZWV9TrLZhnzlGNtKZCSF_u-T_79gbedX8vhoCEYIQAvD_BwE');
INSERT INTO Anuncio VALUES (14, 14, 3, true, 'https://https://pt.aliexpress.com/item/1005003596322449.html?spm=a2g0o.productlist.0.0.2352558fXfQ8hR&algo_pvid=5b425a79-0653-43fd-9ed1-9a33b4f91084&algo_exp_id=5b425a79-0653-43fd-9ed1-9a33b4f91084-1&pdp_ext_f=%7B%22sku_id%22%3A%2212000026442195148%22%7D&pdp_npi=2%40dis%21BRL%21%211492.94%21%21%21%21%21%40210318c916568105569091231e23d7%2112000026442195148%21sea');
INSERT INTO Anuncio VALUES (15, 3, 4, false, 'https://www.terabyteshop.com.br/produto/7443/ssd-kingston-a400-240gb-sa400s37240g-sata-iii-leitura-500mbs-gravacao-350mbs');
INSERT INTO Anuncio VALUES (16, 8, 5, false, 'https://www.amazon.com.br/Fonte-Alimenta%C3%A7%C3%A3o-Gamemax-GP650-Bronze/dp/B01MTDJ6VP');


INSERT INTO Preco VALUES (1,1,2,2039.90, 2300.00);
INSERT INTO Preco VALUES (2,2,5,887.90, 1008.98);
INSERT INTO Preco VALUES (3,3,8,149.90, 176.35);
INSERT INTO Preco VALUES (4,4,10,590.00, 590.00);
INSERT INTO Preco VALUES (5,5,7,1599.00, 1817.05);
INSERT INTO Preco VALUES (6,6,2,689.00, 810.59);
INSERT INTO Preco VALUES (7,7,4,2455.65, 455.65);
INSERT INTO Preco VALUES (8,8,15,344.76, 391.78);
INSERT INTO Preco VALUES (9,9,8,114.90, 130.90);
INSERT INTO Preco VALUES (10,10,15,467.90, 531.70);
INSERT INTO Preco VALUES (11,11,12,1199.00, 1410.59);
INSERT INTO Preco VALUES (12,12,11,1258.90, 1430.57);
INSERT INTO Preco VALUES (13,13,5,1199.90, 1411.65);
INSERT INTO Preco VALUES (14,14,3,1359.00, 1544.32);
INSERT INTO Preco VALUES (15,15,9,1526.88, 1563.52);
INSERT INTO Preco VALUES (16,16,14,169.90, 199.99);
INSERT INTO Preco VALUES (17,16,10,306.15, 306.15);


INSERT INTO Imagem VALUES (1, 1, '/produto/p/i5 12600k.png');
INSERT INTO Imagem VALUES (2, 1, '/produto/m/i5 12600k.png');
INSERT INTO Imagem VALUES (3, 1, '/produto/g/i5 12600k.png');
INSERT INTO Imagem VALUES (4, 1, '/produto/p/i5-10400.png');
INSERT INTO Imagem VALUES (5, 1, '/produto/m/i5-10400.png');
INSERT INTO Imagem VALUES (6, 1, '/produto/g/i5 i5-10400.png');
INSERT INTO Imagem VALUES (7, 1, '/produto/p/ssd-kingston-a400-120gb.png');
INSERT INTO Imagem VALUES (8, 1, '/produto/m/ssd-kingston-a400-120gb.png');
INSERT INTO Imagem VALUES (9, 1, '/produto/g/ssd-kingston-a400-120gb.png');
INSERT INTO Imagem VALUES (10, 1, '/produto/p/Memória Corsair Vengeance LPX 8GB.png');
INSERT INTO Imagem VALUES (11, 1, '/produto/m/Memória Corsair Vengeance LPX 8GB.png');
INSERT INTO Imagem VALUES (12, 1, '/produto/g/Memória Corsair Vengeance LPX 8GB.png');
INSERT INTO Imagem VALUES (13, 1, '/produto/p/gtx-1060-3gb.png');
INSERT INTO Imagem VALUES (14, 1, '/produto/m/gtx-1060-3gb.png');
INSERT INTO Imagem VALUES (15, 1, '/produto/g/gtx-1060-3gb.png');
INSERT INTO Imagem VALUES (16, 1, '/produto/p/rx-550-4gb.png');
INSERT INTO Imagem VALUES (17, 1, '/produto/m/rx-550-4gb.png');
INSERT INTO Imagem VALUES (18, 1, '/produto/g/rx-550-4gb.png');
INSERT INTO Imagem VALUES (19, 1, '/produto/p/Gabinete-Gamer-Galax-Nebulosa.png');
INSERT INTO Imagem VALUES (20, 1, '/produto/m/Gabinete-Gamer-Galax-Nebulosa.png');
INSERT INTO Imagem VALUES (21, 1, '/produto/g/Gabinete-Gamer-Galax-Nebulosa.png');
INSERT INTO Imagem VALUES (22, 1, '/produto/p/Fonte GAMEMAX GP 650.png');
INSERT INTO Imagem VALUES (23, 1, '/produto/m/Fonte GAMEMAX GP 650.png');
INSERT INTO Imagem VALUES (24, 1, '/produto/g/Fonte GAMEMAX GP 650.png');
INSERT INTO Imagem VALUES (25, 1, '/produto/p/Mouse-Redragon-Chroma-12400DPI.png');
INSERT INTO Imagem VALUES (26, 1, '/produto/m/Mouse-Redragon-Chroma-12400DPI.png');
INSERT INTO Imagem VALUES (27, 1, '/produto/g/Mouse-Redragon-Chroma-12400DPI.png');
INSERT INTO Imagem VALUES (28, 1, '/produto/p/i3-10100f.png');
INSERT INTO Imagem VALUES (29, 1, '/produto/m/i3-10100f.png');
INSERT INTO Imagem VALUES (30, 1, '/produto/g/i3-10100f.png');
INSERT INTO Imagem VALUES (31, 1, '/produto/p/gtx-1050-ti-4gb.png');
INSERT INTO Imagem VALUES (32, 1, '/produto/m/gtx-1050-ti-4g.png');
INSERT INTO Imagem VALUES (33, 1, '/produto/g/gtx-1050-ti-4g.png');
INSERT INTO Imagem VALUES (34, 1, '/produto/p/ryzen-5-5600g.png');
INSERT INTO Imagem VALUES (35, 1, '/produto/m/ryzen-5-5600g.png');
INSERT INTO Imagem VALUES (36, 1, '/produto/g/ryzen-5-5600g.png');
INSERT INTO Imagem VALUES (37, 1, '/produto/p/ryzen-5-3600.png');
INSERT INTO Imagem VALUES (38, 1, '/produto/m/ryzen-5-3600.png');
INSERT INTO Imagem VALUES (39, 1, '/produto/g/ryzen-5-3600.png');
INSERT INTO Imagem VALUES (40, 1, '/produto/p/rx-6500-xt-eagle-4gb-gddr6.png');
INSERT INTO Imagem VALUES (41, 1, '/produto/m/rx-6500-xt-eagle-4gb-gddr6.png');
INSERT INTO Imagem VALUES (42, 1, '/produto/g/rx-6500-xt-eagle-4gb-gddr6.png');
INSERT INTO Imagem VALUES (43, 1, '/produto/p/ryzen-7-5700g.png');
INSERT INTO Imagem VALUES (44, 1, '/produto/m/ryzen-7-5700g.png');
INSERT INTO Imagem VALUES (45, 1, '/produto/g/ryzen-7-5700g.png');


INSERT INTO Alerta VALUES (1,5,1,1900.00);
INSERT INTO Alerta VALUES (2,5,5,1400.00);
INSERT INTO Alerta VALUES (3,5,9,100.00);
INSERT INTO Alerta VALUES (4,5,12,1100.00);
INSERT INTO Alerta VALUES (5,5,3,130.00);
INSERT INTO Alerta VALUES (6,5,8,290.00);
INSERT INTO Alerta VALUES (7,5,10,430.00);
INSERT INTO Alerta VALUES (8,5,14,1270.00);
INSERT INTO Alerta VALUES (9,5,11,1000.00);
INSERT INTO Alerta VALUES (10,5,7,400.00);
INSERT INTO Alerta VALUES (11,5,6,50.00);
INSERT INTO Alerta VALUES (12,5,13,1130.00);
INSERT INTO Alerta VALUES (13,5,4,500.00);
INSERT INTO Alerta VALUES (14,5,15,1420.00);
INSERT INTO Alerta VALUES (15,5,2,800.00);


-- todas categorias mesmo sem produtos
SELECT c.nome as categoria, p.nome
FROM Categoria c
LEFT JOIN Produto p
ON c.codigo = p.codigo_categoria;

-- 	Redirecionamento do anúncio, com o nome, preço e descrição do produto
SELECT p.nome, p.ficha_tecnica as Descrição, a.preco_vista, a.preco_parecelado, a.redirecionamento, l.nome as Nome_loja
FROM Anuncio a
INNER JOIN Produto p
ON a.codigo = p.codigo
INNER JOIN Loja l
ON a.codigo = l.codigo;

-- Nome do cliente, preço desejado do alerta e de qual produto é o alerta
SELECT c.nome as cliente, p.nome, a.preco_desejado
FROM Alerta a
INNER JOIN Cliente c
ON a.codigo = c.codigo
INNER JOIN Produto p
ON a.codigo_produto = p.codigo;


-- anuncios em destaque
SELECT produto.nome, anuncio.preco_vista, anuncio.preco_parecelado
FROM Anuncio
INNER JOIN Produto
ON anuncio.codigo = produto.codigo
WHERE anuncio.destaque = true;

-- verificar os anuncios de um produto x
SELECT produto.nome, anuncio.preco_vista, anuncio.preco_parecelado, loja.nome as nome_loja
FROM Anuncio
INNER JOIN Produto 
ON anuncio.codigo_produto = produto.codigo
INNER JOIN Loja 
ON anuncio.codigo_loja = loja.codigo
WHERE anuncio.codigo_produto = 8;