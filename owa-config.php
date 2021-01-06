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

/**
 * OWA Configuration
 *
 * @author      Peter Adams <peter@openwebanalytics.com>
 * @copyright   Copyright &copy; 2006 Peter Adams <peter@openwebanalytics.com>
 * @license     http://www.gnu.org/copyleft/gpl.html GPL v2.0
 * @category    owa
 * @package     owa
 * @version        $Revision$
 * @since        owa 1.0.0
 */

/**
 * DATABASE CONFIGURATION
 *
 * Connection info for databases that will be used by OWA.
 *
 */

define('OWA_DB_TYPE', 'oracle'); // options: mysql
define('OWA_DB_NAME', 'XEPDB1'); // name of the database
define('OWA_DB_HOST', 'localhost'); // host name of the server housing the database
define('OWA_DB_USER', 'iszdba'); // database user
define('OWA_DB_PORT', '1521'); // port of database
define('OWA_DB_PASSWORD', 'iszdba'); // database user's password

/**
 * AUTHENTICATION KEYS AND SALTS
 *
 * Change these to different unique phrases.
 */
//define('OWA_NONCE_KEY', '?65|9Z(Z]X]+CET,mJD1,Ut;a^K;NkU{Y.a8xCh4]siFJ_L6S27C?&B;o3Jp{sfu');
//define('OWA_NONCE_SALT', 'f5^#p$_0)noF |Zb7M5*mkM*c@1!BlqGVB81{)+0 QR,UE7bMfGT[^@5E/fq+yBL');
//define('OWA_AUTH_KEY', 'UKaebCuhN6}*nHNK,wJ:RPQF%}%!&STK(Y`LJ|4R,f)!**6{2@8dPLc?45Izd#w]');
//define('OWA_AUTH_SALT', ',*s}rwICl+#_*hX,;dN{t9o#l+9-;+pJI(`bbEFl<_kITfDgF0rJa]D.GWiAuq}v');

/**
 * PUBLIC URL
 *
 * Define the URL of OWA's base directory e.g. http://www.domain.com/path/to/owa/
 * Don't forget the slash at the end.
 */

define('OWA_PUBLIC_URL', 'http://localhost/owa/');

/**
 * OWA ERROR HANDLER
 *
 * Overide OWA error handler. This should be done through the admin GUI, but
 * can be handy during install or development.
 *
 * Choices are:
 *
 * 'production' - will log only critical errors to a log file.
 * 'development' - logs al sorts of useful debug to log file.
 */

define('OWA_ERROR_HANDLER', 'development');

/**
 * LOG PHP ERRORS
 *
 * Log all php errors to OWA's error log file. Only do this to debug.
 */

//define('OWA_LOG_PHP_ERRORS', true);

/**
 * OBJECT CACHING
 *
 * Override setting to cache objects. Caching will increase performance.
 */

//define('OWA_CACHE_OBJECTS', true);

/**
 * CONFIGURATION ID
 *
 * Override to load an alternative user configuration
 */

//define('OWA_CONFIGURATION_ID', '1');


?>