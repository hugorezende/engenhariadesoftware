-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jul 02, 2017 as 08:57 PM
-- Versão do Servidor: 5.5.10
-- Versão do PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `academia2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE IF NOT EXISTS `aluno` (
  `matricula` varchar(10) NOT NULL,
  `plano` varchar(30) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
  `logradouro` varchar(30) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(10) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `codEndereco` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `endereco`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento`
--

CREATE TABLE IF NOT EXISTS `equipamento` (
  `codEquipamento` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) DEFAULT NULL,
  `nomeEquipamento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codEquipamento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `equipamento`
--

INSERT INTO `equipamento` (`codEquipamento`, `tipo`, `nomeEquipamento`) VALUES
(1, 'aerobico', 'bicicleta '),
(2, 'aerobico', 'esteira'),
(3, 'musculacao', 'graviton'),
(4, 'musculacao', 'extensora'),
(5, 'musculacao', 'puxador'),
(6, 'musculacao', 'cross over'),
(7, 'musculacao', 'remo'),
(8, 'musculacao', 'mesa flexo'),
(9, 'musculacao', 'cadeira ab'),
(10, 'musculacao', 'cadeira ad'),
(11, 'musculacao', 'gluteo maq'),
(12, 'musculacao', 'smith'),
(13, 'musculacao', 'leg press'),
(14, 'musculacao', 'hack'),
(15, 'aerobico', 'eliptico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentoexercicio`
--

