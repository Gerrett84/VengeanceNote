.class Lcom/android/settings/dX;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# instance fields
.field final synthetic Fx:Lcom/android/settings/ApnSettings;

.field private OO:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings/dX;->Fx:Lcom/android/settings/ApnSettings;

    .line 332
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 333
    iput-object p3, p0, Lcom/android/settings/dX;->OO:Landroid/os/Handler;

    .line 334
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dX;->Fx:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    invoke-static {}, Lcom/android/settings/ApnSettings;->hR()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/settings/dX;->OO:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
