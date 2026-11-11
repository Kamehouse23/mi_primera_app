class Curso {
  final String nombre;
  final String instructor;
  final int horas;
  final String descripcion;
  final String modalidad;

  const Curso({
    required this.nombre,
    required this.instructor,
    required this.horas,
    required this.descripcion,
    required this.modalidad,
  });
}

const List<Curso> cursosDemo = [
  Curso(
    nombre: 'Programación de software',
    instructor: 'Instructor 1',
    horas: 120,
    descripcion: 'Fundamentos de lógica, algoritmos y programación orientada a objetos.',
    modalidad: 'Presencial',
  ),
  Curso(
    nombre: 'Bases de datos',
    instructor: 'Instructor 2',
    horas: 90,
    descripcion: 'Modelado relacional, SQL y consultas sobre MariaDB y PostgreSQL.',
    modalidad: 'Virtual',
  ),
  Curso(
    nombre: 'Desarrollo móvil',
    instructor: 'Instructor 3',
    horas: 100,
    descripcion: 'Construcción de aplicaciones móviles multiplataforma con Flutter.',
    modalidad: 'virtual',
  ),
];