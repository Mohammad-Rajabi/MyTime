// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_sync_flutter_libs/objectbox_sync_flutter_libs.dart';

import '../../../domain/entities/project_entity.dart';
import '../../../domain/entities/task_entity.dart';
import '../../../domain/entities/time_entry_entity.dart';
import '../../../domain/entities/user_workspace_info_entity.dart';
import '../../../domain/entities/workspace_entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 3152355283451467852),
      name: 'ProjectEntity',
      lastPropertyId: const IdUid(5, 4153468732628109055),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6166192638089375353),
            name: 'entityId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8792431005463648690),
            name: 'id',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7903874831938098909),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 9080003686049956791),
            name: 'clientId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4153468732628109055),
            name: 'workspaceId',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 1490688601710207787),
      name: 'TaskEntity',
      lastPropertyId: const IdUid(4, 6598635375945753052),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1049184395278075254),
            name: 'entityId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6186956053617996540),
            name: 'id',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 9003031798697415410),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6598635375945753052),
            name: 'projectId',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 3906204700244283618),
      name: 'TimeEntryEntity',
      lastPropertyId: const IdUid(8, 6037693476235948444),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2708135040513083740),
            name: 'entityId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1486018834400438577),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2599398694953114308),
            name: 'workspaceId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1209061050166598011),
            name: 'projectId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 897690049102687372),
            name: 'taskId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 770370413045512625),
            name: 'startDateTimeMilli',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 5488244085146264750),
            name: 'endDateTime',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6037693476235948444),
            name: 'elapsedInSeconds',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 967084407418697514),
      name: 'UserWorkspaceInfoEntity',
      lastPropertyId: const IdUid(7, 956192557080372766),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4284054857740379438),
            name: 'entityId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2541882053782222277),
            name: 'userId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6386896943752352563),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1401542905491840903),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 2495475461642822346),
            name: 'activeWorkspaceId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7941786321669606288),
            name: 'activeProjectId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 956192557080372766),
            name: 'activeTaskId',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 3526693957896635775),
      name: 'WorkspaceEntity',
      lastPropertyId: const IdUid(4, 7802969059156042682),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2097061289802979013),
            name: 'entityId',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1561583305948230696),
            name: 'id',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 178403862225139148),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7802969059156042682),
            name: 'imageUrl',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(5, 3526693957896635775),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    ProjectEntity: EntityDefinition<ProjectEntity>(
        model: _entities[0],
        toOneRelations: (ProjectEntity object) => [],
        toManyRelations: (ProjectEntity object) => {},
        getId: (ProjectEntity object) => object.entityId,
        setId: (ProjectEntity object, int id) {
          object.entityId = id;
        },
        objectToFB: (ProjectEntity object, fb.Builder fbb) {
          final idOffset =
              object.id == null ? null : fbb.writeString(object.id!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final clientIdOffset = object.clientId == null
              ? null
              : fbb.writeString(object.clientId!);
          final workspaceIdOffset = object.workspaceId == null
              ? null
              : fbb.writeString(object.workspaceId!);
          fbb.startTable(6);
          fbb.addInt64(0, object.entityId ?? 0);
          fbb.addOffset(1, idOffset);
          fbb.addOffset(2, nameOffset);
          fbb.addOffset(3, clientIdOffset);
          fbb.addOffset(4, workspaceIdOffset);
          fbb.finish(fbb.endTable());
          return object.entityId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ProjectEntity(
              id: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              workspaceId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              clientId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10))
            ..entityId =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

          return object;
        }),
    TaskEntity: EntityDefinition<TaskEntity>(
        model: _entities[1],
        toOneRelations: (TaskEntity object) => [],
        toManyRelations: (TaskEntity object) => {},
        getId: (TaskEntity object) => object.entityId,
        setId: (TaskEntity object, int id) {
          object.entityId = id;
        },
        objectToFB: (TaskEntity object, fb.Builder fbb) {
          final idOffset =
              object.id == null ? null : fbb.writeString(object.id!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final projectIdOffset = object.projectId == null
              ? null
              : fbb.writeString(object.projectId!);
          fbb.startTable(5);
          fbb.addInt64(0, object.entityId ?? 0);
          fbb.addOffset(1, idOffset);
          fbb.addOffset(2, nameOffset);
          fbb.addOffset(3, projectIdOffset);
          fbb.finish(fbb.endTable());
          return object.entityId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = TaskEntity(
              id: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              projectId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10))
            ..entityId =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

          return object;
        }),
    TimeEntryEntity: EntityDefinition<TimeEntryEntity>(
        model: _entities[2],
        toOneRelations: (TimeEntryEntity object) => [],
        toManyRelations: (TimeEntryEntity object) => {},
        getId: (TimeEntryEntity object) => object.entityId,
        setId: (TimeEntryEntity object, int id) {
          object.entityId = id;
        },
        objectToFB: (TimeEntryEntity object, fb.Builder fbb) {
          final descriptionOffset = object.description == null
              ? null
              : fbb.writeString(object.description!);
          final workspaceIdOffset = object.workspaceId == null
              ? null
              : fbb.writeString(object.workspaceId!);
          final projectIdOffset = object.projectId == null
              ? null
              : fbb.writeString(object.projectId!);
          final taskIdOffset =
              object.taskId == null ? null : fbb.writeString(object.taskId!);
          final startDateTimeMilliOffset = object.startDateTimeMilli == null
              ? null
              : fbb.writeString(object.startDateTimeMilli!);
          final endDateTimeOffset = object.endDateTime == null
              ? null
              : fbb.writeString(object.endDateTime!);
          fbb.startTable(9);
          fbb.addInt64(0, object.entityId ?? 0);
          fbb.addOffset(1, descriptionOffset);
          fbb.addOffset(2, workspaceIdOffset);
          fbb.addOffset(3, projectIdOffset);
          fbb.addOffset(4, taskIdOffset);
          fbb.addOffset(5, startDateTimeMilliOffset);
          fbb.addOffset(6, endDateTimeOffset);
          fbb.addInt64(7, object.elapsedInSeconds);
          fbb.finish(fbb.endTable());
          return object.entityId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = TimeEntryEntity(
              description: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              workspaceId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              projectId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              taskId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              startDateTimeMilli: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              endDateTime: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 16),
              elapsedInSeconds: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 18))
            ..entityId =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

          return object;
        }),
    UserWorkspaceInfoEntity: EntityDefinition<UserWorkspaceInfoEntity>(
        model: _entities[3],
        toOneRelations: (UserWorkspaceInfoEntity object) => [],
        toManyRelations: (UserWorkspaceInfoEntity object) => {},
        getId: (UserWorkspaceInfoEntity object) => object.entityId,
        setId: (UserWorkspaceInfoEntity object, int id) {
          object.entityId = id;
        },
        objectToFB: (UserWorkspaceInfoEntity object, fb.Builder fbb) {
          final userIdOffset =
              object.userId == null ? null : fbb.writeString(object.userId!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final emailOffset =
              object.email == null ? null : fbb.writeString(object.email!);
          final activeWorkspaceIdOffset = object.activeWorkspaceId == null
              ? null
              : fbb.writeString(object.activeWorkspaceId!);
          final activeProjectIdOffset = object.activeProjectId == null
              ? null
              : fbb.writeString(object.activeProjectId!);
          final activeTaskIdOffset = object.activeTaskId == null
              ? null
              : fbb.writeString(object.activeTaskId!);
          fbb.startTable(8);
          fbb.addInt64(0, object.entityId ?? 0);
          fbb.addOffset(1, userIdOffset);
          fbb.addOffset(2, nameOffset);
          fbb.addOffset(3, emailOffset);
          fbb.addOffset(4, activeWorkspaceIdOffset);
          fbb.addOffset(5, activeProjectIdOffset);
          fbb.addOffset(6, activeTaskIdOffset);
          fbb.finish(fbb.endTable());
          return object.entityId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = UserWorkspaceInfoEntity(
              userId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              email: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              activeWorkspaceId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              activeProjectId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              activeTaskId: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 16))
            ..entityId =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

          return object;
        }),
    WorkspaceEntity: EntityDefinition<WorkspaceEntity>(
        model: _entities[4],
        toOneRelations: (WorkspaceEntity object) => [],
        toManyRelations: (WorkspaceEntity object) => {},
        getId: (WorkspaceEntity object) => object.entityId,
        setId: (WorkspaceEntity object, int id) {
          object.entityId = id;
        },
        objectToFB: (WorkspaceEntity object, fb.Builder fbb) {
          final idOffset =
              object.id == null ? null : fbb.writeString(object.id!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final imageUrlOffset = object.imageUrl == null
              ? null
              : fbb.writeString(object.imageUrl!);
          fbb.startTable(5);
          fbb.addInt64(0, object.entityId ?? 0);
          fbb.addOffset(1, idOffset);
          fbb.addOffset(2, nameOffset);
          fbb.addOffset(3, imageUrlOffset);
          fbb.finish(fbb.endTable());
          return object.entityId ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = WorkspaceEntity(
              id: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              imageUrl: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10))
            ..entityId =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [ProjectEntity] entity fields to define ObjectBox queries.
class ProjectEntity_ {
  /// see [ProjectEntity.entityId]
  static final entityId =
      QueryIntegerProperty<ProjectEntity>(_entities[0].properties[0]);

  /// see [ProjectEntity.id]
  static final id =
      QueryStringProperty<ProjectEntity>(_entities[0].properties[1]);

  /// see [ProjectEntity.name]
  static final name =
      QueryStringProperty<ProjectEntity>(_entities[0].properties[2]);

  /// see [ProjectEntity.clientId]
  static final clientId =
      QueryStringProperty<ProjectEntity>(_entities[0].properties[3]);

  /// see [ProjectEntity.workspaceId]
  static final workspaceId =
      QueryStringProperty<ProjectEntity>(_entities[0].properties[4]);
}

/// [TaskEntity] entity fields to define ObjectBox queries.
class TaskEntity_ {
  /// see [TaskEntity.entityId]
  static final entityId =
      QueryIntegerProperty<TaskEntity>(_entities[1].properties[0]);

  /// see [TaskEntity.id]
  static final id = QueryStringProperty<TaskEntity>(_entities[1].properties[1]);

  /// see [TaskEntity.name]
  static final name =
      QueryStringProperty<TaskEntity>(_entities[1].properties[2]);

  /// see [TaskEntity.projectId]
  static final projectId =
      QueryStringProperty<TaskEntity>(_entities[1].properties[3]);
}

/// [TimeEntryEntity] entity fields to define ObjectBox queries.
class TimeEntryEntity_ {
  /// see [TimeEntryEntity.entityId]
  static final entityId =
      QueryIntegerProperty<TimeEntryEntity>(_entities[2].properties[0]);

  /// see [TimeEntryEntity.description]
  static final description =
      QueryStringProperty<TimeEntryEntity>(_entities[2].properties[1]);

  /// see [TimeEntryEntity.workspaceId]
  static final workspaceId =
      QueryStringProperty<TimeEntryEntity>(_entities[2].properties[2]);

  /// see [TimeEntryEntity.projectId]
  static final projectId =
      QueryStringProperty<TimeEntryEntity>(_entities[2].properties[3]);

  /// see [TimeEntryEntity.taskId]
  static final taskId =
      QueryStringProperty<TimeEntryEntity>(_entities[2].properties[4]);

  /// see [TimeEntryEntity.startDateTimeMilli]
  static final startDateTimeMilli =
      QueryStringProperty<TimeEntryEntity>(_entities[2].properties[5]);

  /// see [TimeEntryEntity.endDateTime]
  static final endDateTime =
      QueryStringProperty<TimeEntryEntity>(_entities[2].properties[6]);

  /// see [TimeEntryEntity.elapsedInSeconds]
  static final elapsedInSeconds =
      QueryIntegerProperty<TimeEntryEntity>(_entities[2].properties[7]);
}

/// [UserWorkspaceInfoEntity] entity fields to define ObjectBox queries.
class UserWorkspaceInfoEntity_ {
  /// see [UserWorkspaceInfoEntity.entityId]
  static final entityId =
      QueryIntegerProperty<UserWorkspaceInfoEntity>(_entities[3].properties[0]);

  /// see [UserWorkspaceInfoEntity.userId]
  static final userId =
      QueryStringProperty<UserWorkspaceInfoEntity>(_entities[3].properties[1]);

  /// see [UserWorkspaceInfoEntity.name]
  static final name =
      QueryStringProperty<UserWorkspaceInfoEntity>(_entities[3].properties[2]);

  /// see [UserWorkspaceInfoEntity.email]
  static final email =
      QueryStringProperty<UserWorkspaceInfoEntity>(_entities[3].properties[3]);

  /// see [UserWorkspaceInfoEntity.activeWorkspaceId]
  static final activeWorkspaceId =
      QueryStringProperty<UserWorkspaceInfoEntity>(_entities[3].properties[4]);

  /// see [UserWorkspaceInfoEntity.activeProjectId]
  static final activeProjectId =
      QueryStringProperty<UserWorkspaceInfoEntity>(_entities[3].properties[5]);

  /// see [UserWorkspaceInfoEntity.activeTaskId]
  static final activeTaskId =
      QueryStringProperty<UserWorkspaceInfoEntity>(_entities[3].properties[6]);
}

/// [WorkspaceEntity] entity fields to define ObjectBox queries.
class WorkspaceEntity_ {
  /// see [WorkspaceEntity.entityId]
  static final entityId =
      QueryIntegerProperty<WorkspaceEntity>(_entities[4].properties[0]);

  /// see [WorkspaceEntity.id]
  static final id =
      QueryStringProperty<WorkspaceEntity>(_entities[4].properties[1]);

  /// see [WorkspaceEntity.name]
  static final name =
      QueryStringProperty<WorkspaceEntity>(_entities[4].properties[2]);

  /// see [WorkspaceEntity.imageUrl]
  static final imageUrl =
      QueryStringProperty<WorkspaceEntity>(_entities[4].properties[3]);
}
