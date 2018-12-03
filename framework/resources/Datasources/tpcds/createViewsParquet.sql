use dfs.tpcds_sf1_parquet_views;

create or replace view customer as select
cast(c_customer_sk as integer)  as c_customer_sk,
cast(c_customer_id as varchar(200))  as c_customer_id,
cast(c_current_cdemo_sk as integer)  as c_current_cdemo_sk,
cast(c_current_hdemo_sk as integer)  as c_current_hdemo_sk,
cast(c_current_addr_sk as integer)  as c_current_addr_sk,
cast(c_first_shipto_date_sk as integer)  as c_first_shipto_date_sk,
cast(c_first_sales_date_sk as integer)  as c_first_sales_date_sk,
cast(c_salutation as varchar(200))  as c_salutation,
cast(c_first_name as varchar(200))  as c_first_name,
cast(c_last_name as varchar(200))  as c_last_name,
cast(c_preferred_cust_flag as varchar(200))  as c_preferred_cust_flag,
cast(c_birth_day as integer)  as c_birth_day,
cast(c_birth_month as integer)  as c_birth_month,
cast(c_birth_year as integer)  as c_birth_year,
cast(c_birth_country as varchar(200))  as c_birth_country,
cast(c_login as varchar(200))  as c_login,
cast(c_email_address as varchar(200))  as c_email_address,
cast(c_last_review_date as varchar(200))  as c_last_review_date
from dfs.`/drill/testdata/tpcds_sf1/parquet/customer`;

create or replace view customer_address as select
cast(ca_address_sk as integer)   as ca_address_sk,
cast(ca_address_id as varchar(200))  as ca_address_id,
cast(ca_street_number as varchar(200))  as ca_street_number,
cast(ca_street_name as varchar(200))  as ca_street_name,
cast(ca_street_type as varchar(200))  as ca_street_type,
cast(ca_suite_number as varchar(200))  as ca_suite_number,
cast(ca_city as varchar(200))  as ca_city,
cast(ca_county as varchar(200))  as ca_county,
cast(ca_state as varchar(200))  as ca_state,
cast(ca_zip as varchar(200))  as ca_zip,
cast(ca_country as varchar(200))  as ca_country,
cast(ca_gmt_offset as integer)   as ca_gmt_offset,
cast(ca_location_type as varchar(200))  as ca_location_type
from dfs.`/drill/testdata/tpcds_sf1/parquet/customer_address`;

create or replace view customer_demographics as select
cast( cd_demo_sk as integer)  as cd_demo_sk,
cast( cd_gender as varchar(200))  as cd_gender ,
cast( cd_marital_status as varchar(200))  as cd_marital_status,
cast( cd_education_status as varchar(200))  as cd_education_status,
cast( cd_purchase_estimate as integer)  as cd_purchase_estimate,
cast( cd_credit_rating as varchar(200))  as cd_credit_rating,
cast( cd_dep_count as integer)  as cd_dep_count,
cast( cd_dep_employed_count as integer)  as cd_dep_employed_count,
cast( cd_dep_college_count as integer)  as cd_dep_college_count
from dfs.`/drill/testdata/tpcds_sf1/parquet/customer_demographics`;

create or replace view household_demographics as select
cast( hd_demo_sk as integer)  as hd_demo_sk,
cast( hd_income_band_sk as integer)   as hd_income_band_sk,
cast( hd_buy_potential as varchar(200))  as hd_buy_potential,
cast( hd_dep_count as integer)   as hd_dep_count,
cast( hd_vehicle_count as integer)   as hd_vehicle_count
from dfs.`/drill/testdata/tpcds_sf1/parquet/household_demographics`;

