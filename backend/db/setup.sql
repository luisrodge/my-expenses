CREATE USER dbuser WITH LOGIN;

GRANT rds_iam TO dbuser;

CREATE TABLE expenses (
  id bigserial primary key,
  invoice_receipt_id varchar(255),
  vendor varchar(255),
  details varchar(255),
  address varchar(255),
  invoice_receipt_date date,
  sub_total decimal(5, 2),
  total decimal(5, 2),
  tax decimal(5, 2),
  created_at timestamp default NULL
);

GRANT ALL PRIVILEGES ON TABLE expenses TO dbuser;