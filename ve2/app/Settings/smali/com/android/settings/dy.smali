.class Lcom/android/settings/dy;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic Jg:Lcom/android/settings/bQ;


# direct methods
.method constructor <init>(Lcom/android/settings/bQ;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/dy;->Jg:Lcom/android/settings/bQ;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dy;->Jg:Lcom/android/settings/bQ;

    invoke-static {v0}, Lcom/android/settings/bQ;->a(Lcom/android/settings/bQ;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
