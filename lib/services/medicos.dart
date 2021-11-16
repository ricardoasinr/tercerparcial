class Medicos {
  int? especialidadId;
  int? seguroId;
  String? nombreDoctor;
  String? especialidad;
  String? direccion;
  int? celular;

  Medicos({
    this.especialidadId,
    this.seguroId,
    this.nombreDoctor,
    this.especialidad,
    this.direccion,
    this.celular,
  });

  Medicos.newMedicos(int id, int segid, String name, String especialidad,
      String direccion, int cel) {
    this.especialidadId = id;
    this.seguroId = segid;
    this.nombreDoctor = name;
    this.especialidad = especialidad;
    this.direccion = direccion;
    this.celular = cel;
  }

  factory Medicos.fromJson(Map<dynamic, dynamic> json) {
    return Medicos(
      especialidadId: json['especialidadId'] as int,
      seguroId: json['seguroId'] as int,
      nombreDoctor: json['nombreDoctor'] as String,
      especialidad: json['especialidad'] as String,
      direccion: json['direccion'] as String,
      celular: json['celular'] as int,
    );
  }
}