create or replace view item as select
cast( i_item_sk as integer)  as i_item_sk,
cast( i_item_id as varchar(200))   as i_item_id,
cast( i_rec_start_date as date)  as i_rec_start_date,
cast( i_rec__date as date)  as i_rec__date,
cast( i_item_desc as varchar(200))   as i_item_desc,
cast( i_current_price as double)  as i_current_price,
cast( i_wholesale_cost as double)  as i_wholesale_cost,
cast( i_brand_id as integer)  as i_brand_id,
cast( i_brand as varchar(200))   as i_brand,
cast( i_class_id as integer)  as i_class_id,
cast( i_class as varchar(200))   as i_class,
cast( i_category_id as integer)  as i_category_id,
cast( i_category as varchar(200))   as i_category,
cast( i_manufact_id as integer)  as i_manufact_id,
cast( i_manufact as varchar(200))   as i_manufact,
cast( i_size as varchar(200))   as i_size,
cast( i_formulation as varchar(200))   as i_formulation,
cast( i_color as varchar(200))   as i_color,
cast( i_units as varchar(200))   as i_units,
cast( i_container as varchar(200))   as i_container,
cast( i_manager_id as integer)  as i_manager_id,
cast( i_product_name as varchar(200))   as i_product_name
from dfs.`/drill/testdata/tpcds_sf1/parquet/item`;

create or replace view promotion as select
cast( p_promo_sk as integer)  as p_promo_sk,
cast( p_promo_id as varchar(200))  as p_promo_id,
cast( p_start_date_sk as integer)  as p_start_date_sk,
cast( p__date_sk as integer)  as p__date_sk,
cast( p_item_sk as integer)  as p_item_sk,
cast( p_cost as double)  as p_cost,
cast( p_response_target as integer)  as p_response_target,
cast( p_promo_name as varchar(200))  as p_promo_name,
cast( p_channel_dmail as varchar(200))  as p_channel_dmail,
cast( p_channel_email as varchar(200))  as p_channel_email,
cast( p_channel_catalog as varchar(200))  as p_channel_catalog,
cast( p_channel_tv as varchar(200))  as p_channel_tv,
cast( p_channel_radio as varchar(200))  as p_channel_radio,
cast( p_channel_press as varchar(200))  as p_channel_press,
cast( p_channel_event as varchar(200))  as p_channel_event,
cast( p_channel_demo as varchar(200))  as p_channel_demo,
cast( p_channel_details as varchar(200))  as p_channel_details,
cast( p_purpose as varchar(200))  as p_purpose,
cast( p_discount_active as varchar(200))  as p_discount_active
from dfs.`/drill/testdata/tpcds_sf1/parquet/promotion`;

create or replace view time_dim as select
cast( t_time_sk as integer)  as t_time_sk,
cast( t_time_id as varchar(200))  as t_time_id,
cast( t_time as integer)  as t_time,
cast( t_hour as integer)  as t_hour,
cast( t_minute as integer)  as t_minute,
cast( t_second as integer)  as t_second,
cast( t_am_pm as varchar(200))  as t_am_pm,
cast( t_shift as varchar(200))  as t_shift,
cast( t_sub_shift as varchar(200))  as t_sub_shift ,
cast( t_meal_time as varchar(200))  as t_meal_time
from dfs.`/drill/testdata/tpcds_sf1/parquet/time_dim`;

