CREATE DATABASE Market;
USE Market;

CREATE TABLE customer_data (
    ID INT PRIMARY KEY,              -- 假设ID是唯一的整数主键
    DemAffl INT,                     -- DemAffl 可以表示为整数（可能是1到N的值）customer_data
    DemAge FLOAT,                    -- DemAge 可能包含浮点数（年龄可能有小数）
    DemClusterGroup VARCHAR(50),     -- DemClusterGroup 代表字符串（类别或集群组）
    DemGender VARCHAR(10),           -- DemGender 字符型（'M', 'F', 'Unknown'等）
    DemReg VARCHAR(50),              -- DemReg 表示地域名
    DemTVReg VARCHAR(50),            -- DemTVReg 表示电视区域
    LoyalClass VARCHAR(50),          -- LoyalClass 代表忠诚度等级
    LoyalSpend FLOAT,                -- LoyalSpend 用于表示客户消费金额
    LoyalTime FLOAT,                 -- LoyalTime 可能是浮点数，表示忠诚度时间
    TargetBuy INT                    -- TargetBuy 是布尔型（0或1），表示是否购买
);


CREATE TABLE predict_data (
    ID INT PRIMARY KEY,              -- 假设ID是唯一的整数主键
    DemAffl INT,                     -- DemAffl 可以表示为整数（可能是1到N的值）customer_data
    DemAge FLOAT,                    -- DemAge 可能包含浮点数（年龄可能有小数）
    DemClusterGroup VARCHAR(50),     -- DemClusterGroup 代表字符串（类别或集群组）
    DemGender VARCHAR(10),           -- DemGender 字符型（'M', 'F', 'Unknown'等）
    DemReg VARCHAR(50),              -- DemReg 表示地域名
    DemTVReg VARCHAR(50),            -- DemTVReg 表示电视区域
    LoyalClass VARCHAR(50),          -- LoyalClass 代表忠诚度等级
    LoyalSpend FLOAT,                -- LoyalSpend 用于表示客户消费金额
    LoyalTime FLOAT,                 -- LoyalTime 可能是浮点数，表示忠诚度时间
    TargetBuy INT                    -- TargetBuy 是布尔型（0或1），表示是否购买
);