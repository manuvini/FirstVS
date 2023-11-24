trigger AccT on Account (before insert, after insert) {

    if(Trigger.isBefore && Trigger.isInsert){
    AccTri.handleOwnership(Trigger.new);
    }
}