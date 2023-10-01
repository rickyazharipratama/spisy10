import 'package:spisy10/models/Student.dart';
import 'package:spisy10/utils/StudentDAO.dart';

class StudentRepository{
  final stdDao = StudentDAO();

  Future<List<Student>> getStudents({String? query}) => stdDao.getStudents(query: query);

  Future getStudent(int? id) => stdDao.getStudent(id: id);

  Future createStudent(Student std) => stdDao.createStudent(std);

  Future updateStudent(Student stud, int id) => stdDao.updateStudent(stud, id);

  Future deleteStudent(int id) => stdDao.deleteStudent(id);
}