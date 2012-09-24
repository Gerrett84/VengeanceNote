.class Lcom/android/settings/cL;
.super Landroid/os/Handler;
.source "MiuiAirplaneModeEnabler.java"


# instance fields
.field final synthetic GE:Lcom/android/settings/bl;


# direct methods
.method constructor <init>(Lcom/android/settings/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/cL;->GE:Lcom/android/settings/bl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/cL;->GE:Lcom/android/settings/bl;

    invoke-virtual {v0}, Lcom/android/settings/bl;->update()V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
