CREATE TABLE `computer_firm`.`printer`
(
    `id`       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `model_id` INT UNSIGNED NOT NULL,
    `code`     INT UNSIGNED NOT NULL,
    `color`    VARCHAR(10),
    `type_id`     INT UNSIGNED NOT NULL,
    `price`    INT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `type_id`
        FOREIGN KEY (`type_id`)
            REFERENCES `computer_firm`.`printer_type` (`id`)
);
