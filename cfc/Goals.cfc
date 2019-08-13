component {

    public Any function ListGoals()
    {
        cfhttp(url="https://api.r10dev.com/goals", result="results");
        writeLog(results.filecontent);
        return deserializeJSON(results.filecontent);
    }
    //normally this should probably return just a struct
    //it is wrapped in [] so CF is seeing an array.
    public Any function GetOne(string slug) {
        cfhttp(url="https://api.r10dev.com/goals?slug_eq=" & slug, result="results");
        writeLog(results.filecontent);
        return deserializeJSON(results.filecontent);
    }

    //this will be a PUT
    public Any function AddOne(struct goal){


    }
    //this will be a PUT
    public Any function UpdateOne(struct goal) {

    }



}
