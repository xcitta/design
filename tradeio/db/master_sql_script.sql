-- Database creation script
CREATE DATABASE IF NOT EXISTS tradeio ENGINE = Atomic COMMENT 'TradeIO database';

-- Create Tables
--	Create strategy table

CREATE or Replace TABLE tradeio.strategy 
(
    strategy_id UInt64,
    name String,
    legs UInt64
)
ENGINE = MergeTree
PRIMARY KEY(strategy_id);

-- Trades table

CREATE or Replace TABLE tradeio.trades 
(
    trade_id UInt64,
    txn_group_id UInt64,
    strategy_id UInt64 NOT NULL,
    symbol String
)
ENGINE = MergeTree
PRIMARY KEY(trade_id);

