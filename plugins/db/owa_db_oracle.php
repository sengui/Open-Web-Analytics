<?php

//
// Open Web Analytics - An Open Source Web Analytics Framework
//
// Copyright 2006 Peter Adams. All rights reserved.
//
// Licensed under GPL v2.0 http://www.gnu.org/copyleft/gpl.html
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// $Id$
//


define('OWA_DTD_BIGINT', 'NUMBER(19)');
define('OWA_DTD_INT', 'NUMBER(10)');
define('OWA_DTD_TINYINT', 'NUMBER(1)');
define('OWA_DTD_TINYINT2', 'NUMBER(2)');
define('OWA_DTD_TINYINT4', 'NUMBER(4)');
define('OWA_DTD_SERIAL', 'NUMBER(19) GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL');
define('OWA_DTD_PRIMARY_KEY', 'PRIMARY KEY');
define('OWA_DTD_VARCHAR10', 'VARCHAR2(10 CHAR)');
define('OWA_DTD_VARCHAR255', 'VARCHAR2(255 CHAR)');
define('OWA_DTD_VARCHAR', 'VARCHAR2(%s CHAR)');
define('OWA_DTD_TEXT', 'CLOB');
define('OWA_DTD_BOOLEAN', 'NUMBER(1)');
define('OWA_DTD_TIMESTAMP', 'DATE');
define('OWA_DTD_BLOB', 'BLOB');
define('OWA_DTD_INDEX', 'KEY');
define('OWA_DTD_AUTO_INCREMENT', 'AUTO_INCREMENT');
define('OWA_DTD_NOT_NULL', 'NOT NULL');
define('OWA_DTD_UNIQUE', 'PRIMARY KEY(%s)');
define('OWA_SQL_ADD_COLUMN', 'ALTER TABLE %s ADD %s %s');
define('OWA_SQL_DROP_COLUMN', 'ALTER TABLE %s DROP %s');
define('OWA_SQL_RENAME_COLUMN', 'ALTER TABLE %s CHANGE %s %s %s');
define('OWA_SQL_MODIFY_COLUMN', 'ALTER TABLE %s MODIFY %s %s');
define('OWA_SQL_RENAME_TABLE', 'ALTER TABLE %s RENAME %s');
define('OWA_SQL_CREATE_TABLE', 'CREATE TABLE IF NOT EXISTS %s (%s) %s');
define('OWA_SQL_DROP_TABLE', 'DROP TABLE IF EXISTS %s');
define('OWA_SQL_INSERT_ROW', 'INSERT into %s (%s) VALUES (%s)');
define('OWA_SQL_UPDATE_ROW', 'UPDATE %s SET %s %s');
define('OWA_SQL_DELETE_ROW', "DELETE from %s %s");
define('OWA_SQL_CREATE_INDEX', 'CREATE INDEX %s ON %s (%s)');
define('OWA_SQL_DROP_INDEX', 'DROP INDEX %s ON %s');
define('OWA_SQL_INDEX', 'INDEX (%s)');
define('OWA_SQL_BEGIN_TRANSACTION', 'BEGIN');
define('OWA_SQL_END_TRANSACTION', 'COMMIT');
define('OWA_DTD_TABLE_TYPE', 'ENGINE = %s');
define('OWA_DTD_TABLE_TYPE_DEFAULT', 'INNODB');
define('OWA_DTD_TABLE_TYPE_DISK', 'INNODB');
define('OWA_DTD_TABLE_TYPE_MEMORY', 'MEMORY');
define('OWA_SQL_ALTER_TABLE_TYPE', 'ALTER TABLE %s ENGINE = %s');
define('OWA_SQL_JOIN_LEFT_OUTER', 'LEFT OUTER JOIN');
define('OWA_SQL_JOIN_LEFT_INNER', 'LEFT INNER JOIN');
define('OWA_SQL_JOIN_RIGHT_OUTER', 'RIGHT OUTER JOIN');
define('OWA_SQL_JOIN_RIGHT_INNER', 'RIGHT INNER JOIN');
define('OWA_SQL_JOIN', 'JOIN');
define('OWA_SQL_DESCENDING', 'DESC');
define('OWA_SQL_ASCENDING', 'ASC');
define('OWA_SQL_REGEXP', 'REGEXP_LIKE(%s, %s)');
define('OWA_SQL_NOTREGEXP', 'NOT REGEXP_LIKE(%s, %s)');
define('OWA_SQL_LIKE', 'LIKE');
define('OWA_SQL_ADD_INDEX', 'ALTER TABLE %s ADD INDEX (%s) %s');
define('OWA_SQL_COUNT', 'COUNT(%s)');
define('OWA_SQL_SUM', 'SUM(%s)');
define('OWA_SQL_ROUND', 'ROUND(%s)');
define('OWA_SQL_AVERAGE', 'AVG(%s)');
define('OWA_SQL_DISTINCT', 'DISTINCT %s');
define('OWA_SQL_DIVISION', '(%s / %s)');
define('OWA_DTD_CHARACTER_ENCODING_UTF8', 'utf8');
define('OWA_DTD_TABLE_CHARACTER_ENCODING', 'CHARACTER SET = %s');


