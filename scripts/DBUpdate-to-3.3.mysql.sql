# ----------------------------------------------------------
#  driver: mysql, generated: 2013-05-03 02:53:40
# ----------------------------------------------------------
# ----------------------------------------------------------
#  insert into table ticket_history_type
# ----------------------------------------------------------
INSERT INTO ticket_history_type (id, name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    (50, 'TitleUpdate', 1, 1, current_timestamp, 1, current_timestamp);
DROP INDEX index_search_date ON dynamic_field_value;
CREATE INDEX dynamic_field_value_search_date ON dynamic_field_value (field_id, value_date);
DROP INDEX index_search_int ON dynamic_field_value;
CREATE INDEX dynamic_field_value_search_int ON dynamic_field_value (field_id, value_int);
DROP INDEX index_field_values ON dynamic_field_value;
CREATE INDEX dynamic_field_value_field_values ON dynamic_field_value (object_id);
DROP INDEX article_message_id ON article;
# ----------------------------------------------------------
#  alter table article
# ----------------------------------------------------------
ALTER TABLE article ADD a_message_id_md5 VARCHAR (32) NULL;
CREATE INDEX article_message_id_md5 ON article (a_message_id_md5);
DROP INDEX article_search_message_id ON article_search;
# ----------------------------------------------------------
#  alter table article_search
# ----------------------------------------------------------
ALTER TABLE article_search DROP a_message_id;
