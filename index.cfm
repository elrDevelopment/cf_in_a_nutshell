
<!DOCTYPE html>
<cfset titleMessage = "Life Goals!!"/>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <link href="assets/css/tailwindcss.min.css" rel="stylesheet" type="text/css" />
</head>
<body>

        <div class="flex flex-row justify-between">
            <div class="text-6xl m-6"><cfoutput>#titleMessage#</cfoutput></div>
            <a href="/" class="m-6 h-12 bg-green-500 hover:bg-green-400 text-white font-bold py-2 px-4 border-b-4 border-green-700 hover:border-green-500 rounded">
                back home
            </a>
        </div>

        <cfset Goals = CreateObject("Component", "cfc.goals") />
        <cfset list= Goals.ListGoals() />
        <div class="mx-4 w-2/3 flex flex-row">
        <cfoutput>
            <cfloop array="#list#" index="goals">
                <a href="/goals/tasks.cfm?slug=#goals.slug#">
                    <div class="max-w-sm  rounded overflow-hidden shadow-lg mx-4">
                        <img class="w-full" src="#goals.goal_reminder_image#" alt="#goals.slug#">
                        <div class="px-6 py-4">
                            <div class="font-bold text-xl mb-2"><cfoutput>#goals.slug#</cfoutput></div>

                        </div>

                        </div>

                </a>

            </cfloop>
            </div>
        </cfoutput>



</body>
</html>