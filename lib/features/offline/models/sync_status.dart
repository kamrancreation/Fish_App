enum SyncStatus {
  pending,
  syncing,
  completed,
  failed,
  conflicted;

  bool get isPending => this == SyncStatus.pending;
  bool get isSyncing => this == SyncStatus.syncing;
  bool get isCompleted => this == SyncStatus.completed;
  bool get isFailed => this == SyncStatus.failed;
  bool get isConflicted => this == SyncStatus.conflicted;
}
