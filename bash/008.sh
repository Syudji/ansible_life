#!/bin/bash
TITLE="System Information Report"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Geneeted $CURRENT_TIME by $USER"
report_uptime () {
	return
}
report_disk_space () {
	return
}
report_home_space () {
	return
}
cat << _EOF_
<HTML>
     <HEAD>
       <TITLE>$TITLE</TITLE>
         </HEAD>
            <BODY>
              <H1>$TITLE</H1>
	      <P> $TIME_STAMP </P>
                  $(report_uptime)
                  $(report_disk_space)
                  $(report_home_space)
                  </BODY>
                    </HTML>

_EOF_

