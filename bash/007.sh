#!/bin/bash
TITLE="System Information Report"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Geneeted $CURRENT_TIME by $USER"
cat << _EOF_
<HTML>
     <HEAD>
       <TITLE>$TITLE</TITLE>
         </HEAD>
            <BODY>
              <H1>$TITLE</H1>
	      <P> $TIME_STAMP </P>
                  </BODY>
                    </HTML>

_EOF_

