DROP TABLE IF EXISTS `tb_cupom`;

CREATE TABLE `tb_cupom` (
  `id_cupom` int(11) NOT NULL,
  `dt_maximo_cupom` date DEFAULT NULL,
  `cd_cupom` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cupom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_oferta`;
CREATE TABLE `tb_oferta` (
  `id_oferta` int(11) NOT NULL,
  `ds_oferta` varchar(255) DEFAULT NULL,
  `ic_status_oferta` tinyint(1) DEFAULT NULL,
  `id_parceiro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_oferta`),
  KEY `id_parceiro` (`id_parceiro`),
  CONSTRAINT `tb_oferta_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `tb_parceiro` (`id_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_oferta_ponto`;

CREATE TABLE `tb_oferta_ponto` (
  `id_oferta` int(11) NOT NULL,
  `ds_oferta` varchar(255) DEFAULT NULL,
  `ic_status_oferta` tinyint(1) DEFAULT NULL,
  `id_parceiro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_oferta`),
  KEY `id_parceiro` (`id_parceiro`),
  CONSTRAINT `tb_oferta_ponto_ibfk_1` FOREIGN KEY (`id_parceiro`) REFERENCES `tb_parceiro` (`id_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_parceiro`;
CREATE TABLE `tb_parceiro` (
  `id_parceiro` int(11) NOT NULL,
  `nm_parceiro` varchar(255) NOT NULL,
  `nm_email_parceiro` varchar(255) DEFAULT NULL,
  `nm_senha_parceiro` varchar(255) DEFAULT NULL,
  `dt_registro` date DEFAULT NULL,
  `cd_telefone` int(11) DEFAULT NULL,
  `cd_latitude` float(10,5) DEFAULT NULL,
  `cd_longitude` float(10,5) DEFAULT NULL,
  PRIMARY KEY (`id_parceiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_ponto_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ponto_turistico` (
  `id_ponto_turistico` int(11) NOT NULL,
  `nm_ponto_turistico` varchar(255) DEFAULT NULL,
  `ds_ponto_turistico` varchar(255) DEFAULT NULL,
  `ic_status_ponto_turistico` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_ponto_turistico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_pontuacao`;
CREATE TABLE `tb_pontuacao` (
  `id_pontuacao` int(11) NOT NULL,
  `dt_pontuacao` date DEFAULT NULL,
  `qt_pontuacao` float(10,2) DEFAULT NULL,
  `id_turista` int(11) DEFAULT NULL,
  `id_ponto_turistico` int(11) DEFAULT NULL,
  `id_cupom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pontuacao`),
  KEY `id_turista` (`id_turista`),
  KEY `id_ponto_turistico` (`id_ponto_turistico`),
  KEY `id_cupom` (`id_cupom`),
  CONSTRAINT `tb_pontuacao_ibfk_1` FOREIGN KEY (`id_turista`) REFERENCES `tb_turista` (`id_turista`),
  CONSTRAINT `tb_pontuacao_ibfk_2` FOREIGN KEY (`id_ponto_turistico`) REFERENCES `tb_ponto_turistico` (`id_ponto_turistico`),
  CONSTRAINT `tb_pontuacao_ibfk_3` FOREIGN KEY (`id_cupom`) REFERENCES `tb_cupom` (`id_cupom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_questao`;
CREATE TABLE `tb_questao` (
  `id_questao` int(11) NOT NULL,
  `nm_questao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_questao_quiz`;
CREATE TABLE `tb_questao_quiz` (
  `id_questao_quiz` int(11) NOT NULL,
  `id_quiz` int(11) DEFAULT NULL,
  `id_questao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_questao_quiz`),
  KEY `id_quiz` (`id_quiz`),
  KEY `id_questao` (`id_questao`),
  CONSTRAINT `tb_questao_quiz_ibfk_1` FOREIGN KEY (`id_quiz`) REFERENCES `tb_quiz` (`id_quiz`),
  CONSTRAINT `tb_questao_quiz_ibfk_2` FOREIGN KEY (`id_questao`) REFERENCES `tb_questao` (`id_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tb_quiz`;
CREATE TABLE `tb_quiz` (
  `id_quiz` int(11) NOT NULL,
  `qt_questao` int(11) DEFAULT NULL,
  `id_ponto_turistico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_quiz`),
  KEY `id_ponto_turistico` (`id_ponto_turistico`),
  CONSTRAINT `tb_quiz_ibfk_1` FOREIGN KEY (`id_ponto_turistico`) REFERENCES `tb_ponto_turistico` (`id_ponto_turistico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_resposta_questao`;
CREATE TABLE `tb_resposta_questao` (
  `id_resposta_questao` int(11) NOT NULL,
  `ds_resposta_questao` varchar(255) DEFAULT NULL,
  `ic_resposta_correta` tinyint(1) DEFAULT NULL,
  `id_questao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_resposta_questao`),
  KEY `id_questao` (`id_questao`),
  CONSTRAINT `tb_resposta_questao_ibfk_1` FOREIGN KEY (`id_questao`) REFERENCES `tb_questao` (`id_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tb_turista`;
CREATE TABLE `tb_turista` (
  `id_turista` int(11) NOT NULL,
  `nm_turista` varchar(255) NOT NULL,
  `nm_email_turista` varchar(255) DEFAULT NULL,
  `nm_senha_turista` varchar(255) DEFAULT NULL,
  `dt_registro` date DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `cd_cpf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
