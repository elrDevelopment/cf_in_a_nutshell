component {
    public Any function List(string goal_slug)
    {
        cfhttp(url="https://api.r10dev.com/tasks?goal.slug_eq="& goal_slug, result="results");

        return deserializeJSON(results.filecontent);
    }
//normally this should probably return just a struct
//it is wrapped in [] so CF is seeing an array.
    public Any function GetOne(string taskId) {
        cfhttp(url="https://api.r10dev.com/task?id_eq=" & taskId, result="results");
        return deserializeJSON(results.filecontent);
    }

//this will be a PUT
    public Any function AddOne(struct goal){


    }
//this will be a PUT
    public Any function UpdateOne(struct goal) {

    }
}
