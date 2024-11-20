// Abstract class Employee
abstract class Employee {
  int id;
  String name;

  Employee({required this.id, required this.name});

  void printInfo();

  double calculateSalary();
}

// Interface Workable
abstract class Workable {
  void doWork(); 
}
// Class OfficeWorker kế thừa Employee và thực hiện Workable
class OfficeWorker extends Employee implements Workable {
  String department;
  double baseSalary;

  OfficeWorker({
    required int id,
    required String name,
    required this.department,
    required this.baseSalary,
  }) : super(id: id, name: name);

  @override
  void printInfo() {
    print('Office Worker: ID: $id, Name: $name, Department: $department');
  }

  @override
  double calculateSalary() {
    return baseSalary;
  }

  @override
  void doWork() {
    print('$name đang làm việc văn phòng tại phòng $department.');
  }
}

// Class TechWorker kế thừa Employee và thực hiện Workable
class TechWorker extends Employee implements Workable {
  String field;
  double hourlyRate;
  int hoursWorked;

  TechWorker({
    required int id,
    required String name,
    required this.field,
    required this.hourlyRate,
    required this.hoursWorked,
  }) : super(id: id, name: name);

  @override
  void printInfo() {
    print('Tech Worker: ID: $id, Name: $name, Field: $field');
  }

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }

  @override
  void doWork() {
    print('$name đang làm công việc kỹ thuật trong lĩnh vực $field.');
  }
}

class Company {
  List<Employee> employees = [];

  // Phương thức thêm nhân viên
  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void printAllEmployees() {
    print('Danh sách nhân viên:');
    for (var employee in employees) {
      employee.printInfo();
    }
  }

  // Phương thức tính tổng lương
  double getTotalSalary() {
    double total = 0;
    for (var employee in employees) {
      total += employee.calculateSalary();
    }
    return total;
  }
}
void main() {
  // Tạo công ty
  Company company = Company();

  OfficeWorker officeWorker = OfficeWorker(
    id: 1,
    name: 'Bùi Hoàng Phong',
    department: 'Trưởng phòng',
    baseSalary: 700,
  );

  // Thêm nhân viên kỹ thuật
  TechWorker techWorker = TechWorker(
    id: 2,
    name: 'Tạ Quang Hiếu',
    field: 'Phó phòng',
    hourlyRate: 20,
    hoursWorked: 160,
  );

  company.addEmployee(officeWorker);
  company.addEmployee(techWorker);

  company.printAllEmployees();

  print('Tổng lương công ty: ${company.getTotalSalary()}');

  officeWorker.doWork();
  techWorker.doWork();
}
