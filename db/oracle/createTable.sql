BEGIN
    EXECUTE IMMEDIATE 'drop table OWA_ACTION_FACT';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/

CREATE TABLE OWA_ACTION_FACT (
    id                  NUMBER(19) NOT NULL,
    visitor_id          NUMBER(19),
    session_id          NUMBER(19),
    site_id             VARCHAR2(255 CHAR),
    referer_id          NUMBER(19),
    ua_id               NUMBER(19),
    host_id             NUMBER(19),
    os_id               NUMBER(19),
    location_id         NUMBER(19),
    referring_search_term_id NUMBER(19),
    timestamp NUMBER(10),
    yyyymmdd NUMBER(10),
    year NUMBER(10),
    month NUMBER(10),
    day NUMBER(3),
    dayofweek VARCHAR2(10 CHAR),
    dayofyear NUMBER(10),
    weekofyear NUMBER(10),
    last_req NUMBER(19),
    ip_address VARCHAR2(255 CHAR),
    is_new_visitor NUMBER(1),
    is_repeat_visitor NUMBER(1),
    language VARCHAR2(255 CHAR),
    days_since_prior_session NUMBER(10),
    days_since_first_session NUMBER(10),
    num_prior_sessions NUMBER(10),
    medium VARCHAR2(255 CHAR),
    source_id NUMBER(19),
    ad_id NUMBER(19),
    campaign_id NUMBER(19),
    user_name VARCHAR2(255 CHAR),
    cv1_name VARCHAR2(255 CHAR),
    cv1_value VARCHAR2(255 CHAR),
    cv2_name VARCHAR2(255 CHAR),
    cv2_value VARCHAR2(255 CHAR),
    cv3_name VARCHAR2(255 CHAR),
    cv3_value VARCHAR2(255 CHAR),
    cv4_name VARCHAR2(255 CHAR),
    cv4_value VARCHAR2(255 CHAR),
    cv5_name VARCHAR2(255 CHAR),
    cv5_value VARCHAR2(255 CHAR),
    document_id NUMBER(19),
    action_name VARCHAR2(255 CHAR),
    action_label VARCHAR2(255 CHAR),
    action_group VARCHAR2(255 CHAR),
    numeric_value NUMBER(10),
    primary key(id)
);

BEGIN
EXECUTE IMMEDIATE 'drop table OWA_AD_DIM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_AD_DIM (
    id NUMBER(19) NOT NULL,
    name VARCHAR2(255 CHAR),
    type VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
) ;

