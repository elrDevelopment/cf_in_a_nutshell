
<!DOCTYPE html>
<cfset myMessage = "Hello Nurse!"/>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <link href="assets/css/tailwindcss.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <div class="text-6xl mx-6"><cfoutput>#myMessage#</cfoutput></div>
  <h2>
    <cfscript>

      if(myMessage contains "Nurse" ) {
        writeoutput("she is a nurse");
      }

    </cfscript>
  <cfset myList = 'item1, item2, item3, item4'/>
  <cfloop list="#myList#" index="item" delimiters=",">
      <li><cfoutput>#item#</cfoutput></li>
  </cfloop>
  </h2>
</body>
</html>