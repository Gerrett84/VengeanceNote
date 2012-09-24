.class Lcom/android/settings/wifi/H;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# instance fields
.field final synthetic zL:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gn:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    sget-object v2, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gp:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 118
    return-void

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gm:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->Gm:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settings/wifi/H;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;->a(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method