BEGIN
EXECUTE IMMEDIATE 'drop table OWA_CAMPAIGN_DIM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_CAMPAIGN_DIM (
            id NUMBER(19) NOT NULL,
            name VARCHAR2(255 CHAR),
            PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_CLICK';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_CLICK (
     id NUMBER(19) NOT NULL,
     visitor_id NUMBER(19),
     session_id NUMBER(19),
     site_id VARCHAR2(255 CHAR),
     referer_id NUMBER(19),
     ua_id NUMBER(19),
     host_id NUMBER(19),
     os_id NUMBER(19),
     location_id NUMBER(19),
     referring_search_term_id NUMBER(19),
     timestamp NUMBER(10),
     yyyymmdd NUMBER(10),
     year NUMBER(10),
     month NUMBER(10),
     day NUMBER(3),
     dayofweek VARCHAR2(10 CHAR),
     dayofyear NUMBER(10),
     weekofyear NUMBER(10),
     last_req NUMBER(19),
     ip_address VARCHAR2(255 CHAR),
     is_new_visitor NUMBER(1),
     is_repeat_visitor NUMBER(1),
     language VARCHAR2(255 CHAR),
     days_since_prior_session NUMBER(10),
     days_since_first_session NUMBER(10),
     num_prior_sessions NUMBER(10),
     medium VARCHAR2(255 CHAR),
     source_id NUMBER(19),
     ad_id NUMBER(19),
     campaign_id NUMBER(19),
     user_name VARCHAR2(255 CHAR),
     cv1_name VARCHAR2(255 CHAR),
     cv1_value VARCHAR2(255 CHAR),
     cv2_name VARCHAR2(255 CHAR),
     cv2_value VARCHAR2(255 CHAR),
     cv3_name VARCHAR2(255 CHAR),
     cv3_value VARCHAR2(255 CHAR),
     cv4_name VARCHAR2(255 CHAR),
     cv4_value VARCHAR2(255 CHAR),
     cv5_name VARCHAR2(255 CHAR),
     cv5_value VARCHAR2(255 CHAR),
     last_impression_id NUMBER(19),
     document_id NUMBER(19),
     target_id NUMBER(19),
     target_url VARCHAR2(255 CHAR),
     hour NUMBER(3),
     minute NUMBER(3),
     second NUMBER(10),
     msec VARCHAR2(255 CHAR),
     click_x NUMBER(10),
     click_y NUMBER(10),
     page_width NUMBER(10),
     page_height NUMBER(10),
     position NUMBER(10),
     approx_position NUMBER(19),
     dom_element_x NUMBER(10),
     dom_element_y NUMBER(10),
     dom_element_name VARCHAR2(255 CHAR),
     dom_element_id VARCHAR2(255 CHAR),
     dom_element_value VARCHAR2(255 CHAR),
     dom_element_tag VARCHAR2(255 CHAR),
     dom_element_text VARCHAR2(255 CHAR),
     dom_element_class VARCHAR2(255 CHAR),
     dom_element_parent_id VARCHAR2(255 CHAR),
     tag_id NUMBER(19),
     placement_id NUMBER(19),
     ad_group_id NUMBER(19),
     host VARCHAR2(255 CHAR),
     PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_COMMERCE_LINE_ITEM_FACT';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_COMMERCE_LINE_ITEM_FACT (
    id NUMBER(19) NOT NULL,
    visitor_id NUMBER(19),
    session_id NUMBER(19),
    site_id VARCHAR2(255 CHAR),
    referer_id NUMBER(19),
    ua_id NUMBER(19),
    host_id NUMBER(19),
    os_id NUMBER(19),
    location_id NUMBER(19),
    referring_search_term_id NUMBER(19),
    timestamp NUMBER(10),
    yyyymmdd NUMBER(10),
    year NUMBER(10),
    month NUMBER(10),
    day NUMBER(3),
    dayofweek VARCHAR2(10 CHAR),
    dayofyear NUMBER(10),
    weekofyear NUMBER(10),
    last_req NUMBER(19),
    ip_address VARCHAR2(255 CHAR),
    is_new_visitor NUMBER(1),
    is_repeat_visitor NUMBER(1),
    language VARCHAR2(255 CHAR),
    days_since_prior_session NUMBER(10),
    days_since_first_session NUMBER(10),
    num_prior_sessions NUMBER(10),
    medium VARCHAR2(255 CHAR),
    source_id NUMBER(19),
    ad_id NUMBER(19),
    campaign_id NUMBER(19),
    user_name VARCHAR2(255 CHAR),
    cv1_name VARCHAR2(255 CHAR),
    cv1_value VARCHAR2(255 CHAR),
    cv2_name VARCHAR2(255 CHAR),
    cv2_value VARCHAR2(255 CHAR),
    cv3_name VARCHAR2(255 CHAR),
    cv3_value VARCHAR2(255 CHAR),
    cv4_name VARCHAR2(255 CHAR),
    cv4_value VARCHAR2(255 CHAR),
    cv5_name VARCHAR2(255 CHAR),
    cv5_value VARCHAR2(255 CHAR),
    document_id NUMBER(19),
    order_id VARCHAR2(255 CHAR),
    sku VARCHAR2(255 CHAR),
    product_name VARCHAR2(255 CHAR),
    category VARCHAR2(255 CHAR),
    unit_price NUMBER(19),
    quantity NUMBER(10),
    item_revenue NUMBER(19),
    PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_COMMERCE_TRANSACTION_FACT';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_COMMERCE_TRANSACTION_FACT (
    id NUMBER(19) NOT NULL,
    visitor_id NUMBER(19),
    session_id NUMBER(19),
    site_id VARCHAR2(255 CHAR),
    referer_id NUMBER(19),
    ua_id NUMBER(19),
    host_id NUMBER(19),
    os_id NUMBER(19),
    location_id NUMBER(19),
    referring_search_term_id NUMBER(19),
    timestamp NUMBER(10),
    yyyymmdd NUMBER(10),
    year NUMBER(10),
    month NUMBER(10),
    day NUMBER(3),
    dayofweek VARCHAR2(10 CHAR),
    dayofyear NUMBER(10),
    weekofyear NUMBER(10),
    last_req NUMBER(19),
    ip_address VARCHAR2(255 CHAR),
    is_new_visitor NUMBER(1),
    is_repeat_visitor NUMBER(1),
    language VARCHAR2(255 CHAR),
    days_since_prior_session NUMBER(10),
    days_since_first_session NUMBER(10),
    num_prior_sessions NUMBER(10),
    medium VARCHAR2(255 CHAR),
    source_id NUMBER(19),
    ad_id NUMBER(19),
    campaign_id NUMBER(19),
    user_name VARCHAR2(255 CHAR),
    cv1_name VARCHAR2(255 CHAR),
    cv1_value VARCHAR2(255 CHAR),
    cv2_name VARCHAR2(255 CHAR),
    cv2_value VARCHAR2(255 CHAR),
    cv3_name VARCHAR2(255 CHAR),
    cv3_value VARCHAR2(255 CHAR),
    cv4_name VARCHAR2(255 CHAR),
    cv4_value VARCHAR2(255 CHAR),
    cv5_name VARCHAR2(255 CHAR),
    cv5_value VARCHAR2(255 CHAR),
    document_id NUMBER(19),
    order_id VARCHAR2(255 CHAR),
    order_source VARCHAR2(255 CHAR),
    gateway VARCHAR2(255 CHAR),
    total_revenue NUMBER(19),
    tax_revenue NUMBER(19),
    shipping_revenue NUMBER(19),
    PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_CONFIGURATION';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_CONFIGURATION (
             id NUMBER(19) NOT NULL,
             settings BLOB,
             PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_DOCUMENT';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_DOCUMENT (
    id NUMBER(19) NOT NULL,
    url VARCHAR2(255 CHAR),
    uri VARCHAR2(255 CHAR),
    page_title VARCHAR2(255 CHAR),
    page_type VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_DOMSTREAM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_DOMSTREAM (
    id NUMBER(19) NOT NULL,
    visitor_id NUMBER(19),
    session_id NUMBER(19),
    site_id VARCHAR2(255 CHAR),
    referer_id NUMBER(19),
    ua_id NUMBER(19),
    host_id NUMBER(19),
    os_id NUMBER(19),
    location_id NUMBER(19),
    referring_search_term_id NUMBER(19),
    timestamp NUMBER(10),
    yyyymmdd NUMBER(10),
    year NUMBER(10),
    month NUMBER(10),
    day NUMBER(3),
    dayofweek VARCHAR2(10 CHAR),
    dayofyear NUMBER(10),
    weekofyear NUMBER(10),
    last_req NUMBER(19),
    ip_address VARCHAR2(255 CHAR),
    is_new_visitor NUMBER(1),
    is_repeat_visitor NUMBER(1),
    language VARCHAR2(255 CHAR),
    days_since_prior_session NUMBER(10),
    days_since_first_session NUMBER(10),
    num_prior_sessions NUMBER(10),
    medium VARCHAR2(255 CHAR),
    source_id NUMBER(19),
    ad_id NUMBER(19),
    campaign_id NUMBER(19),
    user_name VARCHAR2(255 CHAR),
    cv1_name VARCHAR2(255 CHAR),
    cv1_value VARCHAR2(255 CHAR),
    cv2_name VARCHAR2(255 CHAR),
    cv2_value VARCHAR2(255 CHAR),
    cv3_name VARCHAR2(255 CHAR),
    cv3_value VARCHAR2(255 CHAR),
    cv4_name VARCHAR2(255 CHAR),
    cv4_value VARCHAR2(255 CHAR),
    cv5_name VARCHAR2(255 CHAR),
    cv5_value VARCHAR2(255 CHAR),
    document_id NUMBER(19),
    domstream_guid NUMBER(19),
    events BLOB,
    duration NUMBER(10),
    page_url VARCHAR2(255 CHAR),
    page_width NUMBER(10),
    page_height NUMBER(10),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_EXIT';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_EXIT (
    id NUMBER(19) NOT NULL,
    url VARCHAR2(255 CHAR),
    site_name VARCHAR2(255 CHAR),
    site VARCHAR2(255 CHAR),
    anchortext VARCHAR2(255 CHAR),
    page_title VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);