create or replace view date_dim as select
cast( d_date_sk as integer)  as d_date_sk,
cast( d_date_id as varchar(200))  as d_date_id,
cast( d_date as date)  as d_date,
cast( d_month_seq as integer)  as d_month_seq,
cast( d_week_seq as integer)  as d_week_seq,
cast( d_quarter_seq as integer)  as d_quarter_seq,
cast( d_year as integer)  as d_year,
cast( d_dow as integer)  as d_dow,
cast( d_moy as integer)  as d_moy,
cast( d_dom as integer)  as d_dom,
cast( d_qoy as integer)  as d_qoy,
cast( d_fy_year as integer)  as d_fy_year,
cast( d_fy_quarter_seq as integer)  as d_fy_quarter_seq,
cast( s_fy_week_seq as integer)  as s_fy_week_seq,
cast( d_day_name as varchar(200))  as d_day_name,
cast( d_quarter_name as varchar(200))  as d_quarter_name,
cast( d_holiday as varchar(200))  as d_holiday,
cast( d_week as varchar(200))  as d_week,
cast( d_following_holiday as varchar(200))  as d_following_holiday,
cast( d_first_dom as integer)  as d_first_dom,
cast( d_last_dom as integer)  as d_last_dom,
cast( d_same_day_ly as integer)  as d_same_day_ly,
cast( d_same_day_lq as integer)  as d_same_day_lq,
cast( d_current_day as varchar(200))  as d_current_day,
cast( d_current_week as varchar(200))  as d_current_week,
cast( d_current_month as varchar(200))  as d_current_month,
cast( d_current_quarter as varchar(200))  as d_current_quarter,
cast( d_current_year as varchar(200))  as d_current_year
from dfs.`/drill/testdata/tpcds_sf1/parquet/date_dim`;

create or replace view store as select
cast( s_store_sk as integer)  as s_store_sk,
cast( s_store_id as varchar(200))  as s_store_id,
cast( s_rec_start_date as date)  as s_rec_start_date,
cast( s_rec__date as date)  as s_rec__date,
cast( s_closed_date_sk as integer)  as s_closed_date_sk,
cast( s_store_name as varchar(200))  as s_store_name,
cast( s_number_employees as integer)  as s_number_employees,
cast( s_floor_space as integer)  as s_floor_space,
cast( s_hours as varchar(200))  as s_hours,
cast( s_manager as varchar(200))  as s_manager,
cast( s_market_id as integer)  as s_market_id,
cast( s_geography_class as varchar(200))  as s_geography_class,
cast( s_market_desc as varchar(200))  as s_market_desc,
cast( s_market_manager as varchar(200))  as s_market_manager,
cast( s_division_id as integer)  as s_division_id,
cast( s_division_name as varchar(200))  as s_division_name,
cast( s_company_id as integer)  as s_company_id,
cast( s_company_name as varchar(200))  as s_company_name,
cast( s_street_number as varchar(200))  as s_street_number,
cast( s_street_name as varchar(200))  as s_street_name,
cast( s_street_type as varchar(200))  as s_street_type,
cast( s_suite_number as varchar(200))  as s_suite_number,
cast( s_city as varchar(200))  as s_city,
cast( s_county as varchar(200))  as s_county,
cast( s_state as varchar(200))  as s_state,
cast( s_zip as varchar(200))  as s_zip,
cast( s_country as varchar(200))  as s_country,
cast( s_gmt_offset as double)  as s_gmt_offset,
cast( s_tax_precentage as double)  as s_tax_precentage
from dfs.`/drill/testdata/tpcds_sf1/parquet/store`;

create or replace view store_sales as select
cast( ss_sold_date_sk as integer)  as ss_sold_date_sk,
cast( ss_sold_time_sk as integer)  as ss_sold_time_sk,
cast( ss_item_sk as integer)  as ss_item_sk,
cast( ss_customer_sk as integer)  as ss_customer_sk,
cast( ss_cdemo_sk as integer)  as ss_cdemo_sk,
cast( ss_hdemo_sk as integer)  as ss_hdemo_sk,
cast( ss_addr_sk as integer)  as ss_addr_sk,
cast( ss_store_sk as integer)  as ss_store_sk,
cast( ss_promo_sk as integer)  as ss_promo_sk,
cast( ss_ticket_number as integer)  as ss_ticket_number,
cast( ss_quantity as integer)  as ss_quantity,
cast( ss_wholesale_cost as double)  as ss_wholesale_cost,
cast( ss_list_price as double)  as ss_list_price,
cast( ss_sales_price as double)  as ss_sales_price,
cast( ss_ext_discount_amt as double)  as ss_ext_discount_amt,
cast( ss_ext_sales_price as double)  as ss_ext_sales_price,
cast( ss_ext_wholesale_cost as double)  as ss_ext_wholesale_cost,
cast( ss_ext_list_price as double)  as ss_ext_list_price,
cast( ss_ext_tax as double)  as ss_ext_tax,
cast( ss_coupon_amt as double)  as ss_coupon_amt,
cast( ss_net_paid as double)  as ss_net_paid,
cast( ss_net_paid_inc_tax as double)  as ss_net_paid_inc_tax,
cast( ss_net_profit as double)  as ss_net_profit
from dfs.`/drill/testdata/tpcds_sf1/parquet/store_sales`;

