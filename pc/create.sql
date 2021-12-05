CREATE TABLE `computer_firm`.`pc` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_id` INT UNSIGNED NOT NULL,
  `code` INT UNSIGNED NOT NULL,
  `speed` INT UNSIGNED NOT NULL,
  `ram` INT UNSIGNED NOT NULL,
  `hd` INT UNSIGNED NOT NULL,
  `cd` VARCHAR(80),
  `price` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `model_id`
  FOREIGN KEY (`model_id`)
    REFERENCES `computer_firm`.`product` (`id`)
);
