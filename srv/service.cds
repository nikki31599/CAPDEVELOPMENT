using { znik as db  } from '../db/datamodel';

service LeaveService {

    entity Employee as projection on db.Employee ;
    entity Leaverequest as projection on db.Leaverequest ;

}