create or replace view warehouse as select
cast( w_warehouse_sk as integer)  as w_warehouse_sk,
cast( w_warehouse_id as varchar(200))  as w_warehouse_id,
cast( w_warehouse_name as varchar(200))  as w_warehouse_name,
cast( w_warehouse_sq_ft as integer)  as w_warehouse_sq_ft,
cast( w_street_number as varchar(200))  as w_street_number,
cast( w_street_name as varchar(200))  as w_street_name,
cast( w_street_type as varchar(200))  as w_street_type,
cast( w_suite_number as varchar(200))  as w_suite_number,
cast( w_city as varchar(200))  as w_city,
cast( w_county as varchar(200))  as w_county,
cast( w_state as varchar(200))  as w_state,
cast( w_zip as varchar(200))  as w_zip,
cast( w_country as varchar(200))  as w_country,
cast( w_gmt_offset as double)  as w_gmt_offset
from dfs.`/drill/testdata/tpcds_sf1/parquet/warehouse`;

create or replace view ship_mode as select
cast( sm_ship_mode_sk as integer)  as sm_ship_mode_sk,
cast( sm_ship_mode_id as varchar(200))  as sm_ship_mode_id,
cast( sm_type as varchar(200))  as sm_type,
cast( sm_code as varchar(200))  as sm_code,
cast( sm_carrier as varchar(200))  as sm_carrier,
cast( sm_contract as varchar(200))  as sm_contract
from dfs.`/drill/testdata/tpcds_sf1/parquet/ship_mode`;

create or replace view reason as select
cast( r_reason_sk as integer)  as r_reason_sk,
cast( r_reason_id as varchar(200))  as r_reason_id,
cast( r_reason_desc as varchar(200))  as r_reason_desc
from dfs.`/drill/testdata/tpcds_sf1/parquet/reason`;

create or replace view income_band as select
cast( ib_income_band_sk as integer)  as ib_income_band_sk,
cast( ib_lower_bound as integer)  as ib_lower_bound,
cast( ib_upper_bound as integer)  as ib_upper_bound
from dfs.`/drill/testdata/tpcds_sf1/parquet/income_band`;

create or replace view call_center as select
cast( cc_call_center_sk as integer)  as cc_call_center_sk,
cast( cc_call_center_id as varchar(200))  as cc_call_center_id,
cast( cc_rec_start_date as date)  as cc_rec_start_date,
cast( cc_rec__date as date)  as cc_rec__date,
cast( cc_closed_date_sk as integer)  as cc_closed_date_sk,
cast( cc_open_date_sk as integer)  as cc_open_date_sk,
cast( cc_name as varchar(200))  as cc_name,
cast( cc_class as varchar(200))  as cc_class,
cast( cc_employees as integer)  as cc_employees,
cast( cc_sq_ft as integer)  as cc_sq_ft,
cast( cc_hours as varchar(200))  as cc_hours,
cast( cc_manager as varchar(200))  as cc_manager,
cast( cc_mkt_id as integer)  as cc_mkt_id,
cast( cc_mkt_class as varchar(200))  as cc_mkt_class,
cast( cc_mkt_desc as varchar(200))  as cc_mkt_desc,
cast( cc_market_manager as varchar(200))  as cc_market_manager,
cast( cc_division as integer)  as cc_division,
cast( cc_division_name as varchar(200))  as cc_division_name,
cast( cc_company as integer)  as cc_company,
cast( cc_company_name as varchar(200))  as cc_company_name,
cast( cc_street_number as varchar(200))  as cc_street_number,
cast( cc_street_name as varchar(200))  as cc_street_name,
cast( cc_street_type as varchar(200))  as cc_street_type,
cast( cc_suite_number as varchar(200))  as cc_suite_number,
cast( cc_city as varchar(200))  as cc_city,
cast( cc_county as varchar(200))  as cc_county,
cast( cc_state as varchar(200))  as cc_state,
cast( cc_zip as varchar(200))  as cc_zip,
cast( cc_country as varchar(200))  as cc_country,
cast( cc_gmt_offset as double)  as cc_gmt_offset,
cast( cc_tax_percentage as double)  as cc_tax_percentage
from dfs.`/drill/testdata/tpcds_sf1/parquet/call_center`;

