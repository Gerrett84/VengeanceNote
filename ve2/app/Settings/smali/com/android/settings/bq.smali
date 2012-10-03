.class Lcom/android/settings/bq;
.super Landroid/os/Handler;
.source "BandMode.java"


# instance fields
.field final synthetic tG:Lcom/android/settings/BandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/BandMode;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/bq;->tG:Lcom/android/settings/BandMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 198
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 200
    iget-object v1, p0, Lcom/android/settings/bq;->tG:Lcom/android/settings/BandMode;

    invoke-static {v1, v0}, Lcom/android/settings/BandMode;->a(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 204
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 206
    iget-object v1, p0, Lcom/android/settings/bq;->tG:Lcom/android/settings/BandMode;

    invoke-virtual {v1}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/bq;->tG:Lcom/android/settings/BandMode;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/android/settings/BandMode;->a(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
