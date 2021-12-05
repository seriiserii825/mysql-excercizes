use computer_firm;
CREATE TABLE `computer_firm`.`product` (
  `product` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `model` INT UNSIGNED NOT NULL,
  `type` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product`),
  CONSTRAINT `type`
    FOREIGN KEY (`type`)
    REFERENCES `computer_firm`.`product_type` (`id`)
);