/**
 * MySQL Data Access Class
 *
 * @author      Peter Adams <peter@openwebanalytics.com>
 * @copyright   Copyright &copy; 2006 Peter Adams <peter@openwebanalytics.com>
 * @license     http://www.gnu.org/copyleft/gpl.html GPL v2.0
 * @category    owa
 * @package     owa
 * @version        $Revision$
 * @since        owa 1.0.0
 */
class owa_db_oracle extends owa_db {

    var $stid;

    function connect() {

        if ( ! $this->connection ) {

            // make a persistent connection if need be.
            if ( $this->getConnectionParam('persistant') ) {

                $host = 'p:' . $this->getConnectionParam('host');

            } else {

                $host = $this->getConnectionParam('host');
            }

            if ($this->getConnectionParam('port')) {
                $port = $this->getConnectionParam('port');
            } else {
                $port = 1521;
            }
            $url = $host . ":" . $port . "/" . $this->getConnectionParam('name');

            // get a connection
            $this->connection = oci_connect(
                $this->getConnectionParam('user'),
                $this->getPassword(),
                $url
            );

//            // explicitng set the character set as UTF-8
//            if (function_exists('mysqli_set_charset')) {
//
//                mysqli_set_charset($this->connection, 'utf8' );
//
//            } else {
//
//                $this->query("SET NAMES 'utf8'");
//            }
//
//            // turn off strict mode. needed on mysql 5.7 and lter when it is turned on by default.
//            $this->query( "SET SESSION sql_mode=''" );

        }

        if ( ! $this->connection ) {

            $this->e->alert('Could not connect to database.');
            $this->connection_status = false;
            return false;

        } else {

            $this->connection_status = true;
            return true;
        }
    }

    function getPassword(){
        $user_alias = $this->getConnectionParam('user_alias');
        if (!empty($user_alias)) {
            $this->e->alert(sprintf("Getting password with user.alias is %s", $user_alias));
            exec(sprintf("%s %s", $this->getCloakwarePath(), $user_alias), $output, $result);
            if ($result == 0 && !empty($output) && count($output)) {
                $arr = explode(' ',$output[0]);
                if (count($arr) ==3 && $arr[0] == '400'){
                    return $arr[2];
                } else{
                    $this->e->alert(sprintf("Getting password failed, user.alias is %s, error message: %s", $user_alias, $output));
                }
            } else{
                $this->e->alert('Getting password failed!');
            }
        }
        return $this->getConnectionParam('password');
    }

    function getCloakwarePath()
    {
        $cloakware_path = $this->getConnectionParam('cloakware_path');
        if (empty($cloakware_path)) {
            return 'cspmclient';
        }
        return $cloakware_path;
    }


    /**
     * Database Query
     *
     * @param     string $sql
     * @access     public
     *
     */
    function query( $sql ) {

        if ( $this->connection_status == false) {

            owa_coreAPI::profile($this, __FUNCTION__, __LINE__);

            $this->connect();

            owa_coreAPI::profile($this, __FUNCTION__, __LINE__);
        }

        owa_coreAPI::profile($this, __FUNCTION__, __LINE__);

        $this->e->debug(sprintf('Query: %s', $sql));

        $this->result = array();

        if ( $this -> stid != null ) {
            oci_free_statement($this -> stid);
        }
        $this -> stid = null;

        owa_coreAPI::profile($this, __FUNCTION__, __LINE__, $sql);

        $new_stid = oci_parse($this -> connection, $sql);

        owa_coreAPI::profile($this, __FUNCTION__, __LINE__);
        // Log Errors
        if (!$new_stid) {
            $e = oci_error($new_stid);
            $this->e->debug(
                sprintf(
                    'A Oracle error ocured. Error: (%s) %s. Query: %s',
                    $e['message'],
                    htmlspecialchars( $e['message']),
                    $sql
                )
            );
            return null;
        }

        $r = oci_execute($new_stid);
        if (!$r) {
            $e = oci_error($new_stid);
            $this->e->debug(
                sprintf(
                    'A Oracle error ocured. Error: (%s) %s. Query: %s',
                    $e['message'],
                    htmlspecialchars( $e['message']),
                    $sql
                )
            );
            return null;
        }

        owa_coreAPI::profile($this, __FUNCTION__, __LINE__);

        $this->stid = $new_stid;

        return $r;
    }