create or replace view web_site as select
cast( web_site_sk as integer)  as web_site_sk,
cast( web_site_id as varchar(200))  as web_site_id,
cast( web_rec_start_date as date)  as web_rec_start_date,
cast( web_rec__date as date)  as web_rec__date,
cast( web_name as varchar(200))  as web_name,
cast( web_open_date_sk as integer)  as web_open_date_sk,
cast( web_close_date_sk as integer)  as web_close_date_sk,
cast( web_class as varchar(200))  as web_class,
cast( web_manager as varchar(200))  as web_manager,
cast( web_mkt_id as integer)  as web_mkt_id,
cast( web_mkt_class as varchar(200))  as web_mkt_class,
cast( web_mkt_desc as varchar(200))  as web_mkt_desc,
cast( web_market_manager as varchar(200))  as web_market_manager,
cast( web_company_id as integer)  as web_company_id,
cast( web_company_name as varchar(200))  as web_company_name,
cast( web_street_number as varchar(200))  as web_street_number,
cast( web_street_name as varchar(200))  as web_street_name,
cast( web_street_type as varchar(200))  as web_street_type,
cast( web_suite_number as varchar(200))  as web_suite_number,
cast( web_city as varchar(200))  as web_city,
cast( web_county as varchar(200))  as web_county,
cast( web_state as varchar(200))  as web_state,
cast( web_zip as varchar(200))  as web_zip,
cast( web_country as varchar(200))  as web_country,
cast( web_gmt_offset as double)  as web_gmt_offset,
cast( web_tax_percentage as double)  as web_tax_percentage
from dfs.`/drill/testdata/tpcds_sf1/parquet/web_site`;

create or replace view store_returns as select
cast( sr_returned_date_sk as integer)  as sr_returned_date_sk,
cast( sr_return_time_sk as integer)  as sr_return_time_sk,
cast( sr_item_sk as integer)  as sr_item_sk,
cast( sr_customer_sk as integer)  as sr_customer_sk,
cast( sr_cdemo_sk as integer)  as sr_cdemo_sk,
cast( sr_hdemo_sk as integer)  as sr_hdemo_sk,
cast( sr_addr_sk as integer)  as sr_addr_sk,
cast( sr_store_sk as integer)  as sr_store_sk,
cast( sr_reason_sk as integer)  as sr_reason_sk,
cast( sr_ticket_number as integer)  as sr_ticket_number,
cast( sr_return_quantity as integer)  as sr_return_quantity,
cast( sr_return_amt as double)  as sr_return_amt,
cast( sr_return_tax as double)  as sr_return_tax,
cast( sr_return_amt_inc_tax as double)  as sr_return_amt_inc_tax,
cast( sr_fee as double)  as sr_fee,
cast( sr_return_ship_cost as double)  as sr_return_ship_cost,
cast( sr_refunded_cash as double)  as sr_refunded_cash,
cast( sr_reversed_charge as double)  as sr_reversed_charge,
cast( sr_store_credit as double)  as sr_store_credit,
cast( sr_net_loss as double)  as sr_net_loss
from dfs.`/drill/testdata/tpcds_sf1/parquet/store_returns`;