CREATE TABLE IF NOT EXISTS `equipamentoexercicio` (
  `codEquipamento` int(11) NOT NULL,
  `codExerc` int(11) NOT NULL,
  KEY `codEquipamento` (`codEquipamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `equipamentoexercicio`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `examefisico`
--

CREATE TABLE IF NOT EXISTS `examefisico` (
  `supra` varchar(10) DEFAULT NULL,
  `pesoIdeal` varchar(10) DEFAULT NULL,
  `coxaDir` varchar(10) DEFAULT NULL,
  `peitoral` varchar(10) DEFAULT NULL,
  `peso` varchar(10) DEFAULT NULL,
  `coxaEsq` varchar(10) DEFAULT NULL,
  `imc` varchar(10) DEFAULT NULL,
  `altura` varchar(10) DEFAULT NULL,
  `abdominal` varchar(10) DEFAULT NULL,
  `auxMedio` varchar(10) DEFAULT NULL,
  `bricipital` varchar(10) DEFAULT NULL,
  `tripicital` varchar(10) DEFAULT NULL,
  `subEscabular` varchar(10) DEFAULT NULL,
  `panDir` varchar(10) DEFAULT NULL,
  `pantEsq` varchar(10) DEFAULT NULL,
  `codigoAluno` int(11) NOT NULL,
  `codigoFuncionario` int(11) DEFAULT NULL,
  `dataExame` date DEFAULT NULL,
  `protocolo` varchar(20) DEFAULT NULL,
  `codExame` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codExame`),
  KEY `codigoAluno` (`codigoAluno`),
  KEY `codigoFuncionario` (`codigoFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `examefisico`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

CREATE TABLE IF NOT EXISTS `exercicio` (
  `repeticao` varchar(10) DEFAULT NULL,
  `serie` varchar(10) DEFAULT NULL,
  `codExerc` int(11) NOT NULL,
  KEY `codExerc` (`codExerc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`repeticao`, `serie`, `codExerc`) VALUES
('3', '10', 4),
('3', '12', 4),
('3', '8', 7),
('3', '15', 16),
('3', '20', 5),
('4', '6', 3),
('4', '8', 5),
('4', '10', 3),
('4', '12', 2),
('2', '12', 7),
('2', '15', 10),
('2', '20', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exerciciotreino`
--

CREATE TABLE IF NOT EXISTS `exerciciotreino` (
  `codExerc` int(11) NOT NULL,
  `codTreino` int(11) NOT NULL,
  KEY `codExerc` (`codExerc`),
  KEY `codTreino` (`codTreino`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `exerciciotreino`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `horario` varchar(10) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `qualificacao` varchar(30) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade`
--

CREATE TABLE IF NOT EXISTS `modalidade` (
  `codModalidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) NOT NULL,
  PRIMARY KEY (`codModalidade`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `modalidade`
--

INSERT INTO `modalidade` (`codModalidade`, `nome`) VALUES
(1, 'musculacao'),
(2, 'pilates'),
(3, 'zumba'),
(4, 'dança fitn'),
(5, 'yoga'),
(6, 'hit'),
(7, 'ballet'),
(8, 'cross fit'),
(9, 'alongament'),
(10, 'piloxing'),
(11, 'localizada'),
(12, 'jump'),
(13, 'funcional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE IF NOT EXISTS `pessoa` (
  `dataNasc` date DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` int(11) NOT NULL,
  `modalidade` varchar(20) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `nome` varchar(30) NOT NULL,
  `sexo` char(2) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `codEndereco` int(11) DEFAULT NULL,
  `codTelefone` int(11) DEFAULT NULL,
  `codModalidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `codTelefone` (`codTelefone`),
  KEY `codModalidade` (`codModalidade`),
  KEY `codEndereco` (`codEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `pessoa`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoamodalidade`
--

CREATE TABLE IF NOT EXISTS `pessoamodalidade` (
  `codigo` int(11) NOT NULL,
  `codModalidade` int(11) NOT NULL,
  PRIMARY KEY (`codigo`,`codModalidade`),
  KEY `codModalidade` (`codModalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoamodalidade`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE IF NOT EXISTS `telefone` (
  `telefoneRes` varchar(10) DEFAULT NULL,
  `telefoneCom` varchar(10) DEFAULT NULL,
  `telefoneCel` varchar(10) DEFAULT NULL,
  `codTelefone` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codTelefone`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`telefoneRes`, `telefoneCom`, `telefoneCel`, `codTelefone`) VALUES
('1111111', '11111111', '111111111', 1),
('222222222', '22222222', '222222222', 2),
('333333333', '33333', '333333333', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoexercicio`
--

CREATE TABLE IF NOT EXISTS `tipoexercicio` (
  `nome` varchar(20) DEFAULT NULL,
  `grupoMuscular` varchar(20) DEFAULT NULL,
  `codExerc` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codExerc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `tipoexercicio`
--

INSERT INTO `tipoexercicio` (`nome`, `grupoMuscular`, `codExerc`) VALUES
('agachamento livre', 'pernas', 1),
('crucifixo', 'ombro', 2),
('supino', 'ombro', 3),
('elevacao frontal', 'ombros', 4),
('cross over', 'peito', 5),
('pullover', 'peito', 6),
('supino', 'peito', 7),
('rosca', 'biceps', 8),
('bom dia', 'pernas', 9),
('passada', 'pernas', 10),
('stiff', 'pernas', 11),
('elevacao quadril', 'gluteo', 12),
('gluteo 4 apoios', 'gluteo', 13),
('abdominal cruzado', 'abdominal', 14),
('infra solo', 'abdominal', 15),
('triceps testa', 'triceps', 16),
('triceps banco', 'triceps', 17),
('afundo', 'pernas', 18),
('flexao do joelho', 'pernas', 19),
('agachamento  frontal', 'pernas', 20),
('agachamento sumo', 'pernas', 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `treino`
--

CREATE TABLE IF NOT EXISTS `treino` (
  `codTreino` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) DEFAULT NULL,
  `nomeTreino` varchar(30) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`codTreino`),
  KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `treino`
--

INSERT INTO `treino` (`codTreino`, `descricao`, `nomeTreino`, `codigo`) VALUES
(1, 'a', NULL, NULL),
(2, 'ab', NULL, NULL),
(3, 'abc', NULL, NULL),
(4, 'abcd', NULL, NULL),
(5, 'abcde', NULL, NULL);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `pessoa` (`codigo`);

--
-- Restrições para a tabela `equipamentoexercicio`
--
ALTER TABLE `equipamentoexercicio`
  ADD CONSTRAINT `codEquipamento` FOREIGN KEY (`codEquipamento`) REFERENCES `equipamento` (`codEquipamento`);

--
-- Restrições para a tabela `examefisico`
--
ALTER TABLE `examefisico`
  ADD CONSTRAINT `examefisico_ibfk_1` FOREIGN KEY (`codigoAluno`) REFERENCES `aluno` (`codigo`),
  ADD CONSTRAINT `examefisico_ibfk_2` FOREIGN KEY (`codigoFuncionario`) REFERENCES `funcionario` (`codigo`),
  ADD CONSTRAINT `examefisico_ibfk_3` FOREIGN KEY (`codigoAluno`) REFERENCES `aluno` (`codigo`),
  ADD CONSTRAINT `examefisico_ibfk_4` FOREIGN KEY (`codigoFuncionario`) REFERENCES `funcionario` (`codigo`);

--
-- Restrições para a tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD CONSTRAINT `exercicio_ibfk_3` FOREIGN KEY (`codExerc`) REFERENCES `tipoexercicio` (`codExerc`),
  ADD CONSTRAINT `exercicio_ibfk_1` FOREIGN KEY (`codExerc`) REFERENCES `tipoexercicio` (`codExerc`),
  ADD CONSTRAINT `exercicio_ibfk_2` FOREIGN KEY (`codExerc`) REFERENCES `tipoexercicio` (`codExerc`);

--
-- Restrições para a tabela `exerciciotreino`
--
ALTER TABLE `exerciciotreino`
  ADD CONSTRAINT `codExerc` FOREIGN KEY (`codExerc`) REFERENCES `exercicio` (`codExerc`),
  ADD CONSTRAINT `codTreino` FOREIGN KEY (`codTreino`) REFERENCES `treino` (`codTreino`);

--
-- Restrições para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `pessoa` (`codigo`);

--
-- Restrições para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`codTelefone`) REFERENCES `telefone` (`codTelefone`),
  ADD CONSTRAINT `pessoa_ibfk_2` FOREIGN KEY (`codEndereco`) REFERENCES `endereco` (`codEndereco`),
  ADD CONSTRAINT `pessoa_ibfk_3` FOREIGN KEY (`codModalidade`) REFERENCES `modalidade` (`codModalidade`),
  ADD CONSTRAINT `pessoa_ibfk_4` FOREIGN KEY (`codEndereco`) REFERENCES `endereco` (`codEndereco`);

--
-- Restrições para a tabela `pessoamodalidade`
--
ALTER TABLE `pessoamodalidade`
  ADD CONSTRAINT `codigo` FOREIGN KEY (`codigo`) REFERENCES `pessoa` (`codigo`),
  ADD CONSTRAINT `codModalidade` FOREIGN KEY (`codModalidade`) REFERENCES `modalidade` (`codModalidade`);

--
-- Restrições para a tabela `treino`
--
ALTER TABLE `treino`
  ADD CONSTRAINT `treino_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `pessoa` (`codigo`);