    function close() {
        oci_close($this->connection);
    }

    /**
     * Fetch result set array
     *
     * @param     string $sql
     * @return     array
     * @access  public
     */
    function get_results( $sql ) {

        if ( $sql ) {

            $this->query($sql);
        }

        //$this->result = array();

        if (!$this->stid) {
            return null;
        }


        while (($row = oci_fetch_array($this -> stid, OCI_ASSOC+OCI_RETURN_NULLS + OCI_RETURN_LOBS)) != false)
        {
            array_push($this->result, $row);
        }

        if ( $this->result ) {
            return $this->replaceKeyName($this->array_change_key_case_all($this->result));
        } else {

            return null;
        }
    }

    /**
     * Fetch Single Row
     *
     * @param string $sql
     * @return array
     */
    function get_row($sql) {

        $this->query($sql);

        //print_r($this->result);
        $row = oci_fetch_array($this -> stid, OCI_ASSOC+OCI_RETURN_NULLS);

        return $row;
    }

    /**
     * Prepares and escapes string
     *
     * @param string $string
     * @return string
     */
    function prepare( $string ) {

//        if ($this->connection_status == false) {
//            $this->connect();
//        }
//
//        return mysqli_real_escape_string( $this->connection, $string );
        return $string;

    }

    function getAffectedRows() {

        return oci_num_rows($this -> stid);
    }

    function generateSelectQuerySql() {

        $cols = '';
        $i = 0;
        $params = $this->_fetchSqlParams('select_values');
        $count = count($params);

        foreach ($params as $k => $v) {

            $cols .= $v['name'];

            // Add as
            if (!empty($v['as'])):

                $cols .= ' '.$this->addQuot($v['as']);

            endif;

            // Add commas
            if ($i < $count - 1):

                $cols .= ', ';

            endif;

            $i++;

        }

        $sql = sprintf("SELECT %s FROM %s %s %s %s %s",
            $cols,
            $this->_makeFromClause(),
            $this->_makeWhereClause(),
            $this->_makeGroupByClause(),
            $this->_makeHavingClause(),
            $this->_makeOrderByClause()
        );
        $sql = $this->makeLimitClause($sql);
        $this->_setSql($sql);
        return $sql;
    }

    function _makeConstraintClause($type = 'WHERE', $params) {

        if ( ! empty( $params ) ) {

            $count = count( $params );
            $i = 0;

            $constraint = $type.' ';

            foreach ($params as $k => $v) {

                switch (strtolower($v['operator'])) {

                    case '==':
                        $constraint .= sprintf("%s = '%s'",$v['name'], $this->prepare( $v['value'] ) );
                        break;

                    case 'between':
                        $constraint .= sprintf("%s BETWEEN '%s' AND '%s'", $v['name'], $this->prepare( $v['value']['start'] ), $this->prepare( $v['value']['end'] ) );
                        break;

                    case '=~':
                        $constraint .= sprintf("REGEXP_LIKE(%s, '%s')",$v['name'], $this->prepare( $v['value'] ) );
                        break;

                    case '!~':
                        $constraint .= sprintf("NOT REGEXP_LIKE(%s, '%s')",$v['name'], $this->prepare( $v['value'] ) );
                        break;

                    case '=@':
                        $constraint .= sprintf("INSTR(%s, '%s') > 0", $this->prepare( $v['name'] ), $v['value'] );
                        break;

                    case '!@':
                        $constraint .= sprintf("INSTR(%s, '%s') = 0", $this->prepare( $v['name'] ), $v['value'] );
                        break;

                    default:
                        $constraint .= sprintf("%s %s '%s'",$v['name'], $v['operator'], $this->prepare( $v['value'] ) );
                        break;
                }

                if ($i < $count - 1) {

                    $constraint .= " AND ";
                }

                $i++;
            }

            return $constraint;
        }
    }

