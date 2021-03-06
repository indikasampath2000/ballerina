
public struct person01 {
    int age;
    string name;
    string address;
}

public struct employee01 {
    int age;
    string name;
    string zipcode = "95134";
}

// Field name mismatch
function testEqOfStructsInSamePackage01() returns (string) {
    employee01 e = {age:14, name:"rat"};
    person01 p = (person01) e;
    return p.name;
}

public struct person02 {
    int age;
    string name;
    string address;
}

public struct employee02 {
    int age;
    string name;
    int address;
}

// Type name mismatch
function testEqOfStructsInSamePackage02() returns (string) {
    employee02 e = {age:14, name:"rat"};
    person02 p = (person02) e;
    return p.name;
}

public struct person03 {
    int age;
    string name;
    string address;
}

public struct employee03 {
    int age;
    string name;
}

// Field count mismatch
function testEqOfStructsInSamePackage03() returns (string) {
    employee03 e = {age:14, name:"rat"};
    person03 p = (person03) e;
    return p.name;
}

public struct person04 {
    int age;
    string name;
    string address;
}

public struct employee04 {
    int age;
    string name;
    string address;
    private:
        int id;
        string ss;
}

// Private fields in RHS struct name mismatch
function testEqOfStructsInSamePackage04() returns (string) {
    employee04 e = {age:14, name:"rat"};
    person04 p = (person04) e;
    return p.name;
}


public struct person05 {
    int age;
    string name;
    private:
        string address;
        string id;
}

public struct employee05 {
    int age;
    string name;
    string address;
    string id;
    string ssn;
}

// Private fields in LHS struct name mismatch
function testEqOfStructsInSamePackage05() returns (string) {
    employee05 e = {age:14, name:"rat"};
    person05 p = (person05) e;
    return p.name;
}

struct person06 {
    int age;
    string name;
    int address;
    string id;
}

struct employee06 {
    int age;
    string name;
    string address;
    string id;
    string ssn;
}

// Private structs type mismatch
function testEqOfStructsInSamePackage06() returns (string) {
    employee06 e = {age:14, name:"rat"};
    person06 p = (person06) e;
    return p.name;
}


public struct person07 {
    int age;
    string name;
    string address;
    string zipcode = "95134";
    string ssn;
}

public function <person07 p> getAge() returns (int) {
    return p.age;
}

public function <person07 p> getName() returns (string) {
    return p.name;
}

public function <person07 p> setSSN(string ssn) {
    p.ssn = ssn;
}

public struct employee07 {
    int age;
    string name;
    string address;
    string zipcode = "95134";
    string ssn;
}

public function <employee07 e> getName() returns (string) {
    return e.name;
}

public function <employee07 e> getAge() returns (int) {
    return e.age;
}

// Public structs attached function count mismatch
function testEqOfStructsInSamePackage07() returns (string) {
    employee07 e = {age:14, name:"rat"};
    person07 p = (person07) e;
    return p.name;
}


public struct person08 {
    int age;
    string name;
    string address;
    string zipcode = "95134";
    string ssn;
}

public function <person08 p> getAge() returns (int) {
    return p.age;
}

public function <person08 p> getName() returns (string) {
    return p.name;
}

public function <person08 p> setSSN(string ssn) {
    p.ssn = ssn;
}

public struct employee08 {
    int age;
    string name;
    string address;
    string zipcode = "95134";
    string ssn;
}

public function <employee08 e> getName() returns (string) {
    return e.name;
}

function <employee08 e> getAge() returns (int) {
    return e.age;
}

public function <employee08 e> getSSN() returns (string) {
    return e.ssn;
}

// Public structs attached function visibility mismatch
function testEqOfStructsInSamePackage08() returns (string) {
    employee08 e = {age:14, name:"rat"};
    person08 p = (person08) e;
    return p.name;
}


public struct person09 {
    int age;
    string name;
    string address;
    string zipcode = "95134";
    string ssn;
}

public function <person09 p> getAge() returns (int) {
    return p.age;
}

public function <person09 p> getName() returns (string) {
    return p.name;
}

public function <person09 p> setSSN(string ssn) {
    p.ssn = ssn;
}

public struct employee09 {
    int age;
    string name;
    string address;
    string zipcode = "95134";
    string ssn;
}

public function <employee09 e> getName() returns (string) {
    return e.name;
}

public function <employee09 e> getAge(int i) returns (int) {
    return e.age;
}

public function <employee09 e> getSSN() returns (string) {
    return e.ssn;
}

// Public structs attached function signature mismatch
function testEqOfStructsInSamePackage09() returns (string) {
    employee09 e = {age:14, name:"rat"};
    person09 p = (person09) e;
    return p.name;
}
