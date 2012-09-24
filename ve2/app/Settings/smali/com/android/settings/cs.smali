.class Lcom/android/settings/cs;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# instance fields
.field final synthetic Cr:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/cs;->Cr:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "level"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 69
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 70
    const-string v4, "invalid_charger"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 72
    const/16 v4, 0x50

    if-lt v0, v4, :cond_2

    move v4, v2

    .line 73
    :goto_0
    if-eq v5, v2, :cond_0

    const/4 v0, 0x2

    if-ne v5, v0, :cond_3

    :cond_0
    if-nez v6, :cond_3

    move v0, v2

    .line 79
    :goto_1
    iget-object v5, p0, Lcom/android/settings/cs;->Cr:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v5}, Lcom/android/settings/CryptKeeperSettings;->a(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/cs;->Cr:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v2}, Lcom/android/settings/CryptKeeperSettings;->b(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/cs;->Cr:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v0}, Lcom/android/settings/CryptKeeperSettings;->c(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v0

    if-eqz v4, :cond_6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_1
    return-void

    :cond_2
    move v4, v1

    .line 72
    goto :goto_0

    :cond_3
    move v0, v1

    .line 73
    goto :goto_1

    :cond_4
    move v2, v1

    .line 79
    goto :goto_2

    :cond_5
    move v0, v1

    .line 80
    goto :goto_3

    :cond_6
    move v3, v1

    .line 81
    goto :goto_4
.end method