create or replace view web_page as select
cast( wp_web_page_sk as integer)  as wp_web_page_sk,
cast( wp_web_page_id as varchar(200))  as wp_web_page_id,
cast( wp_rec_start_date as date)  as wp_rec_start_date,
cast( wp_rec__date as date)  as wp_rec__date,
cast( wp_creation_date_sk as integer)  as wp_creation_date_sk,
cast( wp_access_date_sk as integer)  as wp_access_date_sk,
cast( wp_autogen_flag as varchar(200))  as wp_autogen_flag,
cast( wp_customer_sk as integer)  as wp_customer_sk,
cast( wp_url as varchar(200))  as wp_url,
cast( wp_type as varchar(200))  as wp_type,
cast( wp_char_count as integer)  as wp_char_count,
cast( wp_link_count as integer)  as wp_link_count,
cast( wp_image_count as integer)  as wp_image_count,
cast( wp_max_ad_count as integer)  as wp_max_ad_count
from dfs.`/drill/testdata/tpcds_sf1/parquet/web_page`;

create or replace view catalog_page as select
cast( cp_catalog_page_sk as integer)  as cp_catalog_page_sk,
cast( cp_catalog_page_id as varchar(200))  as cp_catalog_page_id,
cast( cp_start_date_sk as integer)  as cp_start_date_sk,
cast( cp__date_sk as integer)  as cp__date_sk,
cast( cp_department as varchar(200))  as cp_department,
cast( cp_catalog_number as integer)  as cp_catalog_number,
cast( cp_catalog_page_number as integer)  as cp_catalog_page_number,
cast( cp_description as varchar(200))  as cp_description,
cast( cp_type as varchar(200))  as cp_type
from dfs.`/drill/testdata/tpcds_sf1/parquet/catalog_page`;

create or replace view inventory as select
cast( inv_date_sk as integer)  as inv_date_sk,
cast( inv_item_sk as integer)  as inv_item_sk,
cast( inv_warehouse_sk as integer)  as inv_warehouse_sk,
cast( inv_quantity_on_hand as integer)  as inv_quantity_on_hand
from dfs.`/drill/testdata/tpcds_sf1/parquet/inventory`;

create or replace view catalog_returns as select
cast( cr_returned_date_sk as integer)  as cr_returned_date_sk,
cast( cr_returned_time_sk as integer)  as cr_returned_time_sk,
cast( cr_item_sk as integer)  as cr_item_sk,
cast( cr_refunded_customer_sk as integer)  as cr_refunded_customer_sk,
cast( cr_refunded_cdemo_sk as integer)  as cr_refunded_cdemo_sk,
cast( cr_refunded_hdemo_sk as integer)  as cr_refunded_hdemo_sk,
cast( cr_refunded_addr_sk as integer)  as cr_refunded_addr_sk,
cast( cr_returning_customer_sk as integer)  as cr_returning_customer_sk,
cast( cr_returning_cdemo_sk as integer)  as cr_returning_cdemo_sk,
cast( cr_returning_hdemo_sk as integer)  as cr_returning_hdemo_sk,
cast( cr_returning_addr_sk as integer)  as cr_returning_addr_sk,
cast( cr_call_center_sk as integer)  as cr_call_center_sk,
cast( cr_catalog_page_sk as integer)  as cr_catalog_page_sk,
cast( cr_ship_mode_sk as integer)  as cr_ship_mode_sk,
cast( cr_warehouse_sk as integer)  as cr_warehouse_sk,
cast( cr_reason_sk as integer)  as cr_reason_sk,
cast( cr_order_number as integer)  as cr_order_number,
cast( cr_return_quantity as integer)  as cr_return_quantity,
cast( cr_return_amount as double)  as cr_return_amount,
cast( cr_return_tax as double)  as cr_return_tax,
cast( cr_return_amt_inc_tax as double)  as cr_return_amt_inc_tax,
cast( cr_fee as double)  as cr_fee,
cast( cr_return_ship_cost as double)  as cr_return_ship_cost,
cast( cr_refunded_cash as double)  as cr_refunded_cash,
cast( cr_reversed_charge as double)  as cr_reversed_charge,
cast( cr_store_credit as double)  as cr_store_credit,
cast( cr_net_loss as double)  as cr_net_loss
from dfs.`/drill/testdata/tpcds_sf1/parquet/catalog_returns`;