BEGIN
EXECUTE IMMEDIATE 'drop table OWA_FEED_REQUEST';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_FEED_REQUEST (
            id NUMBER(19) NOT NULL,
            visitor_id NUMBER(19),
            session_id NUMBER(19),
            document_id NUMBER(19),
            site_id VARCHAR2(255 CHAR),
            ua_id VARCHAR2(255 CHAR),
            host_id NUMBER(19),
            os_id VARCHAR2(255 CHAR),
            site VARCHAR2(255 CHAR),
            host VARCHAR2(255 CHAR),
            feed_reader_guid VARCHAR2(255 CHAR),
            subscription_id NUMBER(19),
            timestamp NUMBER(19),
            yyyymmdd NUMBER(10),
            month NUMBER(10),
            day NUMBER(3),
            dayofweek VARCHAR2(10 CHAR),
            dayofyear NUMBER(10),
            weekofyear NUMBER(10),
            year NUMBER(10),
            hour NUMBER(3),
            minute NUMBER(3),
            second NUMBER(3),
            msec NUMBER(10),
            last_req NUMBER(19),
            feed_format VARCHAR2(255 CHAR),
            ip_address VARCHAR2(255 CHAR),
            os VARCHAR2(255 CHAR),
            PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_HOST';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_HOST (
    id NUMBER(19) NOT NULL,
    ip_address VARCHAR2(255 CHAR),
    host VARCHAR2(255 CHAR),
    full_host VARCHAR2(255 CHAR),
    city VARCHAR2(255 CHAR),
    country VARCHAR2(255 CHAR),
    latitude VARCHAR2(255 CHAR),
    longitude VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_IMPRESSION';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_IMPRESSION (
    id NUMBER(19) NOT NULL,
    visitor_id NUMBER(19),
    session_id NUMBER(19),
    tag_id NUMBER(19),
    placement_id NUMBER(19),
    campaign_id NUMBER(19),
    ad_group_id NUMBER(19),
    ad_id NUMBER(19),
    site_id VARCHAR2(255 CHAR),
    last_impression_id NUMBER(19),
    last_impression_timestamp NUMBER(19),
    timestamp NUMBER(19),
    year NUMBER(10),
    month NUMBER(10),
    day NUMBER(10),
    dayofyear NUMBER(10),
    weekofyear NUMBER(10),
    hour NUMBER(3),
    minute NUMBER(3),
    msec NUMBER(19),
    url VARCHAR2(255 CHAR),
    ua_id NUMBER(19),
    ip_address VARCHAR2(255 CHAR),
    host_id VARCHAR2(255 CHAR),
    host VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_LOCATION_DIM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_LOCATION_DIM (
    id NUMBER(19) NOT NULL,
    country VARCHAR2(255 CHAR),
    country_code VARCHAR2(255 CHAR),
    state VARCHAR2(255 CHAR),
    city VARCHAR2(255 CHAR),
    latitude VARCHAR2(255 CHAR),
    longitude VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_OS';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_OS (
    id NUMBER(19) NOT NULL,
    name VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_QUEUE_ITEM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_QUEUE_ITEM (
          id NUMBER(19) NOT NULL,
          event_type VARCHAR2(255 CHAR),
          priority NUMBER(10),
          status VARCHAR2(255 CHAR),
          event BLOB,
          insertion_datestamp DATE,
          insertion_timestamp NUMBER(10),
          handled_timestamp NUMBER(10),
          last_attempt_timestamp NUMBER(10),
          not_before_timestamp NUMBER(10),
          failed_attempt_count NUMBER(10),
          is_assigned NUMBER(1),
          last_error_msg VARCHAR2(255 CHAR),
          handled_by VARCHAR2(255 CHAR),
          handler_duration NUMBER(10),
          PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_REFERER';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_REFERER (
       id NUMBER(19) NOT NULL,
       url VARCHAR2(255 CHAR),
       site_name VARCHAR2(255 CHAR),
       site VARCHAR2(255 CHAR),
       query_terms VARCHAR2(255 CHAR),
       refering_anchortext VARCHAR2(255 CHAR),
       page_title VARCHAR2(255 CHAR),
       snippet CLOB,
       is_searchengine NUMBER(1),
       PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_REQUEST';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_REQUEST (
       id NUMBER(19) NOT NULL,
       visitor_id NUMBER(19),
       session_id NUMBER(19),
       site_id VARCHAR2(255 CHAR),
       referer_id NUMBER(19),
       ua_id NUMBER(19),
       host_id NUMBER(19),
       os_id NUMBER(19),
       location_id NUMBER(19),
       referring_search_term_id NUMBER(19),
       timestamp NUMBER(10),
       yyyymmdd NUMBER(10),
       year NUMBER(10),
       month NUMBER(10),
       day NUMBER(3),
       dayofweek VARCHAR2(10 CHAR),
       dayofyear NUMBER(10),
       weekofyear NUMBER(10),
       last_req NUMBER(19),
       ip_address VARCHAR2(255 CHAR),
       is_new_visitor NUMBER(1),
       is_repeat_visitor NUMBER(1),
       language VARCHAR2(255 CHAR),
       days_since_prior_session NUMBER(10),
       days_since_first_session NUMBER(10),
       num_prior_sessions NUMBER(10),
       medium VARCHAR2(255 CHAR),
       source_id NUMBER(19),
       ad_id NUMBER(19),
       campaign_id NUMBER(19),
       user_name VARCHAR2(255 CHAR),
       cv1_name VARCHAR2(255 CHAR),
       cv1_value VARCHAR2(255 CHAR),
       cv2_name VARCHAR2(255 CHAR),
       cv2_value VARCHAR2(255 CHAR),
       cv3_name VARCHAR2(255 CHAR),
       cv3_value VARCHAR2(255 CHAR),
       cv4_name VARCHAR2(255 CHAR),
       cv4_value VARCHAR2(255 CHAR),
       cv5_name VARCHAR2(255 CHAR),
       cv5_value VARCHAR2(255 CHAR),
       inbound_visitor_id NUMBER(19),
       inbound_session_id NUMBER(19),
       feed_subscription_id NUMBER(19),
       user_email VARCHAR2(255 CHAR),
       hour NUMBER(3),
       minute NUMBER(3),
       second NUMBER(3),
       msec NUMBER(10),
       document_id VARCHAR2(255 CHAR),
       site VARCHAR2(255 CHAR),
       os VARCHAR2(255 CHAR),
       prior_document_id NUMBER(19),
       is_comment NUMBER(1),
       is_entry_page NUMBER(1),
       is_browser NUMBER(1),
       is_robot NUMBER(1),
       is_feedreader NUMBER(1),
       PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_SEARCH_TERM_DIM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_SEARCH_TERM_DIM (
    id NUMBER(19) NOT NULL,
    terms VARCHAR2(255 CHAR),
    term_count VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_SESSION';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_SESSION (
       id NUMBER(19) NOT NULL,
       visitor_id NUMBER(19),
       site_id VARCHAR2(255 CHAR),
       referer_id NUMBER(19),
       ua_id NUMBER(19),
       host_id NUMBER(19),
       os_id NUMBER(19),
       location_id NUMBER(19),
       referring_search_term_id NUMBER(19),
       timestamp NUMBER(10),
       yyyymmdd NUMBER(10),
       year NUMBER(10),
       month NUMBER(10),
       day NUMBER(3),
       dayofweek VARCHAR2(10 CHAR),
       dayofyear NUMBER(10),
       weekofyear NUMBER(10),
       last_req NUMBER(19),
       ip_address VARCHAR2(255 CHAR),
       is_new_visitor NUMBER(1),
       is_repeat_visitor NUMBER(1),
       language VARCHAR2(255 CHAR),
       days_since_prior_session NUMBER(10),
       days_since_first_session NUMBER(10),
       num_prior_sessions NUMBER(10),
       medium VARCHAR2(255 CHAR),
       source_id NUMBER(19),
       ad_id NUMBER(19),
       campaign_id NUMBER(19),
       user_name VARCHAR2(255 CHAR),
       cv1_name VARCHAR2(255 CHAR),
       cv1_value VARCHAR2(255 CHAR),
       cv2_name VARCHAR2(255 CHAR),
       cv2_value VARCHAR2(255 CHAR),
       cv3_name VARCHAR2(255 CHAR),
       cv3_value VARCHAR2(255 CHAR),
       cv4_name VARCHAR2(255 CHAR),
       cv4_value VARCHAR2(255 CHAR),
       cv5_name VARCHAR2(255 CHAR),
       cv5_value VARCHAR2(255 CHAR),
       user_email VARCHAR2(255 CHAR),
       hour NUMBER(3),
       minute NUMBER(3),
       num_pageviews NUMBER(10),
       num_comments NUMBER(10),
       is_bounce NUMBER(1),
       prior_session_lastreq NUMBER(19),
       prior_session_id NUMBER(19),
       time_sinse_priorsession NUMBER(10),
       prior_session_year NUMBER(3),
       prior_session_month VARCHAR2(255 CHAR),
       prior_session_day NUMBER(3),
       prior_session_dayofweek NUMBER(10),
       prior_session_hour NUMBER(3),
       prior_session_minute NUMBER(3),
       os VARCHAR2(255 CHAR),
       first_page_id NUMBER(19),
       last_page_id NUMBER(19),
       host VARCHAR2(255 CHAR),
       city VARCHAR2(255 CHAR),
       country VARCHAR2(255 CHAR),
       site VARCHAR2(255 CHAR),
       is_robot NUMBER(1),
       is_browser NUMBER(1),
       is_feedreader NUMBER(1),
       latest_attributions BLOB,
       num_goals NUMBER(1),
       num_goal_starts NUMBER(1),
       goals_value NUMBER(19),
       commerce_trans_count NUMBER(10),
       commerce_trans_revenue NUMBER(19),
       commerce_items_revenue NUMBER(19),
       commerce_items_count NUMBER(10),
       commerce_items_quantity NUMBER(10),
       commerce_shipping_revenue NUMBER(19),
       commerce_tax_revenue NUMBER(19),
       goal_1 NUMBER(1),
       goal_1_start NUMBER(1),
       goal_1_value NUMBER(19),
       goal_2 NUMBER(1),
       goal_2_start NUMBER(1),
       goal_2_value NUMBER(19),
       goal_3 NUMBER(1),
       goal_3_start NUMBER(1),
       goal_3_value NUMBER(19),
       goal_4 NUMBER(1),
       goal_4_start NUMBER(1),
       goal_4_value NUMBER(19),
       goal_5 NUMBER(1),
       goal_5_start NUMBER(1),
       goal_5_value NUMBER(19),
       goal_6 NUMBER(1),
       goal_6_start NUMBER(1),
       goal_6_value NUMBER(19),
       goal_7 NUMBER(1),
       goal_7_start NUMBER(1),
       goal_7_value NUMBER(19),
       goal_8 NUMBER(1),
       goal_8_start NUMBER(1),
       goal_8_value NUMBER(19),
       goal_9 NUMBER(1),
       goal_9_start NUMBER(1),
       goal_9_value NUMBER(19),
       goal_10 NUMBER(1),
       goal_10_start NUMBER(1),
       goal_10_value NUMBER(19),
       goal_11 NUMBER(1),
       goal_11_start NUMBER(1),
       goal_11_value NUMBER(19),
       goal_12 NUMBER(1),
       goal_12_start NUMBER(1),
       goal_12_value NUMBER(19),
       goal_13 NUMBER(1),
       goal_13_start NUMBER(1),
       goal_13_value NUMBER(19),
       goal_14 NUMBER(1),
       goal_14_start NUMBER(1),
       goal_14_value NUMBER(19),
       goal_15 NUMBER(1),
       goal_15_start NUMBER(1),
       goal_15_value NUMBER(19),
       PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_SITE';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_SITE (
    id NUMBER(19) NOT NULL,
    site_id VARCHAR2(255 CHAR),
    domain VARCHAR2(255 CHAR),
    name VARCHAR2(255 CHAR),
    description CLOB,
    site_family VARCHAR2(255 CHAR),
    settings BLOB,
    PRIMARY KEY (id)
) ;


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_SITE_USER';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_SITE_USER (
    site_id NUMBER(19),
    user_id NUMBER(10)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_SOURCE_DIM';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_SOURCE_DIM (
    id NUMBER(19) NOT NULL,
    source_domain VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_UA';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_UA (
    id NUMBER(19) NOT NULL,
    ua VARCHAR2(255 CHAR),
    browser_type VARCHAR2(255 CHAR),
    browser VARCHAR2(255 CHAR),
    PRIMARY KEY (id)
) ;

BEGIN
EXECUTE IMMEDIATE 'drop table OWA_USER';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_USER (
    id NUMBER(19) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    user_id varchar(255) NOT NULL,
    password VARCHAR2(255 CHAR),
    role VARCHAR2(255 CHAR),
    real_name VARCHAR2(255 CHAR),
    email_address VARCHAR2(255 CHAR),
    temp_passkey VARCHAR2(255 CHAR),
    creation_date NUMBER(19),
    last_update_date NUMBER(19),
    api_key VARCHAR2(255 CHAR),
    PRIMARY KEY (user_id)
);


BEGIN
EXECUTE IMMEDIATE 'drop table OWA_VISITOR';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/
CREATE TABLE OWA_VISITOR (
       id NUMBER(19) NOT NULL,
       user_name VARCHAR2(255 CHAR),
       user_email VARCHAR2(255 CHAR),
       first_session_id NUMBER(19),
       first_session_year NUMBER(10),
       first_session_month VARCHAR2(255 CHAR),
       first_session_day NUMBER(10),
       first_session_dayofyear NUMBER(10),
       first_session_timestamp NUMBER(19),
       first_session_yyyymmdd NUMBER(19),
       last_session_id NUMBER(19),
       last_session_year NUMBER(10),
       last_session_month VARCHAR2(255 CHAR),
       last_session_day NUMBER(10),
       last_session_dayofyear NUMBER(10),
       num_prior_sessions NUMBER(10),
       PRIMARY KEY (id)
);

