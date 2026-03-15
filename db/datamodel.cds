namespace znik;

using { cuid,managed } from '@sap/cds/common';

entity Employee : cuid, managed {
    Name : String(30);
    number : String(10);
    Managermail : String(50);
    leave : Association to Leaverequest;
}

entity Leaverequest : cuid , managed {
    startdate : Date;
    enddate : Date;
    Reason : String(50);
    employee : Association to one Employee on employee.leave = $self;
}

entity dummy : cuid {
   Name : String(10);
}
