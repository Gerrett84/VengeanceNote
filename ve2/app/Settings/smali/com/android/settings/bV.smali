.class Lcom/android/settings/bV;
.super Landroid/os/Handler;
.source "MiuiWirelessSettings.java"


# instance fields
.field final synthetic yx:Lcom/android/settings/MiuiWirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiWirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/bV;->yx:Lcom/android/settings/MiuiWirelessSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bV;->yx:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->a(Lcom/android/settings/MiuiWirelessSettings;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
