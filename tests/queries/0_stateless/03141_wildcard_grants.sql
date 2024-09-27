-- Tags: no-parallel

DROP USER IF EXISTS user_03141;
CREATE USER user_03141;

GRANT SELECT ON test*.* TO user_03141;
GRANT SELECT ON team*.* TO user_03141;
GRANT INSERT ON team*.* TO user_03141;
SHOW GRANTS FOR user_03141;
SELECT '---';

GRANT INSERT ON foo* TO user_03141;
GRANT INSERT ON foobar* TO user_03141 WITH GRANT OPTION;
SHOW GRANTS FOR user_03141;
SELECT '---';

REVOKE SELECT ON test.* FROM user_03141;
REVOKE SELECT ON team*.* FROM user_03141;
SHOW GRANTS FOR user_03141;
SELECT '---';

DROP USER user_03141;
