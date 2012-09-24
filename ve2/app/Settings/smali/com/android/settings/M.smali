.class Lcom/android/settings/M;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# instance fields
.field private ey:I

.field final synthetic ez:Lcom/android/settings/ay;


# direct methods
.method constructor <init>(Lcom/android/settings/ay;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/M;->ez:Lcom/android/settings/ay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p2, p0, Lcom/android/settings/M;->ey:I

    .line 300
    return-void
.end method


# virtual methods
.method public declared-synchronized ak()V
    .locals 2

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/M;->ey:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
