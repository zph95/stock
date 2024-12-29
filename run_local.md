## 本地开发启动conda环境

conda activate stock

## 解决数据库字符不一致问题

"Illegal mix of collations (utf8mb3_general_ci,IMPLICIT) and (utf8mb3_uca1400_ai_ci,IMPLICIT) for operation '='")

ALTER TABLE instockdb.cn_etf_spot CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_attention CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_blocktrade CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_bonus CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;

ALTER TABLE instockdb.cn_stock_fund_flow CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_fund_flow_concept CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_fund_flow_industry CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_indicators CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;

ALTER TABLE instockdb.cn_stock_indicators_buy CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_pattern CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_spot_buy CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_spot CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;

ALTER TABLE instockdb.cn_stock_strategy_backtrace_ma250 CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_strategy_breakthrough_platform CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_strategy_enter CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_strategy_high_tight_flag CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;

ALTER TABLE instockdb.cn_stock_strategy_keep_increasing CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_strategy_parking_apron CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_strategy_turtle_trade CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;
ALTER TABLE instockdb.cn_stock_top CONVERT TO CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci;

