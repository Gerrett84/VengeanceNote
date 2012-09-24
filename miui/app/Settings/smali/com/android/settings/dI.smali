.class Lcom/android/settings/dI;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# instance fields
.field final synthetic FG:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/dI;->FG:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dI;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->e(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dI;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/dI;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->f(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
