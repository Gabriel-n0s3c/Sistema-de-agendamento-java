USE europaunhas; 

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
(45, 'Excluir Usuario', 'gerenciar_usuario.do?acao=excluir', '', 2);

-- --------------------------------------------------------


INSERT INTO `servico` (`idservico`, `nome_servico`, `descricao`, `preco`, `duracao`, `link_img`) VALUES
(1, 'Manicure', 'Manicure', 20, 1, ''),
(2, 'Pédicure', 'Pédicure', 10, 2, ''),
(3, 'Alongamento Gel', 'Pédicure', 100, 1, ''),
(4, 'Alongamento Fibra', 'Pédicure', 110, 2, '');


--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `nome`, `descricao`, `quantidade`, `preco`) VALUES
(1, 'Eslmate', 'Risque', 5, 10),
(2, 'Lixa', 'Losquetuv', 4, 10),
(3, 'Esmalte', 'Nail', 3, 20);


INSERT INTO `servico_produto` (`idproduto`, `idservico`, `descontarqtd`) VALUES
(1, 1, 0),
(2, 1, 1);
-- --------------------------------------------------------



INSERT INTO `perfil` (`idperfil`, `perfil`) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Funcionario'),
(4, 'Cliente');

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
(1, 2);


--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `login`, `senha`, `status`, `idperfil`) VALUES
(1, 'administrador', '123', 1, 1),
(2, 'admin', '123', 1, 1),
(3, 'lucinda', '123', 1, 3),
(4, 'administrador123', '123', 1, 2),
(5, 'gay', '123', 1, 4);

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `nome`, `dataNasc`, `cpf`, `sexo`, `email`, `endereco`, `telefone`, `idusuario`) VALUES
(1, 'Administrador', '2019-05-10', '1123123123', 'n', 'maluco@gmail.com', '213123', '12312332', 2),
(2, 'Lucinda', '2019-05-14', '1123123123', 'f', 'zla3@gmail.com', '213123', '12312332', 3),
(3, 'Manicure', '2019-05-18', '00000', 'f', '123@hotmail.com', '0010', '10100', 4);

-- --------------------------------------------------------
--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome`, `dataNasc`, `cpf`, `sexo`, `email`, `endereco`, `telefone`, `idusuario`) VALUES
(1, 'Jéssica', '2019-05-10', 'asdasd', 'm', 'maluco@gmail.com', 'sadsad', 'asdsda', 5);



--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`idagendamento`, `data`, `valor`, `idfuncionario`, `idcliente`) VALUES
(1, '2019-06-20 00:00:00', 20, 2, 1),
(2, '2019-06-20 00:00:00', 10, 2, 1);


INSERT INTO `agendamento_servico` (`idagendamento`, `idservico`, `horario`,`status`) VALUES
(1, 1, '09:00', 0),
(2, 2, '10:30', 0);