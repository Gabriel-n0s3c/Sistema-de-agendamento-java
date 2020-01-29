--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`idperfil`, `perfil`) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Funcionario'),
(4, 'Cliente');

INSERT INTO `usuario` (`idusuario`, `login`, `senha`, `status`, `idperfil`) VALUES
(1, 'administrador', '123', 1, 1),
(2, 'admin', '321', 1, 1),
(3, 'gerente', '123', 1, 2),
(4, 'gerente1', '321', 1, 2),
(5, 'funcionario', '123', 1, 3),
(6, 'funcionario1', '321', 1, 3),
(7, 'jessica', '123', 1, 4),
(8, 'ana', '321', 1, 4);

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome`, `dataNasc`, `cpf`, `sexo`, `email`, `endereco`, `telefone`, `idusuario`) VALUES
(1, 'Jéssica', '2000-05-10', '111.111.111-11', 'f', 'Jessica@gmail.com', 'Brasília', '5555-5555', 7),
(2, 'Ana', '1999-04-15', '111.111.111-11', 'f', 'ana@gmail.com', 'Asa sul', '5555-5555', 8);

-- --------------------------------------------------------


--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `nome`, `dataNasc`, `cpf`, `sexo`, `email`, `endereco`, `telefone`, `idusuario`) VALUES
(1, 'Gabriel', '1999-05-10', '112-312-312-33', 'm', 'gabriel@gmail.com', 'Taguatinga', '1231-2332', 1),
(2, 'Pedro', '1997-05-10', '213-312-312-22', 'm', 'pedrol@gmail.com', 'Aguas Claras', '1111-1111', 2),
(3, 'Lucinda', '2019-05-14', '112-312-312-23', 'f', 'luh@gmail.com', 'Guará', '1231-2332', 3),
(4, 'Carla', '2019-05-18', '000-000-000-00', 'f', 'Carla@hotmail.com', 'Sobradinho', '1010-1230', 4),
(5, 'Amanda', '1980-01-17', '000-000-000-00', 'f', 'Amanda@hotmail.com', 'Vicente Pires', '1110-1230', 5),
(6, 'Marcia', '1992-02-18', '000-000-000-00', 'f', 'marcinha@hotmail.com', 'Asa Sul', '2000-1230', 6);


-- --------------------------------------------------------

--
-- Extraindo dados da tabela `menu`
--

INSERT INTO `menu` (`idmenu`, `menu`, `link`, `icone`, `exibir`) VALUES
(1, 'Home', 'index.jsp', 'mdi mdi-view-dashboard', 1),

(2, 'Agendamento', 'agendamento.jsp', 'mdi mdi-calendar-check', 1),
(3, 'Cadastrar Agendamento', 'form_agendamento.jsp', '', 2),
(4, 'Listar Agendamento', 'listar_agendamento.jsp', '', 2),
(5, 'Alterar Agendamento', 'gerenciar_agendamento.do?acao=alterar', '', 2),
(6, 'Excluir Agendamento', 'gerenciar_agendamento.do?acao=excluir', '', 2),

(7, 'Menu', 'menu_pagina.jsp', 'mdi mdi-pencil-box', 1),
(8, 'Cadastrar Menu', 'form_menu.jsp', '', 2),
(9, 'Listar Menu', 'listar_menu.jsp', '', 2),
(10, 'Alterar Menu', 'gerenciar_menu.do?acao=alterar', '', 2),
(11, 'Excluir Menu', 'gerenciar_menu.do?acao=desvincular', '', 2),

(12, 'Perfil', 'perfil.jsp', 'mdi mdi-account-box', 1),
(13, 'Cadastrar Perfil', 'form_perfil.jsp', '', 2),
(14, 'Listar Perfil', 'listar_perfil.jsp', '', 2),
(15, 'Alterar Perfil', 'gerenciar_perfil.do?acao=alterar', '', 2),
(16, 'Excluir Perfil', 'gerenciar_perfil.do?acao=excluir', '', 2),
(17, 'Vincular Menu', 'form_menu_perfil.jsp', '', 2),
(47, 'Excluir Acesso', 'gerenciar_menu_perfil.do?acao=desvincular', '', 2),
(18, 'Acessos', 'gerenciar_menu_perfil.do?acao=gerenciar', NULL, 2),

(19, 'Cliente', 'cliente.jsp', 'mdi mdi-account', 1),
(20, 'Cadastrar Cliente', 'form_cliente.jsp', '', 2),
(21, 'Alterar Cliente', 'gerenciar_cliente.do?acao=alterar', NULL, 2),
(22, 'Excluir Cliente', 'gerenciar_cliente.do?acao=excluir', NULL, 2),
(23, 'Listar Cliente', 'listar_cliente.jsp', '', 2),

(24, 'Funcionário', 'funcionario.jsp', 'mdi mdi-account-multiple', 1),
(25, 'Cadastrar Funcionario', 'form_funcionario.jsp', '', 2),
(26, 'Listar Funcionário', 'listar_funcionario.jsp', '', 2),
(27, 'Alterar Funcionário', 'gerenciar_funcionario.do?acao=alterar', '', 2),
(28, 'Excluir Funcionário', 'gerenciar_funcionario.do?acao=excluir', '', 2),

(29, 'Servico', 'servico.jsp', 'mdi mdi-brush', 1),
(30, 'Cadastrar Serviço', 'form_servico.jsp', '', 2),
(31, 'Listar Serviço', 'listar_servico.jsp', '', 2),
(32, 'Alterar Serviço', 'gerenciar_servico.do?acao=alterar', '', 2),
(33, 'Excluir Serviço', 'gerenciar_servico.do?acao=excluir', '', 2),
(34, 'Vincular Serviço Produto', 'gerenciar_servico_produto.do?acao=gerenciar', '', 2),
(35, 'Desvincular Serviço Produto', 'gerenciar_servico_produto.do?acao=desvincular', '', 2),

(36, 'Produto', 'produto.jsp', 'fas fa-boxes', 1),
(37, 'Vincular Produto', 'form_servico_produto.jsp', '', 2),
(38, 'Listar Produto', 'listar_produto.jsp', '', 2),
(39, 'Alterar Produto', 'gerenciar_produto.do?acao=alterar', '', 2),
(40, 'Excluir Produto', 'gerenciar_produto.do?acao=excluir', '', 2),

(41, 'Usuários', 'usuario.jsp', 'mdi mdi-account-key', 1),
(42, 'Cadastrar Usuario', 'form_usuario.jsp', '', 2),
(43, 'Listar Usuário', 'listar_usuario.jsp', '', 2),
(44, 'Alterar Usuario', 'gerenciar_usuario.do?acao=alterar', '', 2),
(45, 'Excluir Usuario', 'gerenciar_usuario.do?acao=excluir', '', 2),
(46, 'header', 'header.jsp', '1', 2),

(48, 'Home', 'index_cliente.jsp', NULL, 1),
(50, 'Agendamento', 'agendamento_cliente.jsp', NULL, 1),
(51, 'minhaconta', 'minhaconta.jsp', NULL, 2);
-- --------------------------------------------------------

--
-- Extraindo dados da tabela `menu_perfil`
--

INSERT INTO `menu_perfil` (`idmenu`, `idperfil`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),

(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(37, 2),
(34, 2),
(35, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(36, 2),
(39, 2),
(40, 2),
(38, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),

(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(29, 3),
(31, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),

(48, 4),
(50, 4),
(51, 4);
(5, 4),
(6, 4);


-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `nome`, `descricao`, `preco`, `quantidade`) VALUES
(1, 'Eslmate Risqué', 'Os Esmaltes Risqué possuem fórmula com nutrientes que deixam as unhas resistentes, com brilho, oferecem cores diferenciadas e lindas com secagem rápida e durabilidade.', 2.99, 10),
(2, 'Lixa', 'Lixa para unha Americana é utilizada para lixar, dar formato e corrigir imperfeições das extremidades das unhas.', 10, 5),
(3, 'Esmalte Vult', 'Uniformidade | Brilho | Secagem Rápida', 3.99, 10),
(4, 'Esmalte Vult perolado', 'Uniformidade | Brilho | Secagem Rápida', 5.99, 10),
(5, 'Esmalte Dailus', 'Aplique sobre as unhas. Agite antes de usar. Aguarde a secagem.', 4.99, 10),
(6, 'Alicate de unha mundial', 'Alicate para mãos e pés', 9.99, 10),
(7, 'Unhas portiças Kiss New York', 'As Unhas Postiças Kiss New York Salon Natural Curto Quadrada atende as necessidades femininas e são praticas de serem colocadas.', 14.99, 10);

-- --------------------------------------------------------

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idservico`, `nome_servico`, `descricao`, `preco`, `link_img`, `duracao`) VALUES
(1, 'Manicure', 'Manicure', 20.00, '', 1),
(2, 'Pédicure', 'Pédicure', 10.00, '', 2),
(3, 'Alongamento Gel', 'Pédicure', 99.90, '', 1),
(4, 'Alongamento Fibra', 'Pédicure', 109.99, '', 2);

-- --------------------------------------------------------

--
-- Extraindo dados da tabela `servico_produto`
--

INSERT INTO `servico_produto` (`idproduto`, `idservico`, `descontarqtd`) VALUES
(1, 1, 1),
(2, 1, 1),
(6, 1, 1),
(1, 2, 1),
(2, 2, 1),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Extraindo dados da tabela `usuario`
--



