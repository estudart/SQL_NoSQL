-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema teste_2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema teste_2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `teste_2` DEFAULT CHARACTER SET utf8 ;
USE `teste_2` ;

-- -----------------------------------------------------
-- Table `teste_2`.`tipo_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste_2`.`tipo_produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teste_2`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste_2`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `pk_produtos_1_idx` (`id_tipo_produto` ASC) VISIBLE,
  CONSTRAINT `pk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `teste_2`.`tipo_produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teste_2`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste_2`.`pacientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `endereco` VARCHAR(50) NOT NULL,
  `bairro` VARCHAR(40) NOT NULL,
  `cidade` VARCHAR(40) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teste_2`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste_2`.`professores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `telefone` INT NOT NULL,
  `nome` CHAR(80) NOT NULL DEFAULT 'vazio',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `teste_2`.`turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste_2`.`turma` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `capacidade` INT NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `pk_turma_1_idx` (`id_professor` ASC) VISIBLE,
  CONSTRAINT `pk_turma_1`
    FOREIGN KEY (`id_professor`)
    REFERENCES `teste_2`.`professores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