create or replace view web_returns as select
cast( wr_returned_date_sk as integer)  as wr_returned_date_sk,
cast( wr_returned_time_sk as integer)  as wr_returned_time_sk,
cast( wr_item_sk as integer)  as wr_item_sk,
cast( wr_refunded_customer_sk as integer)  as wr_refunded_customer_sk,
cast( wr_refunded_cdemo_sk as integer)  as wr_refunded_cdemo_sk,
cast( wr_refunded_hdemo_sk as integer)  as wr_refunded_hdemo_sk,
cast( wr_refunded_addr_sk as integer)  as wr_refunded_addr_sk,
cast( wr_returning_customer_sk as integer)  as wr_returning_customer_sk,
cast( wr_returning_cdemo_sk as integer)  as wr_returning_cdemo_sk,
cast( wr_returning_hdemo_sk as integer)  as wr_returning_hdemo_sk,
cast( wr_returning_addr_sk as integer)  as wr_returning_addr_sk,
cast( wr_web_page_sk as integer)  as wr_web_page_sk,
cast( wr_reason_sk as integer)  as wr_reason_sk,
cast( wr_order_number as integer)  as wr_order_number,
cast( wr_return_quantity as integer)  as wr_return_quantity,
cast( wr_return_amt as double)  as wr_return_amt,
cast( wr_return_tax as double)  as wr_return_tax,
cast( wr_return_amt_inc_tax as double)  as wr_return_amt_inc_tax,
cast( wr_fee as double)  as wr_fee,
cast( wr_return_ship_cost as double)  as wr_return_ship_cost,
cast( wr_refunded_cash as double)  as wr_refunded_cash,
cast( wr_reversed_charge as double)  as wr_reversed_charge,
cast( wr_account_credit as double)  as wr_account_credit,
cast( wr_net_loss as double)  as wr_net_loss
from dfs.`/drill/testdata/tpcds_sf1/parquet/web_returns`;

create or replace view web_sales as select
cast( ws_sold_date_sk as integer)  as ws_sold_date_sk,
cast( ws_sold_time_sk as integer)  as ws_sold_time_sk,
cast( ws_ship_date_sk as integer)  as ws_ship_date_sk,
cast( ws_item_sk as integer)  as ws_item_sk,
cast( ws_bill_customer_sk as integer)  as ws_bill_customer_sk,
cast( ws_bill_cdemo_sk as integer)  as ws_bill_cdemo_sk,
cast( ws_bill_hdemo_sk as integer)  as ws_bill_hdemo_sk,
cast( ws_bill_addr_sk as integer)  as ws_bill_addr_sk,
cast( ws_ship_customer_sk as integer)  as ws_ship_customer_sk,
cast( ws_ship_cdemo_sk as integer)  as ws_ship_cdemo_sk,
cast( ws_ship_hdemo_sk as integer)  as ws_ship_hdemo_sk,
cast( ws_ship_addr_sk as integer)  as ws_ship_addr_sk,
cast( ws_web_page_sk as integer)  as ws_web_page_sk,
cast( ws_web_site_sk as integer)  as ws_web_site_sk,
cast( ws_ship_mode_sk as integer)  as ws_ship_mode_sk,
cast( ws_warehouse_sk as integer)  as ws_warehouse_sk,
cast( ws_promo_sk as integer)  as ws_promo_sk,
cast( ws_order_number as integer)  as ws_order_number,
cast( ws_quantity as integer)  as ws_quantity,
cast( ws_wholesale_cost as double)  as ws_wholesale_cost,
cast( ws_list_price as double)  as ws_list_price,
cast( ws_sales_price as double)  as ws_sales_price,
cast( ws_ext_discount_amt as double)  as ws_ext_discount_amt,
cast( ws_ext_sales_price as double)  as ws_ext_sales_price,
cast( ws_ext_wholesale_cost as double)  as ws_ext_wholesale_cost,
cast( ws_ext_list_price as double)  as ws_ext_list_price,
cast( ws_ext_tax as double)  as ws_ext_tax,
cast( ws_coupon_amt as double)  as ws_coupon_amt,
cast( ws_ext_ship_cost as double)  as ws_ext_ship_cost,
cast( ws_net_paid as double)  as ws_net_paid,
cast( ws_net_paid_inc_tax as double)  as ws_net_paid_inc_tax,
cast( ws_net_paid_inc_ship as double)  as ws_net_paid_inc_ship,
cast( ws_net_paid_inc_ship_tax as double)  as ws_net_paid_inc_ship_tax,
cast( ws_net_profit as double)  as ws_net_profit
from dfs.`/drill/testdata/tpcds_sf1/parquet/web_sales`;

