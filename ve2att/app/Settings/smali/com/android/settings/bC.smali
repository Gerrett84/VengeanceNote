.class Lcom/android/settings/bC;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# instance fields
.field final synthetic vJ:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/bC;->vJ:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/bC;->vJ:Lcom/android/settings/SoundSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/SoundSettings;->a(Landroid/os/Message;)V

    .line 110
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bC;->vJ:Lcom/android/settings/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/SoundSettings;->a(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bC;->vJ:Lcom/android/settings/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/SoundSettings;->b(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
