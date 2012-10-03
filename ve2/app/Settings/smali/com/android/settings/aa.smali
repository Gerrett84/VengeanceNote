.class Lcom/android/settings/aa;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# instance fields
.field private fu:I

.field final synthetic fv:Lcom/android/settings/aP;


# direct methods
.method constructor <init>(Lcom/android/settings/aP;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/settings/aa;->fv:Lcom/android/settings/aP;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p2, p0, Lcom/android/settings/aa;->fu:I

    .line 305
    return-void
.end method


# virtual methods
.method public declared-synchronized ap()V
    .locals 2

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/aa;->fu:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
