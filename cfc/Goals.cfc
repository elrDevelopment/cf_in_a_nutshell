component {

    public Any function ListGoals()
    {
        cfhttp(url="https://api.r10dev.com/goals", result="results");
        writeLog(results.filecontent);
        return deserializeJSON(results.filecontent);
    }

    public Any function GetOne(string slug) {
        cfhttp(url="https://api.r10dev.com/goals?slug_eq=" & slug, result="results");
        writeLog(results.filecontent);
        return deserializeJSON(results.filecontent);
    }

    public Any function AddOne(struct goal){


    }
    public Any function UpdateOne(struct goal) {

    }



}
