<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Goal - Tasks</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,700" rel="stylesheet" />
</head>
<body style="font-family: 'Source Sans Pro', sans-serif">

    <cfoutput>
        <cfset Tasks = CreateObject("Component", "cfc.tasks") />
        <cfset list = Tasks.List(#URL.slug#) />
        <cfset goal = #list[1].goal# />
        <div class="bg-no-repeat bg-center bg-cover relative" style="background-image: url('#goal.goal_reminder_image#');">
            <div class="flex flex-row justify-between pb-20" >
                <div class="text-6xl text-white p-4  m-6">Goal: #goal.slug#</div>
                <a href="/" class="m-6 h-12 bg-green-500 hover:bg-green-400 text-white font-bold py-2 px-4 border-b-4 border-green-700 hover:border-green-500 rounded">
                    back home
                </a>
            </div>
            <div class=" mx-10 flex flex-row pb-20">
            <cfloop array="#list#" index="tasks">

                    <div class="max-w-sm rounded overflow-hidden shadow-lg mx-4 bg-white">
                        <div class="text-2xl p-2 ">#tasks.task_name#</div>
                        <div class="px-6 py-4">
                            <div class="text-gray-700 text-lg mb-2"><cfoutput>#tasks.description#</cfoutput></div>
                        </div>
                    </div>

            </cfloop>
            </div>
        </div>


    </cfoutput>

</body>
</html>