    function makeLimitClause($sql) {

        $param = $this->_fetchSqlParams('limit');

        if(!empty($param)):
            $paramOffset = $this->_fetchSqlParams('offset');
            if(!empty($paramOffset)):
                $ret = $this->makeOffsetClause($sql, $param, $paramOffset);
            else:
                $ret = sprintf("SELECT * FROM (%s) WHERE ROWNUM <= %d", $sql, $param);
            endif;
            return $ret;
        else:
            return $sql;
        endif;
    }

    function makeOffsetClause($sql, $paramLimit, $paramOffset) {

        $cols = '';
        $i = 0;
        $params = $this->_fetchSqlParams('select_values');
        $count = count($params);

        foreach ($params as $k => $v) {
            // Add as
            if (!empty($v['as'])):
                $cols .= '"'.$v['as'].'"';
            else:
                $cols .= $v['name'];
            endif;
            // Add commas
            if ($i < $count - 1):
                $cols .= ', ';
            endif;
            $i++;
        }
        $ret = sprintf("SELECT %s FROM (SELECT a.*, ROWNUM rn FROM (%s) a WHERE ROWNUM <= %d) WHERE rn > %d", $cols, $sql, $paramLimit, $paramOffset);
        return $ret;
    }

    function array_change_key_case_all(&$array, $case = CASE_LOWER){
        $array = array_change_key_case($array, $case);
        foreach ($array as $key => $value) {
            if (is_array($value)) {
                $this->array_change_key_case_all($array[$key], $case);
            }
        }

        return $array;
    }

    function replaceKeyName($arr){
        $result = array();
        $params = $this->_fetchSqlParams('select_values');

        if (empty($params) || count($params)==0 || count($params) <=0 || $params[0]['name']=="*" || count($arr[0]) != count($params)) {
            return $arr;
        }

        foreach ($arr as $item) {
            $i=0;
            $newRow = array();
            foreach ($item as $key => $value) {
                if (!empty($params[$i]['as'])){
                    $newRow[$params[$i]['as']] = $value;
                }
                $i++;
            }
            array_push($result, $newRow);
        }

        return $result;
    }

    function _makeFromClause() {

        $from = '';
        $i = 0;
        $params = $this->_fetchSqlParams('from');

        if(!empty($params)):

            $count = count($params);

            foreach ($params as $k => $v) {

                $from .= $v['name'];

                // Add as
                if (!empty($v['as'])):

                    $from .= ' '.$v['as'];

                endif;

                // Add commas
                if ($i < $count - 1):

                    $from .= ', ';

                endif;

                $i++;

            }

            $from .= $this->_makeJoinClause();

            return $from;
        else:
            $this->e->debug("No SQL FROM params set.");
            return false;
        endif;

    }

    function _makeJoinClause() {

        $params = $this->_fetchSqlParams('joins');

        if (!empty($params)):

            $join_clause = '';

            foreach ($params as $k => $v) {

                if (!empty($v['as'])):
                    $join_clause .= sprintf(" %s %s %s ON %s = %s", $v['type'],
                        $v['table'],
                        $v['as'],
                        $v['foreign_key'],
                        $v['primary_key']);
                else:
                    $join_clause .= sprintf(" %s %s ON %s = %s", $v['type'],
                        $v['table'],                                                                                                                          $v['foreign_key'],
                        $v['primary_key']);
                endif;



            }

            return $join_clause;

        else:
            return;
        endif;

    }

    function _makeOrderByClause() {

        $sorts = $this->_fetchSqlParams('orderby');
        //print_r($sorts);
        if (!empty($sorts)):

            $order = $this->_fetchSqlParams('order');

            $i = 1;
            $sort_string = '';
            $count = count($sorts);
            foreach ($sorts as $sort) {

                // needed for backwards compatability.
                if (!isset($sort[1])) {
                    $sort[1] = $order;
                }

                $sort_string .= sprintf("%s %s",$this->addQuot($sort[0]), $sort[1]);
                if ($i < $count) {
                    $sort_string .= ', ';
                }

                $i++;
            }

            return sprintf("ORDER BY %s", $sort_string);

        else:
            return;
        endif;


    }

    function addQuot($str){
        $arr = array("date");
        if (in_array($str, $arr)) {
            return '"'.$str.'"';
        }
        return $str;
    }

}

?>