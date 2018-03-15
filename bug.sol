pragma solidity ^0.4.14;

contract Payroll {
    struct Employee {
        address id;
        uint salary;
        uint lastPayday;
    } 
    
    address owner;
    Employee[] employees;
    
    function Payroll() {
        owner = msg.sender;
    }
    

    function _findEmployee(address e) private returns (Employee, uint) {
    }
    
    function _findEmployee2(address e) private returns (Employee storage, uint) {
    }
    
    
    function addEmployee (address e, uint s) returns (address, uint){
        var (employee, index) = _findEmployee(e);
        return (employee.id, employee.salary);
        //return 0x0
    }

    function addEmployee2 (address e, uint s) returns (address, uint){
        var (employee, index) = _findEmployee2(e);
        return (employee.id, employee.salary);
        //return msg.sender
    }
    // ...
    
}
