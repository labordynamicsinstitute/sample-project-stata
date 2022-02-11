/* main.do */
/* Author: Lars Vilhuber */
/* NOTE: this is a VERY simple example file
         it does NOT fully comply with best practices
*/

global BASEDIR "" /* <--- adjust as necessary */
// global BASEDIR "/my/path/to/repo"  

global DATADIR "${BASEDIR}/data"
global CODEDIR "${BASEDIR}/code"

/* we list the ado files - by default, it should list 'estout' 
   that we installed via the setup.do during the build phase
   of the Docker image */

ado

include "${CODEDIR}/config.do"

do "${CODEDIR}/01_dataclean.do"
do "${CODEDIR}/02_table1.do"



