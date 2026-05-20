import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$CharacterFragment {
  Fragment$CharacterFragment({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    required this.episode,
    this.created,
    this.$__typename = 'Character',
  });

  factory Fragment$CharacterFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$status = json['status'];
    final l$species = json['species'];
    final l$type = json['type'];
    final l$gender = json['gender'];
    final l$origin = json['origin'];
    final l$location = json['location'];
    final l$image = json['image'];
    final l$episode = json['episode'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterFragment(
      id: (l$id as String?),
      name: (l$name as String?),
      status: (l$status as String?),
      species: (l$species as String?),
      type: (l$type as String?),
      gender: (l$gender as String?),
      origin: l$origin == null
          ? null
          : Fragment$CharacterFragment$origin.fromJson(
              (l$origin as Map<String, dynamic>),
            ),
      location: l$location == null
          ? null
          : Fragment$CharacterFragment$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      image: (l$image as String?),
      episode: (l$episode as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Fragment$CharacterFragment$episode.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      created: (l$created as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? status;

  final String? species;

  final String? type;

  final String? gender;

  final Fragment$CharacterFragment$origin? origin;

  final Fragment$CharacterFragment$location? location;

  final String? image;

  final List<Fragment$CharacterFragment$episode?> episode;

  final String? created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$species = species;
    _resultData['species'] = l$species;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$origin = origin;
    _resultData['origin'] = l$origin?.toJson();
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$image = image;
    _resultData['image'] = l$image;
    final l$episode = episode;
    _resultData['episode'] = l$episode.map((e) => e?.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$status = status;
    final l$species = species;
    final l$type = type;
    final l$gender = gender;
    final l$origin = origin;
    final l$location = location;
    final l$image = image;
    final l$episode = episode;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$status,
      l$species,
      l$type,
      l$gender,
      l$origin,
      l$location,
      l$image,
      Object.hashAll(l$episode.map((v) => v)),
      l$created,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CharacterFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$origin = origin;
    final lOther$origin = other.origin;
    if (l$origin != lOther$origin) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode.length != lOther$episode.length) {
      return false;
    }
    for (int i = 0; i < l$episode.length; i++) {
      final l$episode$entry = l$episode[i];
      final lOther$episode$entry = lOther$episode[i];
      if (l$episode$entry != lOther$episode$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterFragment
    on Fragment$CharacterFragment {
  CopyWith$Fragment$CharacterFragment<Fragment$CharacterFragment>
  get copyWith => CopyWith$Fragment$CharacterFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$CharacterFragment<TRes> {
  factory CopyWith$Fragment$CharacterFragment(
    Fragment$CharacterFragment instance,
    TRes Function(Fragment$CharacterFragment) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment;

  factory CopyWith$Fragment$CharacterFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment;

  TRes call({
    String? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    Fragment$CharacterFragment$origin? origin,
    Fragment$CharacterFragment$location? location,
    String? image,
    List<Fragment$CharacterFragment$episode?>? episode,
    String? created,
    String? $__typename,
  });
  CopyWith$Fragment$CharacterFragment$origin<TRes> get origin;
  CopyWith$Fragment$CharacterFragment$location<TRes> get location;
  TRes episode(
    Iterable<Fragment$CharacterFragment$episode?> Function(
      Iterable<
        CopyWith$Fragment$CharacterFragment$episode<
          Fragment$CharacterFragment$episode
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$CharacterFragment<TRes>
    implements CopyWith$Fragment$CharacterFragment<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment(this._instance, this._then);

  final Fragment$CharacterFragment _instance;

  final TRes Function(Fragment$CharacterFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
    Object? species = _undefined,
    Object? type = _undefined,
    Object? gender = _undefined,
    Object? origin = _undefined,
    Object? location = _undefined,
    Object? image = _undefined,
    Object? episode = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CharacterFragment(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      status: status == _undefined ? _instance.status : (status as String?),
      species: species == _undefined ? _instance.species : (species as String?),
      type: type == _undefined ? _instance.type : (type as String?),
      gender: gender == _undefined ? _instance.gender : (gender as String?),
      origin: origin == _undefined
          ? _instance.origin
          : (origin as Fragment$CharacterFragment$origin?),
      location: location == _undefined
          ? _instance.location
          : (location as Fragment$CharacterFragment$location?),
      image: image == _undefined ? _instance.image : (image as String?),
      episode: episode == _undefined || episode == null
          ? _instance.episode
          : (episode as List<Fragment$CharacterFragment$episode?>),
      created: created == _undefined ? _instance.created : (created as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CharacterFragment$origin<TRes> get origin {
    final local$origin = _instance.origin;
    return local$origin == null
        ? CopyWith$Fragment$CharacterFragment$origin.stub(_then(_instance))
        : CopyWith$Fragment$CharacterFragment$origin(
            local$origin,
            (e) => call(origin: e),
          );
  }

  CopyWith$Fragment$CharacterFragment$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$CharacterFragment$location.stub(_then(_instance))
        : CopyWith$Fragment$CharacterFragment$location(
            local$location,
            (e) => call(location: e),
          );
  }

  TRes episode(
    Iterable<Fragment$CharacterFragment$episode?> Function(
      Iterable<
        CopyWith$Fragment$CharacterFragment$episode<
          Fragment$CharacterFragment$episode
        >?
      >,
    )
    _fn,
  ) => call(
    episode: _fn(
      _instance.episode.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$CharacterFragment$episode(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$CharacterFragment<TRes>
    implements CopyWith$Fragment$CharacterFragment<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    Fragment$CharacterFragment$origin? origin,
    Fragment$CharacterFragment$location? location,
    String? image,
    List<Fragment$CharacterFragment$episode?>? episode,
    String? created,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CharacterFragment$origin<TRes> get origin =>
      CopyWith$Fragment$CharacterFragment$origin.stub(_res);

  CopyWith$Fragment$CharacterFragment$location<TRes> get location =>
      CopyWith$Fragment$CharacterFragment$location.stub(_res);

  episode(_fn) => _res;
}

const fragmentDefinitionCharacterFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CharacterFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Character'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'species'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'gender'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'origin'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'location'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'image'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'episode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentCharacterFragment = DocumentNode(
  definitions: [fragmentDefinitionCharacterFragment],
);

extension ClientExtension$Fragment$CharacterFragment on graphql.GraphQLClient {
  void writeFragment$CharacterFragment({
    required Fragment$CharacterFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'CharacterFragment',
        document: documentNodeFragmentCharacterFragment,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Fragment$CharacterFragment? readFragment$CharacterFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CharacterFragment',
          document: documentNodeFragmentCharacterFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CharacterFragment.fromJson(result);
  }
}

class Fragment$CharacterFragment$origin {
  Fragment$CharacterFragment$origin();

  factory Fragment$CharacterFragment$origin.fromJson(
    Map<String, dynamic> json,
  ) {
    return Fragment$CharacterFragment$origin();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CharacterFragment$origin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterFragment$origin
    on Fragment$CharacterFragment$origin {
  CopyWith$Fragment$CharacterFragment$origin<Fragment$CharacterFragment$origin>
  get copyWith => CopyWith$Fragment$CharacterFragment$origin(this, (i) => i);
}

abstract class CopyWith$Fragment$CharacterFragment$origin<TRes> {
  factory CopyWith$Fragment$CharacterFragment$origin(
    Fragment$CharacterFragment$origin instance,
    TRes Function(Fragment$CharacterFragment$origin) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment$origin;

  factory CopyWith$Fragment$CharacterFragment$origin.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment$origin;

  TRes call();
}

class _CopyWithImpl$Fragment$CharacterFragment$origin<TRes>
    implements CopyWith$Fragment$CharacterFragment$origin<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment$origin(this._instance, this._then);

  final Fragment$CharacterFragment$origin _instance;

  final TRes Function(Fragment$CharacterFragment$origin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Fragment$CharacterFragment$origin());
}

class _CopyWithStubImpl$Fragment$CharacterFragment$origin<TRes>
    implements CopyWith$Fragment$CharacterFragment$origin<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment$origin(this._res);

  TRes _res;

  call() => _res;
}

class Fragment$CharacterFragment$location {
  Fragment$CharacterFragment$location();

  factory Fragment$CharacterFragment$location.fromJson(
    Map<String, dynamic> json,
  ) {
    return Fragment$CharacterFragment$location();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CharacterFragment$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterFragment$location
    on Fragment$CharacterFragment$location {
  CopyWith$Fragment$CharacterFragment$location<
    Fragment$CharacterFragment$location
  >
  get copyWith => CopyWith$Fragment$CharacterFragment$location(this, (i) => i);
}

abstract class CopyWith$Fragment$CharacterFragment$location<TRes> {
  factory CopyWith$Fragment$CharacterFragment$location(
    Fragment$CharacterFragment$location instance,
    TRes Function(Fragment$CharacterFragment$location) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment$location;

  factory CopyWith$Fragment$CharacterFragment$location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment$location;

  TRes call();
}

class _CopyWithImpl$Fragment$CharacterFragment$location<TRes>
    implements CopyWith$Fragment$CharacterFragment$location<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment$location(this._instance, this._then);

  final Fragment$CharacterFragment$location _instance;

  final TRes Function(Fragment$CharacterFragment$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Fragment$CharacterFragment$location());
}

class _CopyWithStubImpl$Fragment$CharacterFragment$location<TRes>
    implements CopyWith$Fragment$CharacterFragment$location<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment$location(this._res);

  TRes _res;

  call() => _res;
}

class Fragment$CharacterFragment$episode {
  Fragment$CharacterFragment$episode();

  factory Fragment$CharacterFragment$episode.fromJson(
    Map<String, dynamic> json,
  ) {
    return Fragment$CharacterFragment$episode();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CharacterFragment$episode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterFragment$episode
    on Fragment$CharacterFragment$episode {
  CopyWith$Fragment$CharacterFragment$episode<
    Fragment$CharacterFragment$episode
  >
  get copyWith => CopyWith$Fragment$CharacterFragment$episode(this, (i) => i);
}

abstract class CopyWith$Fragment$CharacterFragment$episode<TRes> {
  factory CopyWith$Fragment$CharacterFragment$episode(
    Fragment$CharacterFragment$episode instance,
    TRes Function(Fragment$CharacterFragment$episode) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment$episode;

  factory CopyWith$Fragment$CharacterFragment$episode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment$episode;

  TRes call();
}

class _CopyWithImpl$Fragment$CharacterFragment$episode<TRes>
    implements CopyWith$Fragment$CharacterFragment$episode<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment$episode(this._instance, this._then);

  final Fragment$CharacterFragment$episode _instance;

  final TRes Function(Fragment$CharacterFragment$episode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Fragment$CharacterFragment$episode());
}

class _CopyWithStubImpl$Fragment$CharacterFragment$episode<TRes>
    implements CopyWith$Fragment$CharacterFragment$episode<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment$episode(this._res);

  TRes _res;

  call() => _res;
}

class Fragment$InfoFragment {
  Fragment$InfoFragment({
    this.count,
    this.pages,
    this.next,
    this.prev,
    this.$__typename = 'Info',
  });

  factory Fragment$InfoFragment.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$pages = json['pages'];
    final l$next = json['next'];
    final l$prev = json['prev'];
    final l$$__typename = json['__typename'];
    return Fragment$InfoFragment(
      count: (l$count as int?),
      pages: (l$pages as int?),
      next: (l$next as int?),
      prev: (l$prev as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final int? pages;

  final int? next;

  final int? prev;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$pages = pages;
    _resultData['pages'] = l$pages;
    final l$next = next;
    _resultData['next'] = l$next;
    final l$prev = prev;
    _resultData['prev'] = l$prev;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$pages = pages;
    final l$next = next;
    final l$prev = prev;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$pages, l$next, l$prev, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$InfoFragment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$pages = pages;
    final lOther$pages = other.pages;
    if (l$pages != lOther$pages) {
      return false;
    }
    final l$next = next;
    final lOther$next = other.next;
    if (l$next != lOther$next) {
      return false;
    }
    final l$prev = prev;
    final lOther$prev = other.prev;
    if (l$prev != lOther$prev) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$InfoFragment on Fragment$InfoFragment {
  CopyWith$Fragment$InfoFragment<Fragment$InfoFragment> get copyWith =>
      CopyWith$Fragment$InfoFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$InfoFragment<TRes> {
  factory CopyWith$Fragment$InfoFragment(
    Fragment$InfoFragment instance,
    TRes Function(Fragment$InfoFragment) then,
  ) = _CopyWithImpl$Fragment$InfoFragment;

  factory CopyWith$Fragment$InfoFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$InfoFragment;

  TRes call({
    int? count,
    int? pages,
    int? next,
    int? prev,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$InfoFragment<TRes>
    implements CopyWith$Fragment$InfoFragment<TRes> {
  _CopyWithImpl$Fragment$InfoFragment(this._instance, this._then);

  final Fragment$InfoFragment _instance;

  final TRes Function(Fragment$InfoFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? pages = _undefined,
    Object? next = _undefined,
    Object? prev = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$InfoFragment(
      count: count == _undefined ? _instance.count : (count as int?),
      pages: pages == _undefined ? _instance.pages : (pages as int?),
      next: next == _undefined ? _instance.next : (next as int?),
      prev: prev == _undefined ? _instance.prev : (prev as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$InfoFragment<TRes>
    implements CopyWith$Fragment$InfoFragment<TRes> {
  _CopyWithStubImpl$Fragment$InfoFragment(this._res);

  TRes _res;

  call({int? count, int? pages, int? next, int? prev, String? $__typename}) =>
      _res;
}

const fragmentDefinitionInfoFragment = FragmentDefinitionNode(
  name: NameNode(value: 'InfoFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Info'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'count'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'pages'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'next'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'prev'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentInfoFragment = DocumentNode(
  definitions: [fragmentDefinitionInfoFragment],
);

extension ClientExtension$Fragment$InfoFragment on graphql.GraphQLClient {
  void writeFragment$InfoFragment({
    required Fragment$InfoFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'InfoFragment',
        document: documentNodeFragmentInfoFragment,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Fragment$InfoFragment? readFragment$InfoFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'InfoFragment',
          document: documentNodeFragmentInfoFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$InfoFragment.fromJson(result);
  }
}

class Fragment$LocationFragment {
  Fragment$LocationFragment({
    this.id,
    this.name,
    this.type,
    this.dimension,
    required this.residents,
    this.created,
    this.$__typename = 'Location',
  });

  factory Fragment$LocationFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$dimension = json['dimension'];
    final l$residents = json['residents'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$LocationFragment(
      id: (l$id as String?),
      name: (l$name as String?),
      type: (l$type as String?),
      dimension: (l$dimension as String?),
      residents: (l$residents as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Fragment$LocationFragment$residents.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      created: (l$created as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? type;

  final String? dimension;

  final List<Fragment$LocationFragment$residents?> residents;

  final String? created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$dimension = dimension;
    _resultData['dimension'] = l$dimension;
    final l$residents = residents;
    _resultData['residents'] = l$residents.map((e) => e?.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$dimension = dimension;
    final l$residents = residents;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$type,
      l$dimension,
      Object.hashAll(l$residents.map((v) => v)),
      l$created,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$LocationFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$dimension = dimension;
    final lOther$dimension = other.dimension;
    if (l$dimension != lOther$dimension) {
      return false;
    }
    final l$residents = residents;
    final lOther$residents = other.residents;
    if (l$residents.length != lOther$residents.length) {
      return false;
    }
    for (int i = 0; i < l$residents.length; i++) {
      final l$residents$entry = l$residents[i];
      final lOther$residents$entry = lOther$residents[i];
      if (l$residents$entry != lOther$residents$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$LocationFragment
    on Fragment$LocationFragment {
  CopyWith$Fragment$LocationFragment<Fragment$LocationFragment> get copyWith =>
      CopyWith$Fragment$LocationFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$LocationFragment<TRes> {
  factory CopyWith$Fragment$LocationFragment(
    Fragment$LocationFragment instance,
    TRes Function(Fragment$LocationFragment) then,
  ) = _CopyWithImpl$Fragment$LocationFragment;

  factory CopyWith$Fragment$LocationFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LocationFragment;

  TRes call({
    String? id,
    String? name,
    String? type,
    String? dimension,
    List<Fragment$LocationFragment$residents?>? residents,
    String? created,
    String? $__typename,
  });
  TRes residents(
    Iterable<Fragment$LocationFragment$residents?> Function(
      Iterable<
        CopyWith$Fragment$LocationFragment$residents<
          Fragment$LocationFragment$residents
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$LocationFragment<TRes>
    implements CopyWith$Fragment$LocationFragment<TRes> {
  _CopyWithImpl$Fragment$LocationFragment(this._instance, this._then);

  final Fragment$LocationFragment _instance;

  final TRes Function(Fragment$LocationFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? dimension = _undefined,
    Object? residents = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$LocationFragment(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      type: type == _undefined ? _instance.type : (type as String?),
      dimension: dimension == _undefined
          ? _instance.dimension
          : (dimension as String?),
      residents: residents == _undefined || residents == null
          ? _instance.residents
          : (residents as List<Fragment$LocationFragment$residents?>),
      created: created == _undefined ? _instance.created : (created as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes residents(
    Iterable<Fragment$LocationFragment$residents?> Function(
      Iterable<
        CopyWith$Fragment$LocationFragment$residents<
          Fragment$LocationFragment$residents
        >?
      >,
    )
    _fn,
  ) => call(
    residents: _fn(
      _instance.residents.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$LocationFragment$residents(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$LocationFragment<TRes>
    implements CopyWith$Fragment$LocationFragment<TRes> {
  _CopyWithStubImpl$Fragment$LocationFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? type,
    String? dimension,
    List<Fragment$LocationFragment$residents?>? residents,
    String? created,
    String? $__typename,
  }) => _res;

  residents(_fn) => _res;
}

const fragmentDefinitionLocationFragment = FragmentDefinitionNode(
  name: NameNode(value: 'LocationFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Location'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'dimension'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'residents'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentLocationFragment = DocumentNode(
  definitions: [fragmentDefinitionLocationFragment],
);

extension ClientExtension$Fragment$LocationFragment on graphql.GraphQLClient {
  void writeFragment$LocationFragment({
    required Fragment$LocationFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'LocationFragment',
        document: documentNodeFragmentLocationFragment,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Fragment$LocationFragment? readFragment$LocationFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LocationFragment',
          document: documentNodeFragmentLocationFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LocationFragment.fromJson(result);
  }
}

class Fragment$LocationFragment$residents {
  Fragment$LocationFragment$residents();

  factory Fragment$LocationFragment$residents.fromJson(
    Map<String, dynamic> json,
  ) {
    return Fragment$LocationFragment$residents();
  }

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    return _resultData;
  }

  @override
  int get hashCode {
    return Object.hashAll([]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$LocationFragment$residents ||
        runtimeType != other.runtimeType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$LocationFragment$residents
    on Fragment$LocationFragment$residents {
  CopyWith$Fragment$LocationFragment$residents<
    Fragment$LocationFragment$residents
  >
  get copyWith => CopyWith$Fragment$LocationFragment$residents(this, (i) => i);
}

abstract class CopyWith$Fragment$LocationFragment$residents<TRes> {
  factory CopyWith$Fragment$LocationFragment$residents(
    Fragment$LocationFragment$residents instance,
    TRes Function(Fragment$LocationFragment$residents) then,
  ) = _CopyWithImpl$Fragment$LocationFragment$residents;

  factory CopyWith$Fragment$LocationFragment$residents.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LocationFragment$residents;

  TRes call();
}

class _CopyWithImpl$Fragment$LocationFragment$residents<TRes>
    implements CopyWith$Fragment$LocationFragment$residents<TRes> {
  _CopyWithImpl$Fragment$LocationFragment$residents(this._instance, this._then);

  final Fragment$LocationFragment$residents _instance;

  final TRes Function(Fragment$LocationFragment$residents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call() => _then(Fragment$LocationFragment$residents());
}

class _CopyWithStubImpl$Fragment$LocationFragment$residents<TRes>
    implements CopyWith$Fragment$LocationFragment$residents<TRes> {
  _CopyWithStubImpl$Fragment$LocationFragment$residents(this._res);

  TRes _res;

  call() => _res;
}