create or replace view catalog_sales as select
cast( cs_sold_date_sk as integer)  as cs_sold_date_sk,
cast( cs_sold_time_sk as integer)  as cs_sold_time_sk,
cast( cs_ship_date_sk as integer)  as cs_ship_date_sk,
cast( cs_bill_customer_sk as integer)  as cs_bill_customer_sk,
cast( cs_bill_cdemo_sk as integer)  as cs_bill_cdemo_sk,
cast( cs_bill_hdemo_sk as integer)  as cs_bill_hdemo_sk,
cast( cs_bill_addr_sk as integer)  as cs_bill_addr_sk,
cast( cs_ship_customer_sk as integer)  as cs_ship_customer_sk,
cast( cs_ship_cdemo_sk as integer)  as cs_ship_cdemo_sk,
cast( cs_ship_hdemo_sk as integer)  as cs_ship_hdemo_sk,
cast( cs_ship_addr_sk as integer)  as cs_ship_addr_sk,
cast( cs_call_center_sk as integer)  as cs_call_center_sk,
cast( cs_catalog_page_sk as integer)  as cs_catalog_page_sk,
cast( cs_ship_mode_sk as integer)  as cs_ship_mode_sk,
cast( cs_warehouse_sk as integer)  as cs_warehouse_sk,
cast( cs_item_sk as integer)  as cs_item_sk,
cast( cs_promo_sk as integer)  as cs_promo_sk,
cast( cs_order_number as integer)  as cs_order_number,
cast( cs_quantity as integer)  as cs_quantity,
cast( cs_wholesale_cost as double)  as cs_wholesale_cost,
cast( cs_list_price as double)  as cs_list_price,
cast( cs_sales_price as double)  as cs_sales_price,
cast( cs_ext_discount_amt as double)  as cs_ext_discount_amt,
cast( cs_ext_sales_price as double)  as cs_ext_sales_price,
cast( cs_ext_wholesale_cost as double)  as cs_ext_wholesale_cost,
cast( cs_ext_list_price as double)  as cs_ext_list_price,
cast( cs_ext_tax as double)  as cs_ext_tax,
cast( cs_coupon_amt as double)  as cs_coupon_amt,
cast( cs_ext_ship_cost as double)  as cs_ext_ship_cost,
cast( cs_net_paid as double)  as cs_net_paid,
cast( cs_net_paid_inc_tax as double)  as cs_net_paid_inc_tax,
cast( cs_net_paid_inc_ship as double)  as cs_net_paid_inc_ship,
cast( cs_net_paid_inc_ship_tax as double)  as cs_net_paid_inc_ship_tax,
cast( cs_net_profit as double)  as cs_net_profit
from dfs.`/drill/testdata/tpcds_sf1/parquet/catalog_sales`;