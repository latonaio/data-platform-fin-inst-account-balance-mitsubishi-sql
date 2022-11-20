CREATE TABLE `data_platform_fin_inst_account_balance_mitsubishi_account_balance_data`
(
  `FinInstCountry`            varchar(3) NOT NULL, 
  `FinInstCode`               varchar(10) NOT NULL,
  `FinInstBranchCode`         varchar(10) NOT NULL,
  `FinInstFullCode`           varchar(15) NOT NULL,
  `InternalFinInstCustomerID` int(12) NOT NULL,
  `InternalFinInstAccountID`  int(12) NOT NULL,
  `ValidityEndDate`           date NOT NULL,
  `ValidityStartDate`         date NOT NULL,
  `branchNo`                  varchar(3) NOT NULL,
  `branchName`                varchar(15) NOT NULL,
  `accountTypeCode`           varchar(1) NOT NULL,
  `accountTypeName`           varchar(8) NOT NULL,
  `accountNo`                 varchar(7) NOT NULL,
  `accountNameKanji`          varchar(71) DEFAULT NULL,
  `accountNameKana`           varchar(71) DEFAULT NULL,
  `operationDate`             varchar(10) DEFAULT NULL,
  `operationTime`             varchar(8) DEFAULT NULL,
  `todayBalance`              int(13) DEFAULT NULL,
  `clearedBalance`            int(13) DEFAULT NULL,
  `previousDate`              varchar(10) DEFAULT NULL,
  `previousDayBalance`        int(13) DEFAULT NULL,
  `previousMonthEndDate`      varchar(10) DEFAULT NULL,
  `previousMonthEndBalance`   int(13) DEFAULT NULL,

  PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `ValidityEndDate`, `ValidityStartDate`),

  CONSTRAINT `DataPlatformFinInstAccountBalanceMitsubishiAccountBalanceDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
