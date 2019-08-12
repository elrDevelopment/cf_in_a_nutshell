<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
        <cfset Goals = CreateObject("Component", "cfc.goals") />
        <cfset list= Goals.GetOne(#URL.slug#) />
        <div class=" mx-10 flex flex-row">
        <cfoutput>
            <cfloop array="#list#" index="goals">
                <a href="/goals?slug=#goals.slug#">
            <div class="max-w-sm rounded overflow-hidden shadow-lg m-4">
                    <img class="w-full" src="#goals.goal_reminder_image#" alt="#goals.slug#">
            <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2"><cfoutput>#goals.slug#</cfoutput></div>
                <p class="text-gray-700 text-base">

                </p>
            </div>

            </div>
            </a>
            </div>
            </cfloop>
        </cfoutput>
        </div>
</body>
</html>