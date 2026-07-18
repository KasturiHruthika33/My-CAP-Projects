namespace demo;

entity Employees{
    key empID : Integer;
    name : String;
    email : String;
    department : String;
    designation : String;
}

entity LeaveRequests {
    key leaveID : Integer;
    leaveType : String;
    startDate : Date;
    endDate : Date;
    reason : String;
    status : String;
    employee : Association to Employees;
}