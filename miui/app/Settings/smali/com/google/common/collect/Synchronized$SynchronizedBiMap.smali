.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/q;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient DZ:Ljava/util/Set;


# virtual methods
.method bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->iT()Lcom/google/common/collect/q;

    move-result-object v0

    return-object v0
.end method

.method public dl()Ljava/util/Set;
    .locals 3

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->DZ:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->iT()Lcom/google/common/collect/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/q;->dl()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->DZ:Ljava/util/Set;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->DZ:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method iT()Lcom/google/common/collect/q;
    .locals 1

    .prologue
    .line 1118
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->w()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->dl()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic w()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->iT()Lcom/google/common/collect/q;

    move-result-object v0

    return-object v0
.end method
